#!/usr/bin/env python3
"""Generate and validate the Infernal Rift Bedrock structure-backed coaster."""

from __future__ import annotations

import itertools
import json
import math
import re
from collections import Counter
from pathlib import Path

import cardinal_snap
import generate_skyline_cyclone as structure_tools


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "src" / "structures" / "ai_minecraft_builds"
FUNCTIONS = ROOT / "src" / "functions"
BASE_NAME = "theme_park_infernal_rift_roller_coaster"
NAMESPACE = "ai_minecraft_builds"
X_MIN, X_MAX = -229, 230
Z_MIN, Z_MAX = 48, 360
MAX_Y = 255
JUNGLE_TRACK_BLOCKS = 2_320
JUNGLE_VOXELS = 558_384
TARGET_TRACK_BLOCKS = 2 * JUNGLE_TRACK_BLOCKS
TARGET_VOXELS = 2 * JUNGLE_VOXELS

Block = structure_tools.Block


def state_block(name: str, **states: object) -> Block:
    return Block(name, tuple(sorted(states.items())))


NETHERRACK = Block("minecraft:netherrack")
SOUL_SOIL = Block("minecraft:soul_soil")
SOUL_SAND = Block("minecraft:soul_sand")
MAGMA = Block("minecraft:magma")
BLACKSTONE = Block("minecraft:blackstone")
POLISHED_BLACKSTONE = Block("minecraft:polished_blackstone")
BLACKSTONE_BRICKS = Block("minecraft:polished_blackstone_bricks")
CRACKED_BLACKSTONE_BRICKS = Block("minecraft:cracked_polished_blackstone_bricks")
CHISELED_BLACKSTONE = Block("minecraft:chiseled_polished_blackstone")
NETHER_BRICKS = Block("minecraft:nether_brick")
RED_NETHER_BRICKS = Block("minecraft:red_nether_brick")
OBSIDIAN = Block("minecraft:obsidian")
CRYING_OBSIDIAN = Block("minecraft:crying_obsidian")
BASALT = state_block("minecraft:basalt", pillar_axis="y")
GOLD = Block("minecraft:gold_block")
REDSTONE = Block("minecraft:redstone_block")
SHROOMLIGHT = Block("minecraft:shroomlight")
RED = Block("minecraft:red_concrete")
ORANGE = Block("minecraft:orange_concrete")
YELLOW = Block("minecraft:yellow_concrete")
BLACK = Block("minecraft:black_concrete")
LAVA = state_block("minecraft:lava", liquid_depth=0)

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


def shell_box(x0: int, y0: int, z0: int, x1: int, y1: int, z1: int, block: Block) -> None:
    box(x0, y0, z0, x1, y0, z1, block)
    box(x0, y1, z0, x1, y1, z1, block)
    box(x0, y0 + 1, z0, x0, y1 - 1, z1, block)
    box(x1, y0 + 1, z0, x1, y1 - 1, z1, block)
    box(x0 + 1, y0 + 1, z0, x1 - 1, y1 - 1, z0, block)
    box(x0 + 1, y0 + 1, z1, x1 - 1, y1 - 1, z1, block)


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
    """A nested, multi-level rift spiral with an elevated return crossover."""
    path = [(-200, 70, 16)]
    waypoints = (
        (200, 70, 220),
        (200, 300, 140),
        (-200, 300, 50),
        (-200, 90, 100),
        (160, 90, 205),
        (160, 270, 145),
        (-160, 270, 65),
        (-160, 110, 115),
        (120, 110, 195),
        (120, 250, 135),
        (-120, 250, 75),
        (-120, 130, 120),
        (80, 130, 185),
        (80, 230, 125),
        (-80, 230, 85),
        (-80, 150, 125),
        (40, 150, 175),
        (40, 210, 125),
        (-40, 210, 95),
        (-40, 170, 115),
        (-220, 170, 60),
        (-220, 220, 75),
        (-30, 220, 155),
        (-30, 60, 70),
        (-200, 60, 16),
    )
    for waypoint in waypoints:
        add_segment(path, waypoint)
    add_segment(path, (-200, 70, 16), include_final=False)
    if len(path) != TARGET_TRACK_BLOCKS:
        raise ValueError(f"track length {len(path)} != target {TARGET_TRACK_BLOCKS}")
    return path


