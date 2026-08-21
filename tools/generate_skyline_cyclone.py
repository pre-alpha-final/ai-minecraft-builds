#!/usr/bin/env python3
"""Generate and validate the Skyline Cyclone Bedrock structure assets."""

from __future__ import annotations

import itertools
import json
import math
import re
import struct
from collections import Counter
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "src" / "structures" / "ai_minecraft_builds"
BASE_NAME = "theme_park_skyline_cyclone_roller_coaster"
BLOCK_VERSION = 17_959_425
X_MIN, X_MAX = -75, 75
Z_MIN, Z_MAX = 24, 142


@dataclass(frozen=True, order=True)
class Block:
    name: str
    states: tuple[tuple[str, object], ...] = ()


AIR = Block("minecraft:air")
BLACK = Block("minecraft:black_concrete")
BLUE = Block("minecraft:blue_concrete")
CYAN = Block("minecraft:cyan_concrete")
GRAY = Block("minecraft:gray_concrete")
LIGHT_GRAY = Block("minecraft:light_gray_concrete")
MAGENTA = Block("minecraft:magenta_concrete")
ORANGE = Block("minecraft:orange_concrete")
RED = Block("minecraft:red_concrete")
WHITE = Block("minecraft:white_concrete")
YELLOW = Block("minecraft:yellow_concrete")
GLASS = Block("minecraft:light_blue_stained_glass")
LEAVES = Block("minecraft:azalea_leaves", (("persistent_bit", True), ("update_bit", False)))
LOG = Block("minecraft:oak_log", (("pillar_axis", "y"),))
QUARTZ = Block("minecraft:smooth_quartz", (("pillar_axis", "y"),))
REDSTONE = Block("minecraft:redstone_block")
SEA_LANTERN = Block("minecraft:sea_lantern")
STONE = Block("minecraft:polished_blackstone_bricks")


def state_block(name: str, **states: object) -> Block:
    return Block(name, tuple(sorted(states.items())))


voxels: dict[tuple[int, int, int], Block] = {}


def put(x: int, y: int, z: int, block: Block) -> None:
    if not (X_MIN <= x <= X_MAX and Z_MIN <= z <= Z_MAX and y >= 0):
        raise ValueError(f"voxel outside declared bounds: {(x, y, z)}")
    voxels[(x, y, z)] = block


def box(x0: int, y0: int, z0: int, x1: int, y1: int, z1: int, block: Block) -> None:
    for x in range(min(x0, x1), max(x0, x1) + 1):
        for y in range(min(y0, y1), max(y0, y1) + 1):
            for z in range(min(z0, z1), max(z0, z1) + 1):
                put(x, y, z, block)


def line3d(a: tuple[int, int, int], b: tuple[int, int, int], block: Block) -> None:
    steps = max(abs(b[i] - a[i]) for i in range(3))
    if steps == 0:
        put(*a, block)
        return
    for i in range(steps + 1):
        point = tuple(round(a[j] + (b[j] - a[j]) * i / steps) for j in range(3))
        put(*point, block)


def add_segment(
    path: list[tuple[int, int, int]],
    end: tuple[int, int],
    heights: list[int],
    include_final: bool = True,
) -> None:
    x0, z0, _ = path[-1]
    x1, z1 = end
    distance = abs(x1 - x0) + abs(z1 - z0)
    if x0 != x1 and z0 != z1:
        raise ValueError("track segments must be axis aligned")
    if len(heights) != distance:
        raise ValueError(f"height profile length {len(heights)} != segment length {distance}")
    dx = 0 if x0 == x1 else (1 if x1 > x0 else -1)
    dz = 0 if z0 == z1 else (1 if z1 > z0 else -1)
    stop = distance if include_final else distance - 1
    for i in range(1, stop + 1):
        path.append((x0 + dx * i, z0 + dz * i, heights[i - 1]))


def flat(length: int, height: int) -> list[int]:
    return [height] * length


