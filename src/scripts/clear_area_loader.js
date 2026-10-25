import { INTERNAL_FUNCTION, readClearRequest } from "./clear_area_input.js";

export const AREA_NAMES = Array.from({ length: 6 }, (_, index) => `ai_clear_area_${index}`);
export const WORK_BUDGET = 9000;

function pieces(value) {
    let remainder = value % 32, count = Math.floor(value / 32);
    while (remainder) { count += remainder & 1; remainder >>>= 1; }
    return count;
}

export function workCost(sides, forward, up) {
    const [pw, pf, ph] = [2 * sides + 1, forward, up].map(pieces);
    return 2 * (2 + 11 * Math.max(pw, pf) * (1 + ph) + 26 * pw * pf * ph
        + 10 * pieces(sides) + 9 * pieces(forward - 1) + 14 + 30);
}

export function clearBounds({ position, yaw, values: [sides, forward, up] }) {
    const corners = [];
    for (const left of [-sides, sides]) for (const ahead of [1, forward]) {
        const [x, z] = yaw === 0 ? [left, ahead] : yaw === 90 ? [-ahead, left]
            : yaw === -90 ? [ahead, -left] : [-left, -ahead];
        corners.push([Math.floor(position.x + x), Math.floor(position.z + z)]);
    }
    return {
        minX: Math.min(...corners.map(point => point[0])), maxX: Math.max(...corners.map(point => point[0])),
        minZ: Math.min(...corners.map(point => point[1])), maxZ: Math.max(...corners.map(point => point[1])),
        minY: Math.floor(position.y), maxY: Math.floor(position.y) + up - 1,
    };
}

export function preloadRectangles(bounds) {
    const x0 = Math.floor(bounds.minX / 16), z0 = Math.floor(bounds.minZ / 16);
    const width = Math.floor(bounds.maxX / 16) - x0 + 1;
    const depth = Math.floor(bounds.maxZ / 16) - z0 + 1;
    // Minimum number of rectangles under recursive axis cuts. Rectangles are
    // chunk-aligned, nonoverlapping, and each contains at most 100 chunks.
    const costs = Array.from({ length: width + 1 }, () => Array(depth + 1).fill(0));
    const cuts = Array.from({ length: width + 1 }, () => Array(depth + 1));
    for (let w = 1; w <= width; w++) for (let d = 1; d <= depth; d++) {
        if (w * d <= 100) { costs[w][d] = 1; continue; }
        let best = Infinity;
        for (let x = 1; x < w; x++) if (costs[x][d] + costs[w - x][d] < best) {
            best = costs[x][d] + costs[w - x][d]; cuts[w][d] = ["x", x];
        }
        for (let z = 1; z < d; z++) if (costs[w][z] + costs[w][d - z] < best) {
            best = costs[w][z] + costs[w][d - z]; cuts[w][d] = ["z", z];
        }
        costs[w][d] = best;
    }
    const rectangles = [];
    function emit(x, z, w, d) {
        const cut = cuts[w][d];
        if (!cut) { rectangles.push({ x0: x, z0: z, x1: x + w - 1, z1: z + d - 1 }); return; }
        const [axis, size] = cut;
        if (axis === "x") { emit(x, z, size, d); emit(x + size, z, w - size, d); }
        else { emit(x, z, w, size); emit(x, z + size, w, d - size); }
    }
    emit(x0, z0, width, depth);
    if (rectangles.length > AREA_NAMES.length) throw new Error("The selected footprint needs too many ticking areas.");
    return rectangles;
}

