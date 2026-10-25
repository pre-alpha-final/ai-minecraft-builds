import assert from "node:assert/strict";
import test from "node:test";
import { AREA_NAMES, clearBounds, createClearController, preloadRectangles, workCost } from "../src/scripts/clear_area_loader.js";

function fixture(text = "10 50 30", options = {}) {
    const tasks = new Map(), areas = new Map(), pending = new Set(), scores = new Map();
    const commands = [], invocations = [], clears = [], messages = [];
    let nextId = 0;
    const system = {
        currentTick: 0,
        runTimeout(fn, ticks) { const id = ++nextId; tasks.set(id, { tick: this.currentTick + Math.max(1, ticks), fn }); return id; },
        clearRun(id) { tasks.delete(id); },
        run(fn) { return this.runTimeout(fn, 1); },
    };
    const f = { loaded: false, text, system, areas, scores, commands, invocations, clears, messages, status: 1, helperSuccess: 1 };
    const objective = { setScore: (key, value) => scores.set(key, value), getScore: key => scores.get(key) };
    const dimensions = new Map();
    for (const id of ["overworld", "nether", "the_end"]) {
        const dimension = {
            id: `minecraft:${id}`, heightRange: { min: -64, max: 320 },
            getBlock(point) {
                const atSign = id === "overworld" && point.x === 0 && point.z === 0;
                if (!atSign && !f.loaded) return undefined;
                return { typeId: atSign ? "minecraft:standing_sign" : "minecraft:air", getComponent: name => atSign && name === "minecraft:sign" ? {
                    getText: side => side === "Front" ? f.text : "", getRawText: () => undefined,
                } : undefined };
            },
            runCommand(command) {
                commands.push({ command, tick: system.currentTick, dimension: id });
                const remove = /^tickingarea remove (\S+)$/.exec(command);
                if (remove) { if (areas.has(`${id}:${remove[1]}`)) pending.add(`${id}:${remove[1]}`); return { successCount: 1 }; }
                const add = /^tickingarea add (-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+) (\S+) true$/.exec(command);
                if (add) {
                    const key = `${id}:${add[7]}`;
                    assert.ok(!areas.has(key), "removed names must not be recreated in the same call");
                    assert.ok((Math.floor(+add[4] / 16) - Math.floor(+add[1] / 16) + 1) * (Math.floor(+add[6] / 16) - Math.floor(+add[3] / 16) + 1) <= 100);
                    if (areas.size >= 10) return { successCount: 0 };
                    areas.set(key, command); return { successCount: 1 };
                }
                assert.match(command, /^execute positioned .* rotated .* run function _clear_area\/_validate$/);
                invocations.push({ command, dimension: id, values: ["sides", "forward", "up"].map(key => scores.get(key)), yaw: scores.get("ca_yaw") });
                if (f.helperSuccess) {
                    scores.set("ca_status", f.status);
                    if (f.status === 1) clears.push(invocations.at(-1));
                }
                return { successCount: f.helperSuccess };
            },
        };
        dimensions.set(id, dimension);
    }
    f.player = {
        typeId: "minecraft:player", location: { x: .3, y: -60, z: .8 }, dimension: dimensions.get("overworld"),
        getRotation: () => ({ x: 20, y: 7 }), teleport: (position, { rotation }) => { f.reset = { position, rotation }; },
        sendMessage: text => { if (f.disconnected) throw new Error("player left"); messages.push(text); },
    };
    f.world = { getDimension: id => dimensions.get(id), scoreboard: { getObjective: () => objective, addObjective: () => objective } };
    f.controller = createClearController({ world: f.world, system, ...options });
    f.advance = ticks => {
        for (let count = 0; count < ticks; count++) {
            for (const key of pending) areas.delete(key);
            pending.clear(); system.currentTick++;
            for (const [id, task] of [...tasks]) if (task.tick <= system.currentTick && tasks.delete(id)) task.fn();
        }
    };
    return f;
}

test("all cardinal footprints are partitioned exactly, with <=100 chunks per area", () => {
    for (const yaw of [0, 90, 180, -90]) for (const values of [[0, 1, 1], [10, 160, 30], [128, 512, 1]]) {
        const bounds = clearBounds({ position: { x: -15.5, y: -60, z: 16.5 }, yaw, values });
        const rectangles = preloadRectangles(bounds), chunks = new Set();
        assert.ok(rectangles.length <= 6);
        for (const { x0, x1, z0, z1 } of rectangles) {
            assert.ok((x1 - x0 + 1) * (z1 - z0 + 1) <= 100);
            for (let x = x0; x <= x1; x++) for (let z = z0; z <= z1; z++) {
                const key = `${x},${z}`; assert.ok(!chunks.has(key)); chunks.add(key);
            }
        }
        const expected = new Set();
        for (let x = Math.floor(bounds.minX / 16); x <= Math.floor(bounds.maxX / 16); x++) {
            for (let z = Math.floor(bounds.minZ / 16); z <= Math.floor(bounds.maxZ / 16); z++) expected.add(`${x},${z}`);
        }
        assert.deepEqual(chunks, expected);
    }
    assert.ok(workCost(128, 512, 1) <= 9000);
    assert.ok(workCost(128, 511, 383) > 9000);
});

