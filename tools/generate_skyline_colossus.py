#!/usr/bin/env python3
"""Generate and validate the double-scale Skyline Colossus Bedrock assets."""

from __future__ import annotations

import itertools
import json
import math
import re
from collections import Counter
from pathlib import Path

import cardinal_snap
import generate_skyline_cyclone as skyline


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "src" / "structures" / "ai_minecraft_builds"
BASE_NAME = "theme_park_skyline_colossus_roller_coaster"
NAMESPACE = "ai_minecraft_builds"
X_MIN, X_MAX = -150, 151
Z_MIN, Z_MAX = 48, 285
TICKING_AREAS = (
    ("skyline_colossus_nw", X_MIN, 0, Z_MIN, 166),
    ("skyline_colossus_ne", 1, X_MAX, Z_MIN, 166),
    ("skyline_colossus_sw", X_MIN, 0, 167, Z_MAX),
    ("skyline_colossus_se", 1, X_MAX, 167, Z_MAX),
)


def make_base_model() -> tuple[dict[tuple[int, int, int], skyline.Block], list[tuple[int, int, int]]]:
    skyline.voxels.clear()
    path = skyline.build_track_path()
    skyline.add_plaza()
    skyline.add_entrance()
    skyline.add_station()
    skyline.add_scenery()
    skyline.add_track_and_supports(path)
    return dict(skyline.voxels), path


def double_track(base_path: list[tuple[int, int, int]]) -> list[tuple[int, int, int]]:
    doubled: list[tuple[int, int, int]] = []
    for index, (x, z, bed_y) in enumerate(base_path):
        next_x, next_z, next_y = base_path[(index + 1) % len(base_path)]
        doubled.append((2 * x, 2 * z, 2 * bed_y + 2))
        doubled.append((2 * x + next_x - x, 2 * z + next_z - z, 2 * bed_y + 2 + next_y - bed_y))
    return doubled