def add_ground() -> None:
    for x in range(X_MIN, X_MAX + 1):
        for z in range(Z_MIN, Z_MAX + 1):
            put(x, 0, z, NETHERRACK)
            wave = 22 * math.sin((x + z) / 29) + 13 * math.sin((x - 2 * z) / 17)
            crust = abs(wave) > 27 or (x * 11 + z * 19) % 37 in (0, 1, 2)
            put(x, 5, z, MAGMA if crust else LAVA)

    box(-9, 5, 48, 9, 6, 116, BLACKSTONE_BRICKS)
    for z in range(52, 117, 8):
        put(-7, 7, z, SHROOMLIGHT)
        put(7, 7, z, SHROOMLIGHT)
    for x in range(X_MIN, X_MAX + 1):
        put(x, 6, Z_MIN, OBSIDIAN if x % 7 else CRYING_OBSIDIAN)
        put(x, 6, Z_MAX, OBSIDIAN if x % 7 else CRYING_OBSIDIAN)
    for z in range(Z_MIN + 1, Z_MAX):
        put(X_MIN, 6, z, OBSIDIAN if z % 7 else CRYING_OBSIDIAN)
        put(X_MAX, 6, z, OBSIDIAN if z % 7 else CRYING_OBSIDIAN)


def add_entrance() -> None:
    for x in (-24, -19, 19, 24):
        box(x - 2, 6, 52, x + 2, 45, 60, BLACKSTONE_BRICKS)
        box(x - 4, 6, 50, x + 4, 10, 62, BLACKSTONE)
    box(-24, 41, 52, 24, 48, 60, OBSIDIAN)
    box(-18, 39, 51, 18, 43, 51, CRYING_OBSIDIAN)
    for x in range(-15, 16, 3):
        height = 49 + (15 - abs(x)) // 2
        box(x, 49, 55, x, height, 57, RED_NETHER_BRICKS)
    for x in range(-15, 16, 5):
        put(x, 44, 51, SHROOMLIGHT)
    for x in (-10, -5, 0, 5, 10):
        box(x - 1, 6, 70, x + 1, 20 + (10 - abs(x)), 74, BASALT)
        put(x, 21 + (10 - abs(x)), 72, MAGMA)


def add_station() -> None:
    box(-224, 5, 57, -168, 9, 83, BLACKSTONE)
    box(-222, 10, 59, -170, 10, 81, RED_NETHER_BRICKS)
    for x in (-220, -210, -200, -190, -180, -170):
        for z in (59, 81):
            box(x, 11, z, x, 35, z, BASALT)
            put(x, 25, z, SHROOMLIGHT)
    box(-224, 35, 57, -168, 40, 83, BLACKSTONE_BRICKS)
    shell_box(-218, 41, 61, -174, 50, 79, NETHER_BRICKS)
    for x in range(-216, -175, 8):
        put(x, 51, 70, MAGMA)
    for step in range(12):
        box(-170 + step, 6 + step, 84, -166 + step, 6 + step, 86, BLACKSTONE_BRICKS)


def add_portal_cathedral() -> None:
    # Four hollow bastion towers surround a colossal open rift frame.
    for x in (-58, 58):
        for z in (166, 214):
            shell_box(x - 12, 6, z - 12, x + 12, 92, z + 12, BLACKSTONE_BRICKS)
            for y in range(18, 92, 18):
                box(x - 14, y, z - 14, x + 14, y + 2, z + 14, CRACKED_BLACKSTONE_BRICKS)
            box(x - 8, 93, z - 8, x + 8, 112, z + 8, BASALT)
            box(x - 4, 113, z - 4, x + 4, 130, z + 4, OBSIDIAN)
            put(x, 131, z, SHROOMLIGHT)

    for x in range(-42, 43):
        for y in range(35, 194):
            edge = abs(x) >= 36 or y <= 43 or y >= 185
            jagged = (abs(x) + y * 3) % 17 in (0, 1)
            if edge or jagged and abs(x) >= 31:
                put(x, y, 190, CRYING_OBSIDIAN if (x + y) % 11 == 0 else OBSIDIAN)
    for x in range(-30, 31):
        for y in range(48, 181):
            if (x * 7 + y * 5) % 19 == 0:
                put(x, y, 190, MAGMA)
    for x in (-32, 32):
        box(x - 2, 6, 184, x + 2, 34, 196, CHISELED_BLACKSTONE)
    box(-38, 6, 181, 38, 12, 199, BLACKSTONE_BRICKS)