test("wait for all chunks, then use captured position/dimension/sign values after player moves", () => {
    const f = fixture();
    assert.equal(f.controller.start(f.player), true);
    assert.deepEqual(f.reset, { position: { x: .5, y: -60, z: .5 }, rotation: { x: 0, y: 0 } });
    f.player.location = { x: 800, y: 100, z: 800 }; f.player.dimension = f.world.getDimension("nether"); f.text = "20 100 50";
    f.advance(20); assert.equal(f.invocations.length, 0); assert.equal(f.controller.phase, "loading");
    assert.equal(f.controller.start(f.player), false);
    f.loaded = true; f.advance(2); assert.equal(f.controller.phase, "releasing");
    assert.deepEqual(f.clears, [{ command: "execute positioned 0.5 -60 0.5 rotated 0 0 run function _clear_area/_validate", dimension: "overworld", values: [10, 50, 30], yaw: 0 }]);
    f.advance(2); assert.equal(f.controller.phase, "idle"); assert.equal(f.areas.size, 0);
    assert.match(f.messages.at(-1), /^Clear complete/);
    assert.ok(!f.commands.some(({ command }) => command.includes("remove_all")));
});

test("partial capacity failure cleans only owned areas and preserves unrelated ones", () => {
    const f = fixture("128 512 1");
    for (let index = 0; index < 8; index++) f.areas.set(`overworld:other_${index}`, "keep");
    f.controller.start(f.player); f.advance(4);
    assert.equal(f.controller.phase, "idle"); assert.equal(f.areas.size, 8);
    assert.ok([...f.areas.keys()].every(key => key.includes("other_")));
    assert.equal(f.invocations.length, 0); assert.match(f.messages.at(-1), /Need 6 free ticking-area slots/);
});

test("watchdog aborts without clearing; disconnect cannot prevent cleanup", () => {
    const f = fixture("10 160 30", { timeoutTicks: 20 });
    f.controller.start(f.player); f.disconnected = true; f.advance(24);
    assert.equal(f.controller.phase, "idle"); assert.equal(f.areas.size, 0); assert.equal(f.invocations.length, 0);
});

test("volume preflight is authoritative; retry unreadiness and reject missing helper results", () => {
    const f = fixture(); f.loaded = true; f.status = 3; f.controller.start(f.player); f.advance(7);
    assert.equal(f.invocations.length, 1); assert.equal(f.clears.length, 0); assert.equal(f.controller.phase, "loading");
    f.status = 1; f.advance(7); assert.equal(f.clears.length, 1); assert.equal(f.controller.phase, "idle");
    const bad = fixture(); bad.loaded = true; bad.helperSuccess = 0; bad.scores.set("ca_status", 1);
    bad.controller.start(bad.player); bad.advance(9);
    assert.equal(bad.controller.phase, "idle"); assert.equal(bad.scores.get("ca_status"), 0);
    assert.equal(bad.areas.size, 0); assert.match(bad.messages.at(-1), /helper did not execute/);
});

test("stale recovery releases names before reuse in any dimension", () => {
    const f = fixture();
    f.areas.set(`overworld:${AREA_NAMES[0]}`, "stale"); f.areas.set(`nether:${AREA_NAMES[1]}`, "stale");
    f.areas.set("overworld:unrelated", "keep");
    f.controller.start(f.player); assert.equal(f.areas.size, 3);
    f.advance(2); assert.ok([...f.areas.keys()].every(key => !key.startsWith("nether:")));
    assert.ok(f.commands.filter(({ command }) => command.startsWith("tickingarea add")).every(({ tick }) => tick >= 2));
    f.loaded = true; f.advance(7); assert.deepEqual([...f.areas.keys()], ["overworld:unrelated"]);
});

test("invalid height, sign and command budget are rejected before preloading", () => {
    for (const text of ["129 1 1", "10 50", "128 511 383"]) {
        const f = fixture(text); assert.throws(() => f.controller.start(f.player));
        assert.equal(f.controller.phase, "idle"); assert.equal(f.commands.length, 0);
    }
    const f = fixture(); f.player.location.y = 300;
    assert.throws(() => f.controller.start(f.player), /build limits/);
    assert.equal(f.commands.length, 0);
});
