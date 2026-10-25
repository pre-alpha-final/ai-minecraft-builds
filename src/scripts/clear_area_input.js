// Sign parsing and player-context handling, shared with the offline tests.
export const EVENT_ID = "ai_minecraft_builds:clear";
export const INTERNAL_FUNCTION = "_clear_area/_validate";

export function parseParameters(text) {
    if (!/^\s*[+-]?\d+\s+[+-]?\d+\s+[+-]?\d+\s*$/.test(text)) {
        throw new Error("Write exactly three integers on the sign, for example: 10 50 30 (sides forward up).");
    }
    const values = text.trim().split(/\s+/).map(Number);
    if (!values.every(Number.isSafeInteger)) {
        throw new Error("Sign values must be whole numbers within the supported ranges.");
    }
    const [sides, forward, up] = values;
    if (sides < 0 || sides > 128 || forward < 1 || forward > 512 || up < 1 || up > 384) {
        throw new Error("Supported sizes: sides 0..128, forward 1..512, up 1..384.");
    }
    return values;
}

function literalText(raw) {
    if (raw === undefined) return "";
    if (typeof raw.text === "string") return raw.text;
    if (Array.isArray(raw.rawtext)) return raw.rawtext.map(literalText).join("");
    throw new Error("The sign must contain literal numbers, for example: 10 50 30.");
}

export function readSignParameters(sign) {
    // Stable SignSide enum values are strings. Either face may contain the input.
    const texts = ["Front", "Back"].map(side => (sign.getText(side) ?? literalText(sign.getRawText(side))).trim());
    const entries = texts.filter(text => text.length > 0).map(parseParameters);
    if (entries.length === 0) throw new Error("The sign is blank. Write: 10 50 30 (sides forward up).");
    if (entries.length > 1 && entries[0].some((value, index) => value !== entries[1][index])) {
        throw new Error("The sign's two faces have different sizes. Leave one face blank or use the same numbers.");
    }
    return entries[0];
}

export function cardinalYaw(yaw) {
    // Same ordered boundaries as tools/cardinal_snap.py, including diagonal ties.
    for (const [minimum, maximum, result] of [
        [-45, 45, 0], [45, 135, 90], [135, 180, 180], [-180, -135, 180], [-135, -45, -90],
    ]) {
        if (yaw >= minimum && yaw <= maximum) return result;
    }
    throw new Error("Could not determine the player's facing direction.");
}

export function readClearRequest(player) {
    const location = player.location;
    const position = { x: Math.floor(location.x) + 0.5, y: location.y, z: Math.floor(location.z) + 0.5 };
    const yaw = cardinalYaw(player.getRotation().y);
    // Repeat the public reset in the event handler so deferred script delivery
    // cannot leave a moved/turned player off-center or tilted.
    player.teleport(position, { rotation: { x: 0, y: yaw } });
    let sign;
    for (const y of [Math.floor(position.y), Math.floor(position.y) - 1]) {
        let block;
        try {
            block = player.dimension.getBlock({ x: Math.floor(position.x), y, z: Math.floor(position.z) });
        } catch {
            continue; // The cell below a dimension's minimum Y can be unavailable.
        }
        sign = block?.getComponent("minecraft:sign");
        if (sign) break;
    }
    if (!sign) throw new Error("Stand at a sign, or directly above it, containing: 10 50 30 (sides forward up).");
    const values = readSignParameters(sign);
    return { player, dimension: player.dimension, position, yaw, values };
}