export function createClearController({ world, system, timeoutTicks = 1200, pollTicks = 5 }) {
    let active;

    function notify(player, text) {
        try { player.sendMessage(text); } catch { /* A disconnected player must not prevent cleanup. */ }
    }

    function removeOwnedAreas(dimension) {
        for (const name of AREA_NAMES) {
            try { dimension.runCommand(`tickingarea remove ${name}`); } catch { /* Absent names are normal. */ }
        }
    }

    function recoverStaleAreas() {
        for (const id of ["overworld", "nether", "the_end"]) {
            try { removeOwnedAreas(world.getDimension(id)); } catch { /* Dimension unavailable. */ }
        }
    }

    function later(job, ticks, action) {
        job.timer = system.runTimeout(() => {
            if (active !== job) return;
            job.timer = undefined;
            try { action(); } catch (error) { finish(job, `Clear aborted: ${error.message ?? String(error)}`); }
        }, ticks);
    }

    function finish(job, text) {
        if (active !== job || job.phase === "releasing") return;
        if (job.timer !== undefined) system.clearRun(job.timer);
        job.phase = "releasing";
        removeOwnedAreas(job.dimension);
        // Area removal completes after the command returns. Keep the busy guard
        // until that release has finished, including when startup partially fails.
        later(job, 2, () => { active = undefined; notify(job.player, text); });
    }

    function allChunksLoaded(job) {
        for (const rectangle of job.rectangles) {
            for (let x = rectangle.x0; x <= rectangle.x1; x++) for (let z = rectangle.z0; z <= rectangle.z1; z++) {
                try {
                    const block = job.dimension.getBlock({ x: x * 16, y: job.bounds.minY, z: z * 16 });
                    if (!block || !block.typeId) return false;
                } catch { return false; }
            }
        }
        return true;
    }

    function poll(job) {
        if (allChunksLoaded(job)) {
            job.phase = "clearing";
            const objective = world.scoreboard.getObjective("clear_area") ?? world.scoreboard.addObjective("clear_area", "Clear area");
            ["sides", "forward", "up"].forEach((name, index) => objective.setScore(name, job.values[index]));
            objective.setScore("ca_yaw", job.yaw);
            objective.setScore("ca_status", 0);
            const { x, y, z } = job.position;
            const result = job.dimension.runCommand(`execute positioned ${x} ${y} ${z} rotated ${job.yaw} 0 run function ${INTERNAL_FUNCTION}`);
            if (!result.successCount) throw new Error("The clearing helper did not execute.");
            const status = objective.getScore("ca_status");
            if (status === 1) {
                const [sides, forward, up] = job.values;
                finish(job, `Clear complete: ${2 * sides + 1} wide x ${forward} forward x ${up} high. Temporary ticking areas removed.`);
                return;
            }
            if (status === 2) throw new Error("These sizes exceed the 10,000-command budget. Reduce a size.");
            if (status !== 3) throw new Error("The clearing helper did not report a valid result.");
            // A readable chunk is not sufficient proof of a complete volume.
            // The helper's read-only preflight must also pass before it deletes anything.
            job.phase = "loading";
        }
        if (system.currentTick >= job.deadline) {
            finish(job, "Clear aborted: timed out loading the selected area. Temporary ticking areas removed; no blocks were cleared.");
        } else later(job, pollTicks, () => poll(job));
    }

    function begin(job) {
        job.phase = "loading";
        job.deadline = system.currentTick + timeoutTicks;
        for (const [index, rectangle] of job.rectangles.entries()) {
            const { x0, z0, x1, z1 } = rectangle;
            let result;
            try {
                result = job.dimension.runCommand(`tickingarea add ${x0 * 16} ${job.bounds.minY} ${z0 * 16} ${x1 * 16 + 15} ${job.bounds.minY} ${z1 * 16 + 15} ${AREA_NAMES[index]} true`);
            } catch {
                throw new Error(`Need ${job.rectangles.length} free ticking-area slots. Wait for other loaders to finish and retry.`);
            }
            if (!result.successCount) throw new Error(`Need ${job.rectangles.length} free ticking-area slots. Wait for other loaders to finish and retry.`);
        }
        later(job, pollTicks, () => poll(job));
    }

    system.run(() => { if (!active) recoverStaleAreas(); });
    return {
        get phase() { return active?.phase ?? "idle"; },
        start(player) {
            if (active) { notify(player, "A clear is already running. Wait for completion before starting another."); return false; }
            const request = readClearRequest(player);
            if (workCost(...request.values) > WORK_BUDGET) throw new Error("These sizes exceed the 10,000-command budget. Reduce a size; multiples of 32 for forward/up are more efficient.");
            const bounds = clearBounds(request);
            const height = request.dimension.heightRange;
            if (bounds.minY < height.min || bounds.maxY >= height.max) {
                throw new Error(`Selected height is outside this dimension's build limits (${height.min} through ${height.max - 1}).`);
            }
            const job = { ...request, bounds, rectangles: preloadRectangles(bounds), phase: "preparing" };
            active = job;
            recoverStaleAreas();
            notify(player, `Loading ${job.rectangles.length} temporary ticking area(s). You may move; clearing uses the saved sign position and facing.`);
            later(job, 2, () => begin(job));
            return true;
        },
    };
}