def build_track_path() -> list[tuple[int, int, int]]:
    path = [(-60, 35, 8)]
    add_segment(path, (60, 35), [8] * 20 + list(range(9, 79)) + [78] * 30)
    add_segment(path, (60, 65), [78] * 4 + list(range(77, 52, -1)) + [53])
    add_segment(path, (20, 65), [53] + list(range(52, 17, -1)) + [18] * 4)
    add_segment(path, (20, 95), [18] * 4 + list(range(19, 44)) + [43])
    add_segment(path, (60, 95), [43] * 4 + list(range(42, 11, -1)) + [12] * 5)
    add_segment(path, (60, 130), [12] * 3 + list(range(13, 32)) + [31] * 3 + list(range(30, 21, -1)) + [22])
    add_segment(path, (-60, 130), [22] * 5 + list(range(23, 78)) + [77] * 4 + list(range(76, 21, -1)) + [22])
    add_segment(path, (-60, 105), [22] * 3 + list(range(21, 7, -1)) + [8] * 8)
    add_segment(path, (-20, 105), flat(40, 8))
    add_segment(path, (-20, 75), [8] * 3 + list(range(9, 24)) + [23] * 3 + list(range(22, 14, -1)) + [15])
    add_segment(path, (-60, 75), [15] * 3 + list(range(14, 7, -1)) + [8] * 30)
    add_segment(path, (-60, 35), flat(40, 8), include_final=False)
    return path


def direction(a: tuple[int, int, int], b: tuple[int, int, int]) -> tuple[int, int]:
    return (b[0] - a[0], b[1] - a[1])


def rail_state(path: list[tuple[int, int, int]], index: int) -> tuple[Block, bool]:
    x, z, y = path[index]
    px, pz, py = path[index - 1]
    nx, nz, ny = path[(index + 1) % len(path)]
    before = direction((x, z, y), (px, pz, py))
    after = direction((x, z, y), (nx, nz, ny))
    is_corner = before[0] != after[0] and before[1] != after[1]
    if is_corner:
        if py != y or ny != y:
            raise ValueError(f"sloped corner at track index {index}")
        corner_states = {
            frozenset(((1, 0), (0, 1))): 6,
            frozenset(((-1, 0), (0, 1))): 7,
            frozenset(((-1, 0), (0, -1))): 8,
            frozenset(((1, 0), (0, -1))): 9,
        }
        return state_block("minecraft:rail", rail_direction=corner_states[frozenset((before, after))]), True

    axis_x = before[0] != 0
    rising: tuple[int, int] | None = None
    if py > y:
        rising = before
    if ny > y:
        if rising is not None and rising != after:
            raise ValueError(f"rail rises in both directions at track index {index}")
        rising = after
    if rising is None:
        value = 1 if axis_x else 0
    else:
        value = {(1, 0): 2, (-1, 0): 3, (0, -1): 4, (0, 1): 5}[rising]
    return state_block("minecraft:golden_rail", rail_data_bit=True, rail_direction=value), False


def add_plaza() -> None:
    for x in range(X_MIN, X_MAX + 1):
        for z in range(Z_MIN, Z_MAX + 1):
            put(x, 0, z, GRAY if (x + z) % 2 == 0 else LIGHT_GRAY)
    box(X_MIN, 1, Z_MIN, -14, 2, Z_MIN, STONE)
    box(14, 1, Z_MIN, X_MAX, 2, Z_MIN, STONE)
    box(X_MIN, 1, Z_MAX, X_MAX, 2, Z_MAX, STONE)
    box(X_MIN, 1, Z_MIN + 1, X_MIN, 2, Z_MAX - 1, STONE)
    box(X_MAX, 1, Z_MIN + 1, X_MAX, 2, Z_MAX - 1, STONE)