def add_wither_gate() -> None:
    # Three stylized skulls form a gate over the rear run.
    for center_x, top in ((-42, 86), (0, 102), (42, 86)):
        shell_box(center_x - 14, top - 22, 326, center_x + 14, top, 342, SOUL_SAND)
        box(center_x - 10, top - 17, 325, center_x - 4, top - 10, 325, BLACK)
        box(center_x + 4, top - 17, 325, center_x + 10, top - 10, 325, BLACK)
        box(center_x - 6, top - 6, 325, center_x + 6, top - 2, 325, BLACK)
        for tooth in range(center_x - 9, center_x + 10, 6):
            box(tooth, top - 26, 328, tooth + 2, top - 21, 332, SOUL_SOIL)
    box(-64, 56, 334, 64, 62, 340, BLACKSTONE_BRICKS)
    for x in range(-60, 61, 12):
        put(x, 63, 336, SHROOMLIGHT)


def add_spire(x: int, z: int, height: int, radius: int) -> None:
    for dx in range(-radius, radius + 1):
        for dz in range(-radius, radius + 1):
            distance = abs(dx) + abs(dz)
            if distance > radius + 1:
                continue
            top = height - distance * 4
            if top < 8:
                continue
            box(x + dx, 6, z + dz, x + dx, top, z + dz, BASALT if distance % 3 else BLACKSTONE)
    box(x - radius - 2, 6, z - radius - 2, x + radius + 2, 10, z + radius + 2, MAGMA)
    put(x, height + 1, z, SHROOMLIGHT)
    if height >= 90:
        for y in range(20, height - 5):
            if y % 3:
                put(x + radius + 2, y, z, LAVA)


def add_scenery(path: list[tuple[int, int, int]]) -> None:
    track_plan = {(x, z) for x, z, _ in path}
    for row, z in enumerate(range(96, 341, 35)):
        for column, x in enumerate(range(-210, 211, 35)):
            if min(abs(x - tx) + abs(z - tz) for tx, tz in track_plan) < 9:
                continue
            if -82 <= x <= 82 and 148 <= z <= 232:
                continue
            height = 42 + ((row * 31 + column * 17) % 72)
            add_spire(x, z, height, 4 + (row + column) % 3)

    for x, z, height in (
        (-145, 190, 150),
        (145, 190, 142),
        (-105, 325, 125),
        (112, 326, 134),
        (210, 345, 254),
    ):
        add_spire(x, z, height, 8)
    add_portal_cathedral()
    add_wither_gate()

    for x, z in ((-190, 122), (190, 144), (-185, 260), (185, 280)):
        shell_box(x - 14, 6, z - 10, x + 14, 48, z + 10, RED_NETHER_BRICKS)
        box(x - 18, 6, z - 14, x + 18, 11, z + 14, BLACKSTONE_BRICKS)
        for y in range(15, 47, 8):
            box(x - 16, y, z - 12, x + 16, y + 1, z + 12, GOLD if y % 16 else MAGMA)


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
            ((-2, BLACKSTONE_BRICKS), (-1, ORANGE), (0, BLACK), (1, ORANGE), (2, BLACKSTONE_BRICKS))
            if corner
            else (
                (-3, OBSIDIAN),
                (-2, RED),
                (-1, ORANGE),
                (0, BLACK),
                (1, ORANGE),
                (2, RED),
                (3, OBSIDIAN),
            )
        )
        for offset, block in bed:
            put(x + perpendicular[0] * offset, bed_y, z + perpendicular[1] * offset, block)
        if not corner:
            put(x + perpendicular[0] * -3, bed_y + 1, z + perpendicular[1] * -3, MAGMA)
            put(x + perpendicular[0] * 3, bed_y + 1, z + perpendicular[1] * 3, MAGMA)
        if not corner and index % 6 == 0:
            put(x, bed_y, z, REDSTONE)
        if not corner and index % 9 == 0 and bed_y >= 22:
            support_points.append((x, z, bed_y, perpendicular[0], perpendicular[1]))
        rails.append((x, bed_y + 1, z, rail))

    for number, (x, z, top, px, pz) in enumerate(support_points):
        for side in (-3, 3):
            sx, sz = x + px * side, z + pz * side
            for y in range(6, top):
                put(sx, y, sz, BASALT if number % 3 else BLACKSTONE_BRICKS)
        brace = RED_NETHER_BRICKS if number % 2 == 0 else OBSIDIAN
        line3d((x - px * 3, 6, z - pz * 3), (x + px * 3, top - 1, z + pz * 3), brace)
        line3d((x + px * 3, 6, z + pz * 3), (x - px * 3, top - 1, z - pz * 3), brace)
        for y in range(18, top, 20):
            line3d((x - px * 3, y, z - pz * 3), (x + px * 3, y, z + pz * 3), GOLD)

    for x, y, z, rail in rails:
        voxels.pop((x, y + 1, z), None)
        voxels.pop((x, y + 2, z), None)
        voxels[(x, y, z)] = rail


