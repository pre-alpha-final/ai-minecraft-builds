#!/usr/bin/env python3
"""Generate and validate the Jungle Leviathan Bedrock structure-backed coaster."""

from __future__ import annotations

import itertools
import json
import math
import re
from collections import Counter
from pathlib import Path

import generate_skyline_cyclone as structure_tools


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "src" / "structures" / "ai_minecraft_builds"
FUNCTIONS = ROOT / "src" / "functions"
BASE_NAME = "theme_park_jungle_leviathan_roller_coaster"
NAMESPACE = "ai_minecraft_builds"
X_MIN, X_MAX = -229, 230
Z_MIN, Z_MAX = 48, 360
MAX_Y = 239

Block = structure_tools.Block


def state_block(name: str, **states: object) -> Block:
    return Block(name, tuple(sorted(states.items())))


MOSS = Block("minecraft:moss_block")
MUD = Block("minecraft:mud")
PACKED_MUD = Block("minecraft:packed_mud")
MUD_BRICKS = Block("minecraft:mud_bricks")
MOSSY_COBBLE = Block("minecraft:mossy_cobblestone")
MOSSY_BRICKS = Block("minecraft:mossy_stone_bricks")
STONE_BRICKS = Block("minecraft:stone_bricks")
CHISELED_BRICKS = Block("minecraft:chiseled_stone_bricks")
JUNGLE_PLANKS = Block("minecraft:jungle_planks")
JUNGLE_LOG = state_block("minecraft:jungle_log", pillar_axis="y")
JUNGLE_LEAVES = state_block("minecraft:jungle_leaves", persistent_bit=True, update_bit=False)
GREEN = Block("minecraft:green_concrete")
LIME = Block("minecraft:lime_concrete")
YELLOW = Block("minecraft:yellow_concrete")
BROWN = Block("minecraft:brown_concrete")
BLACK = Block("minecraft:black_concrete")
GOLD = Block("minecraft:gold_block")
REDSTONE = Block("minecraft:redstone_block")
SEA_LANTERN = Block("minecraft:sea_lantern")
SHROOMLIGHT = Block("minecraft:shroomlight")
WATER = state_block("minecraft:water", liquid_depth=0)

voxels: dict[tuple[int, int, int], Block] = {}


def put(x: int, y: int, z: int, block: Block) -> None:
    if not (X_MIN <= x <= X_MAX and Z_MIN <= z <= Z_MAX and 0 <= y <= MAX_Y):
        raise ValueError(f"voxel outside declared bounds: {(x, y, z)}")
    voxels[(x, y, z)] = block


def box(x0: int, y0: int, z0: int, x1: int, y1: int, z1: int, block: Block) -> None:
    for x in range(min(x0, x1), max(x0, x1) + 1):
        for y in range(min(y0, y1), max(y0, y1) + 1):
            for z in range(min(z0, z1), max(z0, z1) + 1):
                put(x, y, z, block)


def line3d(a: tuple[int, int, int], b: tuple[int, int, int], block: Block) -> None:
    steps = max(abs(b[axis] - a[axis]) for axis in range(3))
    if steps == 0:
        put(*a, block)
        return
    for index in range(steps + 1):
        point = tuple(round(a[axis] + (b[axis] - a[axis]) * index / steps) for axis in range(3))
        put(*point, block)