def add_entrance() -> None:
    for x in (-13, -10, 10, 13):
        box(x, 1, 25, x, 16, 28, BLACK if abs(x) == 13 else CYAN)
    box(-13, 15, 25, 13, 18, 28, BLACK)
    box(-10, 16, 24, 10, 17, 24, MAGENTA)
    for x in range(-8, 9, 4):
        put(x, 18, 24, SEA_LANTERN)
    for x in range(-7, 8):
        put(x, 19 + (4 - abs(x) // 2), 26, CYAN if x % 2 == 0 else MAGENTA)
    box(-4, 1, 29, 4, 1, 55, QUARTZ)
    for z in range(31, 56, 4):
        put(-5, 2, z, SEA_LANTERN)
        put(5, 2, z, SEA_LANTERN)


def add_station() -> None:
    box(-66, 1, 29, -34, 1, 41, BLACK)
    for x in range(-64, -39, 6):
        for z in (29, 41):
            box(x, 2, z, x, 15, z, CYAN)
            put(x, 10, z, SEA_LANTERN)
    box(-66, 15, 28, -40, 16, 42, BLACK)
    box(-63, 17, 31, -41, 18, 39, MAGENTA)
    box(-64, 8, 31, -34, 8, 33, QUARTZ)
    box(-64, 8, 37, -34, 8, 39, QUARTZ)
    box(-66, 3, 29, -66, 12, 41, GLASS)
    box(-40, 3, 29, -40, 12, 41, GLASS)
    for y in range(9, 15):
        for z in range(34, 37):
            voxels.pop((-40, y, z), None)
    for step in range(8):
        box(-42 + step, 1 + step, 42 + step, -38 + step, 1 + step, 42 + step, QUARTZ)
    for z in (46, 51, 56, 61):
        box(-68, 1, z, -46, 1, z + 1, MAGENTA if z % 2 == 0 else CYAN)
        for x in (-68, -46):
            box(x, 2, z, x, 3, z, BLACK)


def add_scenery() -> None:
    for x in (-70, -48, -24, 24, 48, 70):
        for z in (52, 84, 116, 136):
            if abs(x) < 30 and z in (84, 116):
                continue
            box(x - 2, 1, z - 2, x + 2, 1, z + 2, STONE)
            box(x, 2, z, x, 6, z, LOG)
            box(x - 3, 6, z - 3, x + 3, 8, z + 3, LEAVES)
            box(x - 2, 9, z - 2, x + 2, 10, z + 2, LEAVES)
    for x in (-70, 70):
        for z in (60, 100):
            box(x - 2, 1, z - 2, x + 2, 12, z + 2, BLUE)
            box(x - 3, 13, z - 3, x + 3, 15, z + 3, MAGENTA)
            put(x, 16, z, SEA_LANTERN)
    box(-12, 1, 76, 12, 1, 112, CYAN)
    box(-10, 2, 78, 10, 2, 110, BLUE)
    for x in range(-8, 9, 4):
        for z in range(80, 109, 7):
            put(x, 3, z, SEA_LANTERN)


def add_track_and_supports(path: list[tuple[int, int, int]]) -> None:
    support_points: list[tuple[int, int, int, int, int]] = []
    rails: list[tuple[int, int, int, Block, bool]] = []
    for i, (x, z, y) in enumerate(path):
        px, pz, _ = path[i - 1]
        nx, nz, _ = path[(i + 1) % len(path)]
        incoming = (x - px, z - pz)
        outgoing = (nx - x, nz - z)
        tx, tz = incoming if incoming != outgoing else (nx - px, nz - pz)
        if abs(tx) >= abs(tz):
            perp = (0, 1)
        else:
            perp = (1, 0)
        rail, corner = rail_state(path, i)
        bed_blocks = (
            ((-1, RED), (0, BLACK), (1, RED))
            if corner
            else ((-2, YELLOW), (-1, RED), (0, BLACK), (1, RED), (2, YELLOW))
        )
        for offset, block in bed_blocks:
            put(x + perp[0] * offset, y, z + perp[1] * offset, block)
        if not corner:
            put(x + perp[0] * -2, y + 1, z + perp[1] * -2, CYAN)
            put(x + perp[0] * 2, y + 1, z + perp[1] * 2, CYAN)
        rails.append((x, y + 1, z, rail, corner))
        if not corner and i % 7 == 0:
            put(x, y, z, REDSTONE)
        if i % 4 == 0 and y >= 12:
            support_points.append((x, z, y, perp[0], perp[1]))

    for number, (x, z, top, px, pz) in enumerate(support_points):
        support_color = CYAN if number % 2 == 0 else MAGENTA
        for side in (-2, 2):
            sx, sz = x + px * side, z + pz * side
            for y in range(1, top):
                put(sx, y, sz, support_color if (y // 2) % 2 == 0 else BLACK)
        line3d((x - px * 2, 1, z - pz * 2), (x + px * 2, top - 1, z + pz * 2), support_color)
        line3d((x + px * 2, 1, z + pz * 2), (x - px * 2, top - 1, z - pz * 2), support_color)
        for y in range(6, top, 8):
            line3d((x - px * 2, y, z - pz * 2), (x + px * 2, y, z + pz * 2), BLACK)

    for x, y, z, rail, _ in rails:
        put(x, y, z, rail)


def tag_name(name: str) -> bytes:
    encoded = name.encode("utf-8")
    return struct.pack("<H", len(encoded)) + encoded


def tag_header(kind: int, name: str) -> bytes:
    return bytes((kind,)) + tag_name(name)


def tag_int(name: str, value: int) -> bytes:
    return tag_header(3, name) + struct.pack("<i", value)


def tag_byte(name: str, value: int) -> bytes:
    return tag_header(1, name) + struct.pack("<b", value)


def tag_string(name: str, value: str) -> bytes:
    encoded = value.encode("utf-8")
    return tag_header(8, name) + struct.pack("<H", len(encoded)) + encoded


def tag_int_list(name: str, values: list[int]) -> bytes:
    return tag_header(9, name) + bytes((3,)) + struct.pack("<i", len(values)) + struct.pack(
        f"<{len(values)}i", *values
    )


def tag_compound(name: str, contents: bytes) -> bytes:
    return tag_header(10, name) + contents + b"\x00"


def tag_compound_list(name: str, compounds: list[bytes]) -> bytes:
    return tag_header(9, name) + bytes((10,)) + struct.pack("<i", len(compounds)) + b"".join(
        item + b"\x00" for item in compounds
    )


def palette_entry(block: Block) -> bytes:
    encoded_states = []
    for name, value in block.states:
        if isinstance(value, bool):
            encoded_states.append(tag_byte(name, int(value)))
        elif isinstance(value, int):
            encoded_states.append(tag_int(name, value))
        elif isinstance(value, str):
            encoded_states.append(tag_string(name, value))
        else:
            raise TypeError(f"unsupported block-state type for {name}: {type(value).__name__}")
    states = b"".join(encoded_states)
    return tag_string("name", block.name) + tag_compound("states", states) + tag_int("version", BLOCK_VERSION)


def write_structure(
    path: Path,
    x0: int,
    x1: int,
    z0: int,
    z1: int,
    max_y: int,
) -> tuple[int, int]:
    size_x, size_y, size_z = x1 - x0 + 1, max_y + 1, z1 - z0 + 1
    present = {block for (x, y, z), block in voxels.items() if x0 <= x <= x1 and z0 <= z <= z1}
    palette = sorted(present)
    palette_index = {block: i for i, block in enumerate(palette)}
    layer: list[int] = []
    occupied = 0
    for x in range(x0, x1 + 1):
        for y in range(size_y):
            for z in range(z0, z1 + 1):
                block = voxels.get((x, y, z))
                if block is None:
                    layer.append(-1)
                else:
                    layer.append(palette_index[block])
                    occupied += 1
    second = [-1] * len(layer)
    block_indices = (
        tag_header(9, "block_indices")
        + bytes((9,))
        + struct.pack("<i", 2)
        + bytes((3,))
        + struct.pack("<i", len(layer))
        + struct.pack(f"<{len(layer)}i", *layer)
        + bytes((3,))
        + struct.pack("<i", len(second))
        + struct.pack(f"<{len(second)}i", *second)
    )
    structure = (
        block_indices
        + tag_compound_list("entities", [])
        + tag_compound(
            "palette",
            tag_compound(
                "default",
                tag_compound_list("block_palette", [palette_entry(block) for block in palette])
                + tag_compound("block_position_data", b""),
            ),
        )
    )
    root = (
        b"\x0a\x00\x00"
        + tag_int("format_version", 1)
        + tag_int_list("size", [size_x, size_y, size_z])
        + tag_compound("structure", structure)
        + tag_int_list("structure_world_origin", [0, 0, 0])
        + b"\x00"
    )
    path.write_bytes(root)
    return occupied, len(root)


def read_name(data: bytes, offset: int) -> tuple[str, int]:
    length = struct.unpack_from("<H", data, offset)[0]
    offset += 2
    return data[offset : offset + length].decode("utf-8"), offset + length


def read_payload(data: bytes, offset: int, kind: int) -> tuple[object, int]:
    if kind == 1:
        return struct.unpack_from("<b", data, offset)[0], offset + 1
    if kind == 3:
        return struct.unpack_from("<i", data, offset)[0], offset + 4
    if kind == 8:
        return read_name(data, offset)
    if kind == 9:
        child_kind = data[offset]
        length = struct.unpack_from("<i", data, offset + 1)[0]
        offset += 5
        values = []
        for _ in range(length):
            value, offset = read_payload(data, offset, child_kind)
            values.append(value)
        return values, offset
    if kind == 10:
        values = {}
        while data[offset] != 0:
            child_kind = data[offset]
            child_name, offset = read_name(data, offset + 1)
            values[child_name], offset = read_payload(data, offset, child_kind)
        return values, offset + 1
    raise ValueError(f"unsupported NBT tag {kind}")


def validate_nbt(
    path: Path,
    expected_size: tuple[int, int, int],
    x0: int,
    z0: int,
) -> int:
    data = path.read_bytes()
    if data[:3] != b"\x0a\x00\x00":
        raise ValueError(f"{path.name}: invalid root compound")
    root, end = read_payload(data, 3, 10)
    if end != len(data):
        raise ValueError(f"{path.name}: parser ended at {end} of {len(data)} bytes")
    if not isinstance(root, dict) or root.get("format_version") != 1:
        raise ValueError(f"{path.name}: invalid format version")
    actual = tuple(root.get("size", []))
    if actual != expected_size or root.get("structure_world_origin") != [0, 0, 0]:
        raise ValueError(f"{path.name}: unexpected size or world origin")
    if expected_size[0] > 64 or expected_size[1] > 257 or expected_size[2] > 64:
        raise ValueError(f"{path.name}: dimensions exceed Bedrock structure limits")
    structure = root.get("structure")
    if not isinstance(structure, dict) or structure.get("entities") != []:
        raise ValueError(f"{path.name}: invalid structure compound or entity list")
    layers = structure.get("block_indices")
    volume = math.prod(expected_size)
    if not isinstance(layers, list) or len(layers) != 2 or any(len(layer) != volume for layer in layers):
        raise ValueError(f"{path.name}: invalid block-index layer lengths")
    if any(value != -1 for value in layers[1]):
        raise ValueError(f"{path.name}: unexpected secondary-layer block")
    default = structure.get("palette", {}).get("default", {})
    palette_data = default.get("block_palette")
    if not isinstance(palette_data, list) or default.get("block_position_data") != {}:
        raise ValueError(f"{path.name}: invalid default palette")
    palette = []
    for entry in palette_data:
        name = entry.get("name")
        states = entry.get("states")
        if not isinstance(name, str) or not name.startswith("minecraft:") or not isinstance(states, dict):
            raise ValueError(f"{path.name}: invalid palette entry")
        if entry.get("version") != BLOCK_VERSION:
            raise ValueError(f"{path.name}: unexpected block version")
        palette.append(Block(name, tuple(sorted(states.items()))))
    if any(value < -1 or value >= len(palette) for value in layers[0]):
        raise ValueError(f"{path.name}: invalid primary-layer palette index")
    size_x, size_y, size_z = expected_size
    decoded = {}
    for index, palette_id in enumerate(layers[0]):
        if palette_id == -1:
            continue
        x = index // (size_y * size_z)
        remainder = index % (size_y * size_z)
        y, z = divmod(remainder, size_z)
        decoded[(x0 + x, y, z0 + z)] = palette[palette_id]
    expected = {
        point: block
        for point, block in voxels.items()
        if x0 <= point[0] < x0 + size_x and z0 <= point[2] < z0 + size_z
    }
    if decoded != expected:
        raise ValueError(f"{path.name}: decoded voxel/material map differs from source")
    return len(decoded)


def validate_rotations(
    chunks: list[tuple[int, int, int, int]],
) -> None:
    expected_maps = {
        0: {(x, y, z): block for (x, y, z), block in voxels.items()},
        90: {(-z, y, x): block for (x, y, z), block in voxels.items()},
        180: {(-x, y, -z): block for (x, y, z), block in voxels.items()},
        270: {(z, y, -x): block for (x, y, z), block in voxels.items()},
    }
    actual_maps: dict[int, dict[tuple[int, int, int], Block]] = {angle: {} for angle in expected_maps}
    for x0, x1, z0, z1 in chunks:
        size_x, size_z = x1 - x0 + 1, z1 - z0 + 1
        for (x, y, z), block in voxels.items():
            if not (x0 <= x <= x1 and z0 <= z <= z1):
                continue
            u, v = x - x0, z - z0
            transformed = {
                0: (x0 + u, y, z0 + v),
                90: (-(z0 + size_z - 1) + (size_z - 1 - v), y, x0 + u),
                180: (-(x0 + size_x - 1) + (size_x - 1 - u), y, -(z0 + size_z - 1) + (size_z - 1 - v)),
                270: (z0 + v, y, -(x0 + size_x - 1) + (size_x - 1 - u)),
            }
            for angle, point in transformed.items():
                if point in actual_maps[angle]:
                    raise ValueError(f"rotation {angle} overlaps at {point}")
                actual_maps[angle][point] = block
    for angle in expected_maps:
        if actual_maps[angle] != expected_maps[angle]:
            raise ValueError(f"rotation {angle} does not reproduce the complete voxel/material map")


def compressed_command_count(order: tuple[int, int, int]) -> int:
    remaining = set(voxels)
    commands = 0
    sorted_points = sorted(remaining, key=lambda point: tuple(point[axis] for axis in order))
    for start in sorted_points:
        if start not in remaining:
            continue
        block = voxels[start]
        lo = list(start)
        hi = list(start)
        for axis in order:
            while True:
                candidate = hi[axis] + 1
                test_hi = hi.copy()
                test_hi[axis] = candidate
                points = itertools.product(*(range(lo[i], test_hi[i] + 1) for i in range(3)))
                if all(point in remaining and voxels[point] == block for point in points):
                    hi[axis] = candidate
                else:
                    break
        for point in itertools.product(*(range(lo[i], hi[i] + 1) for i in range(3))):
            remaining.remove(point)
        commands += 1
    return commands


def validate_functions(
    chunks: list[tuple[int, int, int, int]],
    best_compression: int,
) -> None:
    function_dir = ROOT / "src" / "functions"
    public = function_dir / f"{BASE_NAME}.mcfunction"
    loaded_callback = function_dir / f"_{BASE_NAME}_tickingarea_loaded.mcfunction"
    cleanup_callback = function_dir / f"_{BASE_NAME}_remove_tickingarea.mcfunction"
    expected_counts = {public: 34, loaded_callback: 1, cleanup_callback: 1}
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
    if f"# Six sparse native structures preserve {len(voxels):,} occupied voxels" not in public_text:
        raise ValueError("public loader voxel count is stale")
    if f"# Best tested exact gap-preserving cuboid compression: {best_compression:,} commands" not in public_text:
        raise ValueError("public loader compression count is stale")
    expected_preload = {
        f"schedule on_area_loaded clear function _{BASE_NAME}_tickingarea_loaded",
        "tickingarea remove skyline_cyclone",
        "tickingarea add ^-75 ^0 ^24 ^75 ^0 ^142 skyline_cyclone true",
        f"schedule on_area_loaded add tickingarea skyline_cyclone _{BASE_NAME}_tickingarea_loaded",
    }
    if not expected_preload.issubset(set(public_text.splitlines())):
        raise ValueError("public loader is missing part of the required ticking-area lifecycle")
    pattern = re.compile(
        r"^execute if entity @s\[[^]]+\] run structure load "
        r"ai_minecraft_builds:([^ ]+) \^(-?\d+) \^(-?\d+) \^(-?\d+) "
        r"(0_degrees|90_degrees|180_degrees|270_degrees) none$"
    )
    actual_loads = Counter()
    for line in public_text.splitlines():
        if " run structure load " not in line:
            continue
        match = pattern.fullmatch(line)
        if match is None:
            raise ValueError(f"malformed structure-load command: {line}")
        asset, x, y, z, angle = match.groups()
        actual_loads[(asset, int(x), int(y), int(z), angle)] += 1

    expected_loads = Counter()
    for x0, x1, z0, z1 in chunks:
        xi = 1 + [(-75, -12), (-11, 52), (53, 75)].index((x0, x1))
        zi = 1 + [(24, 87), (88, 142)].index((z0, z1))
        asset = f"{BASE_NAME}_x{xi}_z{zi}"
        size_x, size_z = x1 - x0 + 1, z1 - z0 + 1
        expected_loads[(asset, x0, -1, z0, "0_degrees")] += 1
        expected_loads[(asset, x0, -1, z0 + size_z - 1, "90_degrees")] += 1
        expected_loads[(asset, x0 + size_x - 1, -1, z0 + size_z - 1, "180_degrees")] += 2
        expected_loads[(asset, x0 + size_x - 1, -1, z0, "270_degrees")] += 1
    if actual_loads != expected_loads:
        raise ValueError("loader structure identifiers, anchors, rotations, or facing counts differ from expected")

    if loaded_callback.read_text(encoding="utf-8").splitlines()[-1] != (
        f"schedule delay add _{BASE_NAME}_remove_tickingarea 100 replace"
    ):
        raise ValueError("loaded callback does not schedule the matching cleanup function")
    if cleanup_callback.read_text(encoding="utf-8").splitlines()[-1] != "tickingarea remove skyline_cyclone":
        raise ValueError("cleanup callback removes the wrong ticking area")

    manifest = json.loads((ROOT / "src" / "manifest.json").read_text(encoding="utf-8"))
    if manifest["header"]["version"] != [1, 0, 12] or manifest["modules"][0]["version"] != [1, 0, 12]:
        raise ValueError("manifest header/module versions are not synchronized at 1.0.12")


def main() -> None:
    OUTPUT.mkdir(parents=True, exist_ok=True)
    path = build_track_path()
    for i, point in enumerate(path):
        next_point = path[(i + 1) % len(path)]
        if abs(point[0] - next_point[0]) + abs(point[1] - next_point[1]) != 1:
            raise ValueError(f"disconnected track between {i} and {(i + 1) % len(path)}")
        if abs(point[2] - next_point[2]) > 1:
            raise ValueError(f"track rises too quickly between {i} and {(i + 1) % len(path)}")

    add_plaza()
    add_entrance()
    add_station()
    add_scenery()
    add_track_and_supports(path)
    for x, z, bed_y in path:
        for clearance_y in (bed_y + 2, bed_y + 3):
            if (x, clearance_y, z) in voxels:
                raise ValueError(f"track clearance is obstructed at {(x, clearance_y, z)}")

    max_y = max(y for _, y, _ in voxels)
    x_chunks = [(-75, -12), (-11, 52), (53, 75)]
    z_chunks = [(24, 87), (88, 142)]
    generated: list[tuple[str, tuple[int, int, int], int, int]] = []
    chunk_specs: list[tuple[int, int, int, int]] = []
    occupied_sum = 0
    for zi, (z0, z1) in enumerate(z_chunks, 1):
        for xi, (x0, x1) in enumerate(x_chunks, 1):
            name = f"{BASE_NAME}_x{xi}_z{zi}.mcstructure"
            occupied, byte_count = write_structure(OUTPUT / name, x0, x1, z0, z1, max_y)
            expected_size = (x1 - x0 + 1, max_y + 1, z1 - z0 + 1)
            decoded_count = validate_nbt(OUTPUT / name, expected_size, x0, z0)
            if decoded_count != occupied:
                raise ValueError(f"{name}: decoded occupancy {decoded_count} != generated occupancy {occupied}")
            occupied_sum += occupied
            generated.append((name, expected_size, occupied, byte_count))
            chunk_specs.append((x0, x1, z0, z1))
    if occupied_sum != len(voxels):
        raise ValueError(f"chunk occupancy {occupied_sum} != source voxel count {len(voxels)}")
    validate_rotations(chunk_specs)

    compression = {order: compressed_command_count(order) for order in itertools.permutations(range(3))}
    best_order, best_count = min(compression.items(), key=lambda item: item[1])
    if best_count <= 10_000:
        raise ValueError(f"build compresses to {best_count} commands; structure bypass is not justified")
    validate_functions(chunk_specs, best_count)

    materials = Counter(block.name for block in voxels.values())
    print(f"track_blocks={len(path)}")
    print(f"voxels={len(voxels)}")
    print(f"bounds=({X_MIN},0,{Z_MIN})..({X_MAX},{max_y},{Z_MAX})")
    print(f"dimensions={X_MAX-X_MIN+1}x{max_y+1}x{Z_MAX-Z_MIN+1}")
    print(f"best_tested_compression={best_count} order={best_order}")
    print("materials=" + ",".join(f"{name}:{count}" for name, count in sorted(materials.items())))
    for name, size, occupied, byte_count in generated:
        print(f"{name}: size={size} occupied={occupied} bytes={byte_count}")


if __name__ == "__main__":
    main()