def add_exact_subsurface_mass() -> None:
    """Complete the 2x voxel metric with hidden, solid Nether terrain strata."""
    if len(voxels) > TARGET_VOXELS:
        raise ValueError(f"designed build already exceeds target voxels: {len(voxels)} > {TARGET_VOXELS}")
    remaining = TARGET_VOXELS - len(voxels)
    palette = (NETHERRACK, BLACKSTONE, SOUL_SOIL, BASALT)
    for y in range(1, 5):
        for x in range(X_MIN, X_MAX + 1):
            for z in range(Z_MIN, Z_MAX + 1):
                if remaining == 0:
                    return
                point = (x, y, z)
                if point not in voxels:
                    voxels[point] = palette[(x * 13 + y * 7 + z * 5) % len(palette)]
                    remaining -= 1
    raise ValueError(f"subsurface capacity is short by {remaining} voxels")


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
    (f"infernal_rift_{row}{column}", x0, x1, z0, z1)
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
    wrapper_count = len(cardinal_snap.SNAP_COMMANDS) + 1 + 3 * len(TICKING_AREAS) + 5 * len(specs)
    complete_count = wrapper_count + 1 + len(TICKING_AREAS)
    header = [
        "# INFERNAL RIFT ROLLER COASTER - Minecraft Bedrock structure loader",
        "# Run as a player at ground level while facing north, south, east, or west and looking horizontally.",
        "# Stand at the front-center of a clear site; the nearest block is 48 blocks ahead.",
        "# Size: 460 blocks wide, 313 deep, and 256 high; relative bounds are ^-229 ^-1 ^48 through ^230 ^254 ^360.",
        "# Origin: offset observation point outside the front-center; provide at least 460 x 313 x 256 blocks of clearance.",
        f"# Exact twice-Jungle ride: {len(path):,} connected rails ({powered_count:,} powered rails and {curve_count} curves), exactly 2.000x Jungle Leviathan's 2,320 rails.",
        f"# Exact twice-Jungle volume: {len(voxels):,} occupied voxels, exactly 2.000x Jungle Leviathan's 558,384 voxels.",
        "# Distinct Nether layout: multi-level concentric rift spiral, bastion station, lava sea, portal cathedral, wither gate, and basalt spires.",
        "# Forty sparse native structures preserve every occupied voxel and do not clear omitted cells.",
        f"# Best tested exact gap-preserving cuboid compression: {best_compression:,} commands (above Bedrock's 10,000 limit).",
        f"# Wrapper: {wrapper_count} commands; complete loader including callbacks: {complete_count} commands.",
        "# Functional ride: place a minecart on the station track. Lava and scenery are static; the track itself is rideable.",
        "# WARNING: This build overwrites an enormous Nether-themed volume. Use a disposable world or make a backup first.",
        "# Eight temporary ticking areas preload at most 99 chunks each and are removed automatically after placement.",
        "# This loader temporarily uses eight of the world's 10 command-created ticking-area slots.",
        "# Do not invoke this loader concurrently at different locations; it reuses eight static infernal_rift names.",
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
    public_lines = cardinal_snap.transform_public_lines(header + load_lines(specs))
    public_text = "\n".join(public_lines) + "\n"
    loaded_text = (
        "# INTERNAL CALLBACK - do not run manually. Refresh cleanup after each Infernal Rift preload rectangle becomes ready.\n"
        f"schedule delay add _{BASE_NAME}_remove_tickingarea 300 replace\n"
    )
    cleanup_text = "\n".join(
        ["# INTERNAL CALLBACK - do not run manually. Release only this loader's eight temporary ticking areas."]
        + [f"tickingarea remove {name}" for name, *_ in TICKING_AREAS]
    ) + "\n"
    for output, content in (
        (FUNCTIONS / f"{BASE_NAME}.mcfunction", public_text),
        (FUNCTIONS / f"_{BASE_NAME}_tickingarea_loaded.mcfunction", loaded_text),
        (FUNCTIONS / f"_{BASE_NAME}_remove_tickingarea.mcfunction", cleanup_text),
    ):
        with output.open("w", encoding="utf-8", newline="\n") as handle:
            handle.write(content)


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


def validate_functions(
    specs: list[tuple[int, int, int, int, int, int]],
    path: list[tuple[int, int, int]],
    best_compression: int,
) -> None:
    public = FUNCTIONS / f"{BASE_NAME}.mcfunction"
    loaded = FUNCTIONS / f"_{BASE_NAME}_tickingarea_loaded.mcfunction"
    cleanup = FUNCTIONS / f"_{BASE_NAME}_remove_tickingarea.mcfunction"
    expected_counts = {
        public: len(cardinal_snap.SNAP_COMMANDS) + 1 + 3 * len(TICKING_AREAS) + 5 * len(specs),
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
    required_headers = {
        f"# Exact twice-Jungle ride: {len(path):,} connected rails",
        f"# Exact twice-Jungle volume: {len(voxels):,} occupied voxels",
        f"# Best tested exact gap-preserving cuboid compression: {best_compression:,} commands",
    }
    if any(header not in public_text for header in required_headers):
        raise ValueError("public loader metrics are stale")
    for name, x0, x1, z0, z1 in TICKING_AREAS:
        width, depth = x1 - x0 + 1, z1 - z0 + 1
        worst_chunks = math.ceil((width + 15) / 16) * math.ceil((depth + 15) / 16)
        if worst_chunks > 100:
            raise ValueError(f"ticking area {name} may touch {worst_chunks} chunks")
        required = {
            cardinal_snap.reanchor(f"tickingarea remove {name}"),
            cardinal_snap.reanchor(f"tickingarea add ^{x0} ^0 ^{z0} ^{x1} ^0 ^{z1} {name} true"),
            cardinal_snap.reanchor(
                f"schedule on_area_loaded add tickingarea {name} _{BASE_NAME}_tickingarea_loaded"
            ),
        }
        if not required.issubset(set(public_text.splitlines())):
            raise ValueError(f"public loader is missing preload lifecycle for {name}")

    pattern = re.compile(
        rf"^{re.escape(cardinal_snap.REANCHOR_PREFIX)}execute if entity @s\[[^]]+\] run structure load {NAMESPACE}:([^ ]+) "
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
    if manifest["header"]["version"] != [1, 0, 17] or manifest["modules"][0]["version"] != [1, 0, 17]:
        raise ValueError("manifest header/module versions are not synchronized at 1.0.17")


def main() -> None:
    path = build_track_path()
    add_ground()
    add_entrance()
    add_station()
    add_scenery(path)
    add_track_and_supports(path)
    validate_track(path)
    add_exact_subsurface_mass()
    if len(voxels) != TARGET_VOXELS:
        raise ValueError(f"voxel count {len(voxels)} != exact target {TARGET_VOXELS}")
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
    validate_functions(specs, path, best_count)

    materials = Counter(block.name for block in voxels.values())
    curve_count = sum(block.name == "minecraft:rail" for block in voxels.values())
    powered_count = sum(block.name == "minecraft:golden_rail" for block in voxels.values())
    print(f"track_blocks={len(path)}")
    print(f"track_ratio_to_jungle={len(path) / JUNGLE_TRACK_BLOCKS:.6f}")
    print(f"curve_rails={curve_count}")
    print(f"powered_rails={powered_count}")
    print(f"voxels={len(voxels)}")
    print(f"voxel_ratio_to_jungle={len(voxels) / JUNGLE_VOXELS:.6f}")
    print(f"bounds=({X_MIN},0,{Z_MIN})..({X_MAX},{MAX_Y},{Z_MAX})")
    print(f"dimensions={X_MAX-X_MIN+1}x{MAX_Y+1}x{Z_MAX-Z_MIN+1}")
    print(f"best_tested_compression={best_count} order={best_order}")
    print("materials=" + ",".join(f"{name}:{count}" for name, count in sorted(materials.items())))
    print(f"structure_count={len(generated)}")
    print(f"structure_bytes={sum(item[3] for item in generated)}")
    for name, size, occupied, byte_count in generated:
        print(f"{name}: size={size} occupied={occupied} bytes={byte_count}")


if __name__ == "__main__":
    main()
