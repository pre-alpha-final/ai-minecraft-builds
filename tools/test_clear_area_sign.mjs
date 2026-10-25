import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";
import { cardinalYaw, readClearRequest, parseParameters, readSignParameters } from "../src/scripts/clear_area_input.js";

function sign(front = "10 50 30", back = "") {
    return { getText: side => {
        assert.ok(side === "Front" || side === "Back", "Bedrock SignSide values are named strings");
        return { Front: front, Back: back }[side];
    }, getRawText: () => undefined };
}

function fixture(input = sign(), below = false) {
    const scores = new Map([["sides", 1], ["forward", 2], ["up", 3]]);
    const calls = [], teleports = [], messages = [], lookups = [];
    const objective = { setScore: (name, value) => scores.set(name, value) };
    const scoreboard = { getObjective: () => objective, addObjective: () => objective };
    const player = {
        typeId: "minecraft:player", location: { x: -1.2, y: -60, z: 2.9 },
        getRotation: () => ({ x: 31, y: 46 }),
        teleport: (position, options) => teleports.push({ position, options }),
        runCommand: command => calls.push(command), sendMessage: message => messages.push(message),
        dimension: { getBlock: position => {
            lookups.push(position);
            return { getComponent: id => id === "minecraft:sign" && position.y === (below ? -61 : -60) ? input : undefined };
        } },
    };
    return { player, scoreboard, scores, calls, teleports, messages, lookups };
}

test("exactly three integers, supported ranges and whitespace", () => {
    assert.deepEqual(parseParameters("  10 50 30\n"), [10, 50, 30]);
    assert.deepEqual(parseParameters("0\n1\n384"), [0, 1, 384]);
    assert.deepEqual(parseParameters("128 512 384"), [128, 512, 384]);
    for (const text of ["", "10 50", "10 50 30 40", "10.0 50 30", "1e1 50 30", "10 50 30; say hi", "-1 50 30", "129 50 30", "10 0 30", "10 513 30", "10 50 0", "10 50 385", "999999999999999999999999 1 1"]) {
        assert.throws(() => parseParameters(text), undefined, text);
    }
});

test("front, back and literal raw text; conflicting faces are rejected", () => {
    assert.deepEqual(readSignParameters(sign()), [10, 50, 30]);
    assert.deepEqual(readSignParameters(sign("", "10 50 30")), [10, 50, 30]);
    assert.deepEqual(readSignParameters(sign("10 50 30", "10\n50 30")), [10, 50, 30]);
    assert.deepEqual(readSignParameters({ getText: () => undefined, getRawText: side => side === "Front" ? { rawtext: [{ text: "10 " }, { text: "50 30" }] } : undefined }), [10, 50, 30]);
    assert.throws(() => readSignParameters(sign("10 50 30", "10 51 30")), /different sizes/);
    assert.throws(() => readSignParameters(sign("", "")), /blank/);
    assert.throws(() => readSignParameters({ getText: () => undefined, getRawText: () => ({ rawtext: [{ translate: "some.key" }] }) }), /literal numbers/);
});

test("cardinal tie handling matches the roller coaster sequence", () => {
    for (const [yaw, expected] of [[-180, 180], [-135, 180], [-134, -90], [-45, 0], [0, 0], [45, 0], [46, 90], [135, 90], [136, 180], [180, 180]]) {
        assert.equal(cardinalYaw(yaw), expected);
    }
});

test("read sign at feet or below, center/level player, preserve explicit context", () => {
    for (const below of [false, true]) {
        const f = fixture(sign(), below);
        const request = readClearRequest(f.player);
        assert.deepEqual(request.values, [10, 50, 30]);
        assert.deepEqual(request.position, { x: -1.5, y: -60, z: 2.5 });
        assert.equal(request.yaw, 90);
        assert.deepEqual(f.teleports, [{ position: { x: -1.5, y: -60, z: 2.5 }, options: { rotation: { x: 0, y: 90 } } }]);
        assert.deepEqual(f.calls, []);
        assert.deepEqual(f.lookups[0], { x: -2, y: -60, z: 2 });
        assert.equal(f.lookups.length, below ? 2 : 1);
    }
});

test("bad or absent sign never runs with stale scoreboard values", () => {
    for (const input of [null, sign("10 50"), sign("10 50 30", "20 50 30")]) {
        const f = fixture(input);
        assert.throws(() => readClearRequest(f.player, f.scoreboard));
        assert.deepEqual(Object.fromEntries(f.scores), { sides: 1, forward: 2, up: 3 });
        assert.deepEqual(f.calls, []);
    }
});

test("production event handler filters nonplayers and reports sign errors", async () => {
    const f = fixture();
    let handler;
    const starts = [];
    globalThis.__clearAreaTestApi = {
        system: { afterEvents: { scriptEventReceive: { subscribe: callback => { handler = callback; } } } },
        world: { scoreboard: f.scoreboard },
        createClearController: () => ({ start: player => { readClearRequest(player); starts.push(player); } }),
    };
    const url = new URL("../src/scripts/clear_area.js", import.meta.url);
    const source = (await readFile(url, "utf8"))
        .replace('import { system, world } from "@minecraft/server";', 'const { system, world } = globalThis.__clearAreaTestApi;')
        .replace('import { createClearController } from "./clear_area_loader.js";', 'const createClearController = globalThis.__clearAreaTestApi.createClearController;')
        .replace('"./clear_area_input.js"', JSON.stringify(new URL("../src/scripts/clear_area_input.js", import.meta.url).href));
    await import(`data:text/javascript,${encodeURIComponent(source)}`);
    for (const event of [
        { id: "other:clear", message: "read_sign", sourceEntity: f.player },
        { id: "ai_minecraft_builds:clear", message: "10 50 30", sourceEntity: f.player },
        { id: "ai_minecraft_builds:clear", message: "read_sign" },
        { id: "ai_minecraft_builds:clear", message: "read_sign", sourceEntity: { typeId: "minecraft:armor_stand" } },
    ]) handler(event);
    assert.deepEqual(f.calls, []);
    handler({ id: "ai_minecraft_builds:clear", message: "read_sign", sourceEntity: f.player });
    assert.equal(starts.length, 1);
    const invalid = fixture(sign("bad input"));
    handler({ id: "ai_minecraft_builds:clear", message: "read_sign", sourceEntity: invalid.player });
    assert.match(invalid.messages[0], /^Clear aborted: Write exactly three integers/);
    assert.deepEqual(invalid.calls, []);
    delete globalThis.__clearAreaTestApi;
});