def build_colossus() -> tuple[list[tuple[int, int, int]], int]:
    base_model, base_path = make_base_model()
    rail_names = {"minecraft:rail", "minecraft:golden_rail"}
    voxels: dict[tuple[int, int, int], skyline.Block] = {}
    for (x, y, z), block in base_model.items():
        if block.name in rail_names:
            continue
        for dx, dy, dz in itertools.product(range(2), repeat=3):
            voxels[(2 * x + dx, 2 * y + dy, 2 * z + dz)] = block

    path = double_track(base_path)
    rails: list[tuple[int, int, int, skyline.Block]] = []
    for index, (x, z, bed_y) in enumerate(path):
        prev_x, prev_z, _ = path[index - 1]
        next_x, next_z, _ = path[(index + 1) % len(path)]
        incoming = (x - prev_x, z - prev_z)
        outgoing = (next_x - x, next_z - z)
        tangent = incoming if incoming != outgoing else (next_x - prev_x, next_z - prev_z)
        perpendicular = (0, 1) if abs(tangent[0]) >= abs(tangent[1]) else (1, 0)
        rail, corner = skyline.rail_state(path, index)
        for offset in range(-4, 6):
            if corner:
                block = skyline.RED if offset in (-2, -1, 2, 3) else skyline.BLACK
            elif offset in (-4, -3, 4, 5):
                block = skyline.YELLOW
            elif offset in (-2, -1, 2, 3):
                block = skyline.RED
            else:
                block = skyline.BLACK
            point = (x + perpendicular[0] * offset, bed_y, z + perpendicular[1] * offset)
            voxels[point] = block
        if not corner:
            for offset in (-4, 5):
                point = (x + perpendicular[0] * offset, bed_y + 1, z + perpendicular[1] * offset)
                voxels[point] = skyline.CYAN
        if not corner and index % 7 == 0:
            voxels[(x, bed_y, z)] = skyline.REDSTONE
        if not corner and index % 8 == 0 and bed_y >= 24:
            color = skyline.CYAN if (index // 8) % 2 == 0 else skyline.MAGENTA
            for side in (-4, 5):
                support_x = x + perpendicular[0] * side
                support_z = z + perpendicular[1] * side
                for support_y in range(2, bed_y):
                    voxels[(support_x, support_y, support_z)] = (
                        color if (support_y // 4) % 2 == 0 else skyline.BLACK
                    )
        rails.append((x, bed_y + 1, z, rail))

    for x, y, z, rail in rails:
        voxels.pop((x, y + 1, z), None)
        voxels.pop((x, y + 2, z), None)
        voxels[(x, y, z)] = rail

    skyline.voxels = voxels
    max_y = max(y for _, y, _ in voxels)
    actual_bounds = (
        min(x for x, _, _ in voxels),
        max(x for x, _, _ in voxels),
        min(z for _, _, z in voxels),
        max(z for _, _, z in voxels),
    )
    if actual_bounds != (X_MIN, X_MAX, Z_MIN, Z_MAX) or max_y != 159:
        raise ValueError(f"unexpected bounds {actual_bounds} or max Y {max_y}")
    for index, point in enumerate(path):
        next_point = path[(index + 1) % len(path)]
        if abs(point[0] - next_point[0]) + abs(point[1] - next_point[1]) != 1:
            raise ValueError(f"disconnected track between {index} and {(index + 1) % len(path)}")
        if abs(point[2] - next_point[2]) > 1:
            raise ValueError(f"track rises too quickly between {index} and {(index + 1) % len(path)}")
        for clearance_y in (point[2] + 2, point[2] + 3):
            if (point[0], clearance_y, point[1]) in voxels:
                raise ValueError(f"track clearance is obstructed at {(point[0], clearance_y, point[1])}")
    return path, max_y


def chunk_specs() -> list[tuple[int, int, int, int, int, int]]:
    x_chunks = [(-150, -87), (-86, -23), (-22, 41), (42, 105), (106, 151)]
    z_chunks = [(48, 111), (112, 175), (176, 239), (240, 285)]
    return [
        (xi, zi, x0, x1, z0, z1)
        for zi, (z0, z1) in enumerate(z_chunks, 1)
        for xi, (x0, x1) in enumerate(x_chunks, 1)
    ]


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
    voxel_count: int,
    best_compression: int,
) -> None:
    function_dir = ROOT / "src" / "functions"
    public = function_dir / f"{BASE_NAME}.mcfunction"
    loaded = function_dir / f"_{BASE_NAME}_tickingarea_loaded.mcfunction"
    cleanup = function_dir / f"_{BASE_NAME}_remove_tickingarea.mcfunction"
    expected_counts = {public: 113 + len(cardinal_snap.SNAP_COMMANDS), loaded: 1, cleanup: 4}
    allowed_verbs = {"execute", "schedule", "tickingarea"}
    for path, expected_count in expected_counts.items():
        data = path.read_bytes()
        if b"\r" in data or not data.endswith(b"\n") or data.endswith(b"\n\n"):
            raise ValueError(f"{path.name}: expected LF endings and exactly one final newline")
        text = data.decode("utf-8")
        if any(line.rstrip() != line for line in text.splitlines()):
            raise ValueError(f"{path.name}: trailing whitespace")
        commands = [line for line in text.splitlines() if line and not line.startswith("#")]
        if len(commands) != expected_count:
            raise ValueError(f"{path.name}: {len(commands)} commands != {expected_count}")
        if any(line.startswith("/") or line.split()[0] not in allowed_verbs for line in commands):
            raise ValueError(f"{path.name}: invalid command form")

    public_text = public.read_text(encoding="utf-8")
    if f"# Twenty sparse native structures preserve {voxel_count:,} occupied voxels" not in public_text:
        raise ValueError("public loader voxel count is stale")
    if f"# Best tested exact gap-preserving cuboid compression: {best_compression:,} commands" not in public_text:
        raise ValueError("public loader compression count is stale")
    expected_preload = {
        cardinal_snap.reanchor(f"schedule on_area_loaded clear function _{BASE_NAME}_tickingarea_loaded"),
    }
    for name, x0, x1, z0, z1 in TICKING_AREAS:
        expected_preload.update(
            {
                cardinal_snap.reanchor(f"tickingarea remove {name}"),
                cardinal_snap.reanchor(f"tickingarea add ^{x0} ^0 ^{z0} ^{x1} ^0 ^{z1} {name} true"),
                cardinal_snap.reanchor(
                    f"schedule on_area_loaded add tickingarea {name} _{BASE_NAME}_tickingarea_loaded"
                ),
            }
        )
    if not expected_preload.issubset(set(public_text.splitlines())):
        raise ValueError("public loader is missing part of the four-area preload lifecycle")

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
        asset, x, y, z, angle = match.groups()
        actual[(asset, int(x), int(y), int(z), angle)] += 1
    if actual != expected_loads(specs):
        raise ValueError("loader identifiers, anchors, rotations, or facing counts differ from expected")

    if loaded.read_text(encoding="utf-8").splitlines()[-1] != (
        f"schedule delay add _{BASE_NAME}_remove_tickingarea 200 replace"
    ):
        raise ValueError("loaded callback does not refresh the matching cleanup delay")
    cleanup_commands = [line for line in cleanup.read_text(encoding="utf-8").splitlines() if not line.startswith("#")]
    if cleanup_commands != [f"tickingarea remove {name}" for name, *_ in TICKING_AREAS]:
        raise ValueError("cleanup callback removes the wrong ticking areas")

    manifest = json.loads((ROOT / "src" / "manifest.json").read_text(encoding="utf-8"))
    if manifest["header"]["version"] != [1, 0, 17] or manifest["modules"][0]["version"] != [1, 0, 17]:
        raise ValueError("manifest header/module versions are not synchronized at 1.0.17")


def main() -> None:
    OUTPUT.mkdir(parents=True, exist_ok=True)
    path, max_y = build_colossus()
    specs = chunk_specs()
    occupied_sum = 0
    generated: list[tuple[str, tuple[int, int, int], int, int]] = []
    rotation_specs = []
    for xi, zi, x0, x1, z0, z1 in specs:
        name = f"{BASE_NAME}_x{xi}_z{zi}.mcstructure"
        expected_size = (x1 - x0 + 1, max_y + 1, z1 - z0 + 1)
        occupied, byte_count = skyline.write_structure(OUTPUT / name, x0, x1, z0, z1, max_y)
        decoded = skyline.validate_nbt(OUTPUT / name, expected_size, x0, z0)
        if decoded != occupied:
            raise ValueError(f"{name}: decoded occupancy {decoded} != generated occupancy {occupied}")
        occupied_sum += occupied
        generated.append((name, expected_size, occupied, byte_count))
        rotation_specs.append((x0, x1, z0, z1))
    if occupied_sum != len(skyline.voxels):
        raise ValueError(f"chunk occupancy {occupied_sum} != voxel count {len(skyline.voxels)}")
    skyline.validate_rotations(rotation_specs)

    compression = {
        order: skyline.compressed_command_count(order) for order in itertools.permutations(range(3))
    }
    best_order, best_count = min(compression.items(), key=lambda item: item[1])
    if best_count <= 10_000:
        raise ValueError(f"build compresses to {best_count} commands; structure bypass is not justified")
    validate_functions(specs, len(skyline.voxels), best_count)

    materials = Counter(block.name for block in skyline.voxels.values())
    print(f"track_blocks={len(path)}")
    print(f"curve_rails={sum(block.name == 'minecraft:rail' for block in skyline.voxels.values())}")
    print(f"powered_rails={sum(block.name == 'minecraft:golden_rail' for block in skyline.voxels.values())}")
    print(f"voxels={len(skyline.voxels)}")
    print(f"bounds=({X_MIN},0,{Z_MIN})..({X_MAX},{max_y},{Z_MAX})")
    print(f"dimensions={X_MAX-X_MIN+1}x{max_y+1}x{Z_MAX-Z_MIN+1}")
    print(f"best_tested_compression={best_count} order={best_order}")
    print("materials=" + ",".join(f"{name}:{count}" for name, count in sorted(materials.items())))
    for name, size, occupied, byte_count in generated:
        print(f"{name}: size={size} occupied={occupied} bytes={byte_count}")


if __name__ == "__main__":
    main()