def profile(length: int, start: int, end: int) -> list[int]:
    delta = end - start
    if abs(delta) > length - 6:
        raise ValueError(f"height change {delta} is too steep for {length}-block segment")
    transition_start = max(2, (length - abs(delta)) // 2)
    if transition_start + abs(delta) > length - 2:
        transition_start = length - 2 - abs(delta)
    sign = 1 if delta >= 0 else -1
    values = []
    for index in range(length):
        progress = min(max(index - transition_start + 1, 0), abs(delta))
        values.append(start + sign * progress)
    if values[:2] != [start, start] or values[-2:] != [end, end]:
        raise ValueError("height profile did not leave flat approaches at both corners")
    return values


def add_segment(
    path: list[tuple[int, int, int]],
    end: tuple[int, int, int],
    include_final: bool = True,
) -> None:
    x0, z0, y0 = path[-1]
    x1, z1, y1 = end
    distance = abs(x1 - x0) + abs(z1 - z0)
    if x0 != x1 and z0 != z1:
        raise ValueError("track segments must be axis aligned")
    heights = profile(distance, y0, y1)
    dx = 0 if x0 == x1 else (1 if x1 > x0 else -1)
    dz = 0 if z0 == z1 else (1 if z1 > z0 else -1)
    stop = distance if include_final else distance - 1
    for index in range(1, stop + 1):
        path.append((x0 + dx * index, z0 + dz * index, heights[index - 1]))


def build_track_path() -> list[tuple[int, int, int]]:
    path = [(-190, 70, 12)]
    waypoints = (
        (190, 70, 230),
        (190, 125, 181),
        (80, 125, 80),
        (80, 185, 134),
        (195, 185, 70),
        (195, 245, 25),
        (-195, 245, 165),
        (-195, 345, 72),
        (-30, 345, 105),
        (-30, 285, 155),
        (120, 285, 65),
        (120, 220, 120),
        (-115, 220, 40),
        (-115, 155, 95),
        (-40, 155, 65),
        (-40, 105, 109),
        (-190, 105, 30),
    )
    for waypoint in waypoints:
        add_segment(path, waypoint)
    add_segment(path, (-190, 70, 12), include_final=False)
    return path


def add_ground() -> None:
    for x in range(X_MIN, X_MAX + 1):
        for z in range(Z_MIN, Z_MAX + 1):
            river_center = round(42 * math.sin((z - 40) / 38) + 18 * math.sin((z - 20) / 15))
            distance = abs(x - river_center)
            if distance <= 9:
                put(x, 0, z, PACKED_MUD)
                put(x, 1, z, WATER)
            elif distance <= 13:
                put(x, 0, z, MUD if (x + z) % 3 else MOSSY_COBBLE)
                if (x * 3 + z) % 7 == 0:
                    put(x, 1, z, MOSSY_COBBLE)
            else:
                ground = MUD if (x * 17 + z * 31) % 23 in (0, 1, 2) else MOSS
                put(x, 0, z, ground)

    for x in range(X_MIN, X_MAX + 1):
        if x % 5:
            put(x, 1, Z_MIN, MOSSY_COBBLE)
            put(x, 2, Z_MIN, MOSSY_BRICKS)
        if x % 7:
            put(x, 1, Z_MAX, MOSSY_COBBLE)
    for z in range(Z_MIN + 1, Z_MAX):
        if z % 5:
            put(X_MIN, 1, z, MOSSY_COBBLE)
            put(X_MAX, 1, z, MOSSY_COBBLE)


def add_entrance() -> None:
    box(-7, 1, 48, 7, 2, 205, JUNGLE_PLANKS)
    for z in range(52, 206, 9):
        put(-6, 3, z, SHROOMLIGHT)
        put(6, 3, z, SHROOMLIGHT)
    for x in (-24, -18, 18, 24):
        box(x, 1, 52, x, 25, 60, MOSSY_BRICKS)
        box(x - 2, 1, 50, x + 2, 4, 62, MOSSY_COBBLE)
    box(-24, 22, 52, 24, 28, 60, MOSSY_BRICKS)
    box(-17, 24, 51, 17, 27, 51, GOLD)
    for x in range(-14, 15, 4):
        put(x, 29 + (7 - abs(x) // 2), 56, JUNGLE_LEAVES)
    for x in range(-12, 13, 6):
        put(x, 21, 51, SHROOMLIGHT)


def add_station() -> None:
    box(-218, 1, 57, -166, 11, 83, MOSSY_BRICKS)
    box(-216, 12, 59, -168, 12, 81, JUNGLE_PLANKS)
    box(-216, 13, 61, -168, 13, 66, MUD_BRICKS)
    box(-216, 13, 74, -168, 13, 79, MUD_BRICKS)
    for x in (-214, -204, -194, -184, -174):
        for z in (59, 81):
            box(x, 13, z, x, 29, z, JUNGLE_LOG)
            put(x, 22, z, SHROOMLIGHT)
    box(-218, 29, 57, -166, 32, 83, JUNGLE_LEAVES)
    box(-214, 33, 61, -170, 35, 79, JUNGLE_PLANKS)
    for step in range(11):
        box(-168 + step, 1 + step, 84, -164 + step, 1 + step, 84, JUNGLE_PLANKS)
    for x in range(-212, -171, 8):
        put(x, 14, 58, SEA_LANTERN)
        put(x, 14, 82, SEA_LANTERN)


def add_temple() -> None:
    terraces = (
        (-48, 1, 194, 48, 7, 246),
        (-40, 8, 199, 40, 14, 241),
        (-32, 15, 204, 32, 21, 236),
        (-24, 22, 209, 24, 28, 231),
    )
    for number, (x0, y0, z0, x1, y1, z1) in enumerate(terraces):
        box(x0, y0, z0, x1, y1, z1, MOSSY_BRICKS if number % 2 == 0 else MOSSY_COBBLE)
        box(x0 + 3, y1, z0 + 3, x1 - 3, y1 + 1, z1 - 3, MOSS)
    box(-15, 29, 213, 15, 56, 227, STONE_BRICKS)
    box(-10, 32, 212, 10, 52, 212, CHISELED_BRICKS)
    for x in (-10, 10):
        box(x, 33, 211, x, 49, 211, GOLD)
    box(-15, 54, 211, 15, 59, 229, MOSSY_BRICKS)
    for x in range(-12, 13, 6):
        put(x, 60, 220, SHROOMLIGHT)
    for y in range(31, 52):
        for x in range(-6, 7):
            voxels.pop((x, y, 212), None)


def add_ruin(x: int, z: int, width: int, height: int) -> None:
    for dx in (-width, width):
        box(x + dx - 1, 1, z - 2, x + dx + 1, height, z + 2, MOSSY_BRICKS)
        box(x + dx - 2, 1, z - 3, x + dx + 2, 3, z + 3, MOSSY_COBBLE)
    box(x - width, height - 3, z - 2, x + width, height, z + 2, STONE_BRICKS)
    for dx in range(-width + 4, width - 3, 7):
        put(x + dx, height + 1, z, JUNGLE_LEAVES)


def add_tree(x: int, z: int, height: int, radius: int = 6) -> None:
    trunk_radius = 2 if height >= 24 else 1
    box(x - trunk_radius, 1, z - trunk_radius, x + trunk_radius, height, z + trunk_radius, JUNGLE_LOG)
    for dx, dz in ((radius, 0), (-radius, 0), (0, radius), (0, -radius)):
        line3d((x, height - 4, z), (x + dx, height + 2, z + dz), JUNGLE_LOG)
    for dx in range(-radius, radius + 1):
        for dy in range(-3, 5):
            for dz in range(-radius, radius + 1):
                scaled = (dx / radius) ** 2 + (dz / radius) ** 2 + (dy / 4) ** 2
                if scaled <= 1.08 and (x + dx * 3 + z + dz * 5 + dy) % 7:
                    put(x + dx, height + 2 + dy, z + dz, JUNGLE_LEAVES)
    for dx, dz in ((-5, -3), (4, -4), (-3, 5), (5, 3)):
        line3d((x, 1, z), (x + dx, 1, z + dz), JUNGLE_LOG)


def add_giant_tree() -> None:
    x, z = 18, 327
    for dx in range(-6, 7):
        for dz in range(-6, 7):
            if dx * dx + dz * dz <= 42:
                box(x + dx, 1, z + dz, x + dx, 204 - (abs(dx) + abs(dz)) // 2, z + dz, JUNGLE_LOG)
    branches = (
        ((0, 190, 0), (30, 218, -16)),
        ((0, 184, 0), (-32, 214, -12)),
        ((0, 176, 0), (25, 210, 24)),
        ((0, 169, 0), (-27, 207, 25)),
    )
    for start, end in branches:
        line3d((x + start[0], start[1], z + start[2]), (x + end[0], end[1], z + end[2]), JUNGLE_LOG)
    for dx in range(-31, 32):
        for dy in range(-13, 23):
            for dz in range(-27, 28):
                shape = (dx / 31) ** 2 + (dz / 27) ** 2 + (dy / 18) ** 2
                if shape <= 1 and (dx * 7 + dy * 3 + dz * 11) % 9 not in (0, 1):
                    put(x + dx, 217 + dy, z + dz, JUNGLE_LEAVES)
    box(x - 2, 235, z - 2, x + 2, 238, z + 2, JUNGLE_LEAVES)
    put(x, 239, z, JUNGLE_LEAVES)
    for dx, dz in ((-8, -2), (9, 3)):
        for y in range(125, 205):
            put(x + dx, y, z + dz, WATER)
    for dx in range(-15, 16):
        for dz in range(-12, 13):
            if 80 <= dx * dx + dz * dz <= 210:
                put(x + dx, 1, z + dz, MOSSY_COBBLE)
            elif dx * dx + dz * dz < 80:
                put(x + dx, 1, z + dz, WATER)


def add_scenery(path: list[tuple[int, int, int]]) -> None:
    track_plan = {(x, z) for x, z, _ in path}
    for row, z in enumerate(range(95, 326, 29)):
        for column, x in enumerate(range(-215, 216, 31)):
            if min(abs(x - tx) + abs(z - tz) for tx, tz in track_plan) < 10:
                continue
            if -55 <= x <= 55 and 185 <= z <= 255:
                continue
            if -225 <= x <= -155 and 48 <= z <= 90:
                continue
            height = 18 + ((row * 11 + column * 7) % 15)
            add_tree(x, z, height, 6 + (row + column) % 3)
    add_ruin(-150, 135, 22, 31)
    add_ruin(150, 155, 18, 27)
    add_ruin(-155, 285, 20, 34)
    add_ruin(155, 315, 24, 38)
    for x, z in ((-90, 92), (55, 105), (-65, 270), (85, 260), (-90, 330)):
        box(x - 3, 1, z - 3, x + 3, 10, z + 3, MOSSY_COBBLE)
        box(x - 5, 11, z - 5, x + 5, 14, z + 5, MOSSY_BRICKS)
        put(x, 15, z, SHROOMLIGHT)
    add_giant_tree()


def add_track_and_supports(path: list[tuple[int, int, int]]) -> None:
    rails: list[tuple[int, int, int, Block]] = []
    support_points: list[tuple[int, int, int, int, int]] = []
    for index, (x, z, bed_y) in enumerate(path):
        px, pz, _ = path[index - 1]
        nx, nz, _ = path[(index + 1) % len(path)]
        incoming = (x - px, z - pz)
        outgoing = (nx - x, nz - z)
        tangent = incoming if incoming != outgoing else (nx - px, nz - pz)
        perpendicular = (0, 1) if abs(tangent[0]) >= abs(tangent[1]) else (1, 0)
        rail, corner = structure_tools.rail_state(path, index)
        bed = (
            ((-2, MOSSY_BRICKS), (-1, LIME), (0, BLACK), (1, LIME), (2, MOSSY_BRICKS))
            if corner
            else (
                (-3, JUNGLE_PLANKS),
                (-2, GREEN),
                (-1, LIME),
                (0, BLACK),
                (1, LIME),
                (2, GREEN),
                (3, JUNGLE_PLANKS),
            )
        )
        for offset, block in bed:
            put(x + perpendicular[0] * offset, bed_y, z + perpendicular[1] * offset, block)
        if not corner:
            put(x + perpendicular[0] * -3, bed_y + 1, z + perpendicular[1] * -3, YELLOW)
            put(x + perpendicular[0] * 3, bed_y + 1, z + perpendicular[1] * 3, YELLOW)
        if not corner and index % 7 == 0:
            put(x, bed_y, z, REDSTONE)
        if not corner and index % 12 == 0 and bed_y >= 18:
            support_points.append((x, z, bed_y, perpendicular[0], perpendicular[1]))
        rails.append((x, bed_y + 1, z, rail))

    for number, (x, z, top, px, pz) in enumerate(support_points):
        for side in (-3, 3):
            sx, sz = x + px * side, z + pz * side
            for y in range(2, top):
                block = JUNGLE_LOG if number % 3 else MOSSY_BRICKS
                put(sx, y, sz, block)
        brace = LIME if number % 2 == 0 else GREEN
        line3d((x - px * 3, 2, z - pz * 3), (x + px * 3, top - 1, z + pz * 3), brace)
        line3d((x + px * 3, 2, z + pz * 3), (x - px * 3, top - 1, z - pz * 3), brace)
        for y in range(10, top, 16):
            line3d((x - px * 3, y, z - pz * 3), (x + px * 3, y, z + pz * 3), GOLD)

    for x, y, z, rail in rails:
        voxels.pop((x, y + 1, z), None)
        voxels.pop((x, y + 2, z), None)
        voxels[(x, y, z)] = rail


def validate_track(path: list[tuple[int, int, int]]) -> None:
    horizontal_levels: dict[tuple[int, int], list[int]] = {}
    for x, z, y in path:
        horizontal_levels.setdefault((x, z), []).append(y)
    for point, levels in horizontal_levels.items():
        for lower, upper in itertools.combinations(sorted(levels), 2):
            if upper - lower < 5:
                raise ValueError(f"track intersects without safe vertical separation at {point}: {levels}")
    for index, point in enumerate(path):
        next_point = path[(index + 1) % len(path)]
        if abs(point[0] - next_point[0]) + abs(point[1] - next_point[1]) != 1:
            raise ValueError(f"disconnected track between {index} and {(index + 1) % len(path)}")
        if abs(point[2] - next_point[2]) > 1:
            raise ValueError(f"track rises too quickly between {index} and {(index + 1) % len(path)}")
        structure_tools.rail_state(path, index)
        for clearance_y in (point[2] + 2, point[2] + 3):
            if (point[0], clearance_y, point[1]) in voxels:
                raise ValueError(f"track clearance is obstructed at {(point[0], clearance_y, point[1])}")


def chunk_specs() -> list[tuple[int, int, int, int, int, int]]:
    x_chunks = [(-229, -166), (-165, -102), (-101, -38), (-37, 26), (27, 90), (91, 154), (155, 218), (219, 230)]
    z_chunks = [(48, 111), (112, 175), (176, 239), (240, 303), (304, 360)]
    return [
        (xi, zi, x0, x1, z0, z1)
        for zi, (z0, z1) in enumerate(z_chunks, 1)
        for xi, (x0, x1) in enumerate(x_chunks, 1)
    ]


TICKING_AREAS = tuple(
    (f"jungle_leviathan_{row}{column}", x0, x1, z0, z1)
    for row, (z0, z1) in enumerate(((48, 204), (205, 360)), 1)
    for column, (x0, x1) in enumerate(((-229, -115), (-114, 0), (1, 115), (116, 230)), 1)
)


def load_lines(specs: list[tuple[int, int, int, int, int, int]]) -> list[str]:
    groups = (
        ("FACING SOUTH (+Z): 0 DEGREES", "@s[rym=-44,ry=44]", "0_degrees", 0),
        ("FACING WEST (-X): 90 DEGREES", "@s[rym=45,ry=134]", "90_degrees", 90),
        ("FACING NORTH (-Z): 180 DEGREES", "@s[rym=135,ry=180]", "180_degrees", 180),
        ("FACING NORTH (-Z): NEGATIVE-YAW SELECTOR", "@s[rym=-180,ry=-135]", "180_degrees", 180),
        ("FACING EAST (+X): 270 DEGREES", "@s[rym=-134,ry=-45]", "270_degrees", 270),
    )
    lines: list[str] = []
    for heading, selector, rotation, angle in groups:
        lines.extend(("", f"# === {heading} ==="))
        for xi, zi, x0, x1, z0, z1 in specs:
            size_x, size_z = x1 - x0 + 1, z1 - z0 + 1
            anchors = {
                0: (x0, z0),
                90: (x0, z0 + size_z - 1),
                180: (x0 + size_x - 1, z0 + size_z - 1),
                270: (x0 + size_x - 1, z0),
            }
            anchor_x, anchor_z = anchors[angle]
            asset = f"{BASE_NAME}_x{xi}_z{zi}"
            lines.append(
                f"execute if entity {selector} run structure load {NAMESPACE}:{asset} "
                f"^{anchor_x} ^-1 ^{anchor_z} {rotation} none"
            )
    return lines


def write_functions(
    specs: list[tuple[int, int, int, int, int, int]],
    path: list[tuple[int, int, int]],
    best_compression: int,
) -> None:
    curve_count = sum(structure_tools.rail_state(path, index)[1] for index in range(len(path)))
    powered_count = len(path) - curve_count
    wrapper_count = 1 + 3 * len(TICKING_AREAS) + 5 * len(specs)
    complete_count = wrapper_count + 1 + len(TICKING_AREAS)
    header = [
        "# JUNGLE LEVIATHAN ROLLER COASTER - Minecraft Bedrock structure loader",
        "# Run as a player at ground level while facing north, south, east, or west and looking horizontally.",
        "# Stand at the front-center of a clear site; the nearest block is 48 blocks ahead.",
        "# Size: 460 blocks wide, 313 deep, and 240 high; relative bounds are ^-229 ^-1 ^48 through ^230 ^238 ^360.",
        "# Origin: offset observation point outside the front-center; provide at least 460 x 313 x 240 blocks of clearance.",
        f"# Functional twice-footprint ride: {len(path):,} connected rails ({powered_count:,} powered rails and {curve_count} curves); place a minecart on the station track.",
        "# Distinct jungle layout: nested serpent switchbacks, temple station, river, stepped ruin, waterfalls, and a giant canopy tree.",
        f"# Forty sparse native structures preserve {len(voxels):,} occupied voxels and do not clear omitted cells.",
        f"# Best tested exact gap-preserving cuboid compression: {best_compression:,} commands (above Bedrock's 10,000 limit).",
        f"# Wrapper: {wrapper_count} commands; complete loader including callbacks: {complete_count} commands.",
        "# WARNING: This build overwrites an enormous jungle and support volume. Use a disposable world or make a backup first.",
        "# Eight temporary ticking areas preload at most 99 chunks each and are removed automatically after placement.",
        "# This loader temporarily uses eight of the world's 10 command-created ticking-area slots.",
        "# Do not invoke this loader concurrently at different locations; it reuses eight static jungle_leviathan names.",
        "",
        "# === PRELOAD THE COMPLETE 460 x 313 FOOTPRINT IN EIGHT SAFE RECTANGLES ===",
        f"schedule on_area_loaded clear function _{BASE_NAME}_tickingarea_loaded",
    ]
    header.extend(f"tickingarea remove {name}" for name, *_ in TICKING_AREAS)
    header.extend(
        f"tickingarea add ^{x0} ^0 ^{z0} ^{x1} ^0 ^{z1} {name} true"
        for name, x0, x1, z0, z1 in TICKING_AREAS
    )
    header.extend(
        f"schedule on_area_loaded add tickingarea {name} _{BASE_NAME}_tickingarea_loaded"
        for name, *_ in TICKING_AREAS
    )
    public_text = "\n".join(header + load_lines(specs)) + "\n"
    loaded_text = (
        "# INTERNAL CALLBACK - do not run manually. Refresh cleanup after each jungle preload rectangle becomes ready.\n"
        f"schedule delay add _{BASE_NAME}_remove_tickingarea 300 replace\n"
    )
    cleanup_text = "\n".join(
        ["# INTERNAL CALLBACK - do not run manually. Release only this loader's eight temporary ticking areas."]
        + [f"tickingarea remove {name}" for name, *_ in TICKING_AREAS]
    ) + "\n"
    for output, text in (
        (FUNCTIONS / f"{BASE_NAME}.mcfunction", public_text),
        (FUNCTIONS / f"_{BASE_NAME}_tickingarea_loaded.mcfunction", loaded_text),
        (FUNCTIONS / f"_{BASE_NAME}_remove_tickingarea.mcfunction", cleanup_text),
    ):
        with output.open("w", encoding="utf-8", newline="\n") as handle:
            handle.write(text)


def expected_loads(specs: list[tuple[int, int, int, int, int, int]]) -> Counter[tuple[str, int, int, int, str]]:
    loads: Counter[tuple[str, int, int, int, str]] = Counter()
    for xi, zi, x0, x1, z0, z1 in specs:
        asset = f"{BASE_NAME}_x{xi}_z{zi}"
        size_x, size_z = x1 - x0 + 1, z1 - z0 + 1
        loads[(asset, x0, -1, z0, "0_degrees")] += 1
        loads[(asset, x0, -1, z0 + size_z - 1, "90_degrees")] += 1
        loads[(asset, x0 + size_x - 1, -1, z0 + size_z - 1, "180_degrees")] += 2
        loads[(asset, x0 + size_x - 1, -1, z0, "270_degrees")] += 1
    return loads


def validate_functions(specs: list[tuple[int, int, int, int, int, int]], best_compression: int) -> None:
    public = FUNCTIONS / f"{BASE_NAME}.mcfunction"
    loaded = FUNCTIONS / f"_{BASE_NAME}_tickingarea_loaded.mcfunction"
    cleanup = FUNCTIONS / f"_{BASE_NAME}_remove_tickingarea.mcfunction"
    expected_counts = {
        public: 1 + 3 * len(TICKING_AREAS) + 5 * len(specs),
        loaded: 1,
        cleanup: len(TICKING_AREAS),
    }
    allowed_verbs = {"execute", "schedule", "tickingarea"}
    for file, expected_count in expected_counts.items():
        data = file.read_bytes()
        if b"\r" in data or not data.endswith(b"\n") or data.endswith(b"\n\n"):
            raise ValueError(f"{file.name}: expected LF endings and exactly one final newline")
        text = data.decode("utf-8")
        if any(line.rstrip() != line for line in text.splitlines()):
            raise ValueError(f"{file.name}: trailing whitespace")
        commands = [line for line in text.splitlines() if line and not line.startswith("#")]
        if len(commands) != expected_count:
            raise ValueError(f"{file.name}: {len(commands)} commands != {expected_count}")
        if any(line.startswith("/") or line.split()[0] not in allowed_verbs for line in commands):
            raise ValueError(f"{file.name}: invalid command form")

    public_text = public.read_text(encoding="utf-8")
    if f"# Forty sparse native structures preserve {len(voxels):,} occupied voxels" not in public_text:
        raise ValueError("public loader voxel count is stale")
    if f"# Best tested exact gap-preserving cuboid compression: {best_compression:,} commands" not in public_text:
        raise ValueError("public loader compression count is stale")
    for name, x0, x1, z0, z1 in TICKING_AREAS:
        width, depth = x1 - x0 + 1, z1 - z0 + 1
        worst_chunks = math.ceil((width + 15) / 16) * math.ceil((depth + 15) / 16)
        if worst_chunks > 100:
            raise ValueError(f"ticking area {name} may touch {worst_chunks} chunks")
        required = {
            f"tickingarea remove {name}",
            f"tickingarea add ^{x0} ^0 ^{z0} ^{x1} ^0 ^{z1} {name} true",
            f"schedule on_area_loaded add tickingarea {name} _{BASE_NAME}_tickingarea_loaded",
        }
        if not required.issubset(set(public_text.splitlines())):
            raise ValueError(f"public loader is missing preload lifecycle for {name}")

    pattern = re.compile(
        rf"^execute if entity @s\[[^]]+\] run structure load {NAMESPACE}:([^ ]+) "
        r"\^(-?\d+) \^(-?\d+) \^(-?\d+) (0_degrees|90_degrees|180_degrees|270_degrees) none$"
    )
    actual: Counter[tuple[str, int, int, int, str]] = Counter()
    for line in public_text.splitlines():
        if " run structure load " not in line:
            continue
        match = pattern.fullmatch(line)
        if match is None:
            raise ValueError(f"malformed structure-load command: {line}")
        asset, x, y, z, rotation = match.groups()
        actual[(asset, int(x), int(y), int(z), rotation)] += 1
    if actual != expected_loads(specs):
        raise ValueError("loader identifiers, anchors, rotations, or facing counts differ from expected")

    if loaded.read_text(encoding="utf-8").splitlines()[-1] != (
        f"schedule delay add _{BASE_NAME}_remove_tickingarea 300 replace"
    ):
        raise ValueError("area-loaded callback does not refresh the matching cleanup")
    cleanup_commands = [line for line in cleanup.read_text(encoding="utf-8").splitlines() if not line.startswith("#")]
    if cleanup_commands != [f"tickingarea remove {name}" for name, *_ in TICKING_AREAS]:
        raise ValueError("cleanup callback removes the wrong ticking areas")

    manifest = json.loads((ROOT / "src" / "manifest.json").read_text(encoding="utf-8"))
    if manifest["header"]["version"] != [1, 0, 13] or manifest["modules"][0]["version"] != [1, 0, 13]:
        raise ValueError("manifest header/module versions are not synchronized at 1.0.13")


def main() -> None:
    path = build_track_path()
    add_ground()
    add_entrance()
    add_station()
    add_temple()
    add_scenery(path)
    add_track_and_supports(path)
    validate_track(path)
    actual_bounds = (
        min(x for x, _, _ in voxels),
        max(x for x, _, _ in voxels),
        min(y for _, y, _ in voxels),
        max(y for _, y, _ in voxels),
        min(z for _, _, z in voxels),
        max(z for _, _, z in voxels),
    )
    if actual_bounds != (X_MIN, X_MAX, 0, MAX_Y, Z_MIN, Z_MAX):
        raise ValueError(f"unexpected occupied bounds: {actual_bounds}")

    OUTPUT.mkdir(parents=True, exist_ok=True)
    structure_tools.voxels = voxels
    specs = chunk_specs()
    generated: list[tuple[str, tuple[int, int, int], int, int]] = []
    occupied_sum = 0
    rotation_specs = []
    for xi, zi, x0, x1, z0, z1 in specs:
        name = f"{BASE_NAME}_x{xi}_z{zi}.mcstructure"
        expected_size = (x1 - x0 + 1, MAX_Y + 1, z1 - z0 + 1)
        occupied, byte_count = structure_tools.write_structure(OUTPUT / name, x0, x1, z0, z1, MAX_Y)
        decoded = structure_tools.validate_nbt(OUTPUT / name, expected_size, x0, z0)
        if decoded != occupied:
            raise ValueError(f"{name}: decoded occupancy {decoded} != generated occupancy {occupied}")
        occupied_sum += occupied
        generated.append((name, expected_size, occupied, byte_count))
        rotation_specs.append((x0, x1, z0, z1))
    if occupied_sum != len(voxels):
        raise ValueError(f"chunk occupancy {occupied_sum} != voxel count {len(voxels)}")
    structure_tools.validate_rotations(rotation_specs)

    compression = {
        order: structure_tools.compressed_command_count(order) for order in itertools.permutations(range(3))
    }
    best_order, best_count = min(compression.items(), key=lambda item: item[1])
    if best_count <= 10_000:
        raise ValueError(f"build compresses to {best_count} commands; structure bypass is not justified")
    write_functions(specs, path, best_count)
    validate_functions(specs, best_count)

    materials = Counter(block.name for block in voxels.values())
    curve_count = sum(block.name == "minecraft:rail" for block in voxels.values())
    powered_count = sum(block.name == "minecraft:golden_rail" for block in voxels.values())
    print(f"track_blocks={len(path)}")
    print(f"curve_rails={curve_count}")
    print(f"powered_rails={powered_count}")
    print(f"voxels={len(voxels)}")
    print(f"bounds=({X_MIN},0,{Z_MIN})..({X_MAX},{MAX_Y},{Z_MAX})")
    print(f"dimensions={X_MAX-X_MIN+1}x{MAX_Y+1}x{Z_MAX-Z_MIN+1}")
    print(f"footprint_ratio_to_skyline_colossus={(460 * 313) / (302 * 238):.6f}")
    print(f"best_tested_compression={best_count} order={best_order}")
    print("materials=" + ",".join(f"{name}:{count}" for name, count in sorted(materials.items())))
    print(f"structure_count={len(generated)}")
    print(f"structure_bytes={sum(item[3] for item in generated)}")
    for name, size, occupied, byte_count in generated:
        print(f"{name}: size={size} occupied={occupied} bytes={byte_count}")


if __name__ == "__main__":
    main()
