#!/usr/bin/env python3
"""Generate a preloaded, theme-first Bedrock haunted-house minecart circuit.

The route frames the estate rather than filling the plot with parallel rails.
Run --check for deterministic source validation; --verify-bedrock also checks
every block and explicit state against Mojang's version-pinned vanilla catalog.
"""

from __future__ import annotations

import argparse
from collections import Counter, deque
from itertools import product
import json
from pathlib import Path
import re
import urllib.request

import haunted_coaster_geometry as geo
from haunted_coaster_preview import previews
from haunted_coaster_loading import loader, validate_loader, structure_assets
import cardinal_snap as snap
import generate_skyline_cyclone as nbt
from generate_skyline_cyclone import rail_state

ROOT = Path(__file__).resolve().parents[1]
NAME = "theme_park_haunted_house_roller_coaster"
DOCS = ROOT / "docs" / "haunted_house_coaster"
BOUNDS = geo.BOUNDS
CATALOG = "https://raw.githubusercontent.com/Mojang/bedrock-samples/v1.21.50.7/metadata/vanilladata_modules/mojang-blocks.json"
# Caret X points LEFT: these transforms map local coordinates to world X/Z.
FACINGS = (
    ("if", "@s[rym=-45,ry=45]", lambda x, z: (x, z)),
    ("if", "@s[rym=45,ry=135]", lambda x, z: (-z, x)),
    ("unless", "@s[rym=-135,ry=135]", lambda x, z: (-x, -z)),
    ("if", "@s[rym=-135,ry=-45]", lambda x, z: (z, -x)),
)


route = geo.route


class Build:
    def __init__(self):
        self.lines = []
        self.cells = {}
        self.max_fill = 0

    def section(self, name):
        self.lines.extend(("", f"# === {name.upper()} ==="))

    def box(self, x0, y0, z0, x1, y1, z1, material):
        assert x0 <= x1 and y0 <= y1 and z0 <= z1
        assert BOUNDS[0] <= x0 <= x1 <= BOUNDS[3]
        assert BOUNDS[1] <= y0 <= y1 <= BOUNDS[4]
        assert BOUNDS[2] <= z0 <= z1 <= BOUNDS[5]
        volume = (x1-x0+1) * (y1-y0+1) * (z1-z0+1)
        if volume > 32768:
            lo, hi = [x0,y0,z0], [x1,y1,z1]
            axis = max(range(3), key=lambda k: hi[k]-lo[k])
            mid = (lo[axis]+hi[axis])//2
            left, right = hi.copy(), lo.copy()
            left[axis], right[axis] = mid, mid+1
            self.box(*lo,*left,material)
            self.box(*right,*hi,material)
            return
        self.max_fill = max(self.max_fill, volume)
        coords = f"^{x0} ^{y0} ^{z0}"
        if volume == 1:
            self.lines.append(f"setblock {coords} minecraft:{material}")
        else:
            self.lines.append(f"fill {coords} ^{x1} ^{y1} ^{z1} minecraft:{material}")
        for p in product(range(x0, x1+1), range(y0, y1+1), range(z0, z1+1)):
            self.cells[p] = material

    def put(self, x, y, z, material):
        self.box(x, y, z, x, y, z, material)


def scenery(b):
    geo.build_estate(b)


def tracks(b, path):
    beds = {(x, y, z) for x, z, y in path}
    rails = {(x, y+1, z) for x, z, y in path}
    corridor = {(x+dx, y+dy, z+dz) for x, z, y in path
                for dx, dz in product((-1, 0, 1), repeat=2) for dy in range(2, 5)}
    corridor.difference_update(beds | rails)
    b.section("Supported track bed and stone trestles")
    for i, (x, z, y) in enumerate(path):
        if i % 10 == 0 and y > 3:
            b.box(x, 0, z, x, y-1, z, "polished_blackstone_bricks")
        b.put(x, y, z, "redstone_block")
        px, pz, _ = path[i-1]
        nx, nz, _ = path[(i+1) % len(path)]
        if (px == nx) or (pz == nz):
            dx, dz = (1, 0) if px == nx else (0, 1)
            for sign in (-1, 1):
                p = (x+sign*dx, y, z+sign*dz)
                if p not in corridor and p not in beds and p not in rails:
                    b.put(*p, "polished_blackstone_bricks")
    b.section("Passenger corridor and mansion / crypt portals")
    # Compress only exact vertical runs of reserved air, preserving crossings.
    columns = {}
    for x, y, z in corridor:
        columns.setdefault((x, z), []).append(y)
    for (x, z), ys in sorted(columns.items()):
        start = last = sorted(ys)[0]
        for y in sorted(ys)[1:] + [999]:
            if y == last+1:
                last = y
            else:
                b.box(x, start, z, x, last, z, "air")
                start = last = y
    # Restore beds after clearance; leave all rail placement until the end.
    for x, z, y in path:
        b.put(x, y, z, "redstone_block")
    b.section("Connected rails in travel order with world-oriented block states")
    b.lines.append("# Caret positions rotate with the player; rail_direction is a WORLD-axis state.")
    b.lines.append("# Select exactly one of four explicit orientations after the cardinal snap.")
    world_paths = [[(*turn(a, c), h) for a, c, h in path] for _, _, turn in FACINGS]
    for i, (x, z, y) in enumerate(path):
        for (condition, selector, _), world_path in zip(FACINGS, world_paths):
            rail, _ = rail_state(world_path, i)
            state = ",".join(f'"{k}"={str(v).lower()}' for k, v in rail.states)
            b.lines.append(f"execute {condition} entity {selector} run setblock "
                           f"^{x} ^{y+1} ^{z} {rail.name} [{state}]")
        b.cells[x, y+1, z] = rail_state(path, i)[0].name.removeprefix("minecraft:")
    return corridor


def validate(b, path, corridor):
    assert len(set(path)) == len(path)
    indexes = {p: i for i, p in enumerate(path)}
    curves, rises = 0, []
    for i, (x, z, y) in enumerate(path):
        nx, nz, ny = path[(i+1) % len(path)]
        assert abs(nx-x)+abs(nz-z) == 1 and abs(ny-y) <= 1
        _, corner = rail_state(path, i)
        curves += corner
        dy = ny-y
        if dy and rises and rises[-1]*dy > 0:
            rises[-1] += dy
        elif dy:
            rises.append(dy)
        elif rises and rises[-1]:
            rises.append(0)
        assert b.cells[x, y, z] == "redstone_block"
        for dx, dz in ((1, 0), (-1, 0), (0, 1), (0, -1)):
            for h in (-1, 0, 1):
                j = indexes.get((x+dx, z+dz, y+h))
                assert j is None or j in {(i-1) % len(path), (i+1) % len(path)}, (i, j)
        # Headroom includes side clearance. A slope's own immediate neighbors
        # can occupy the envelope; a distant route section may not.
        for dx, dz in product((-1, 0, 1), repeat=2):
            for h in range(1, 5):
                j = indexes.get((x+dx, z+dz, y+h))
                assert j is None or min((j-i) % len(path), (i-j) % len(path)) <= 2
    assert all(b.cells[p] == "air" for p in corridor)
    # The lagoon must remain contained after all scenery, support and corridor
    # edits. Validate its floor and four horizontal neighbors, not just bounds.
    for (x,y,z),material in b.cells.items():
        if material.startswith("water"):
            for dx,dy,dz in ((0,-1,0),(1,0,0),(-1,0,0),(0,0,1),(0,0,-1)):
                neighbor=b.cells.get((x+dx,y+dy,z+dz),"air")
                assert neighbor!="air", ((x,y,z),"uncontained water")
    # The themed crypt has an intact floor/ceiling around the transverse ride.
    assert all(b.cells.get((x,11,214),"air")!="air" and
               b.cells.get((x,21,214),"air")!="air" for x in range(-55,56))
    # Trace half-block walking surfaces from the entrance to a boarding platform.
    surfaces = {}
    for (x, y, z), material in b.cells.items():
        if material == "air" or material.startswith(("iron_bars", "soul_lantern", "web", "rail", "golden_rail")):
            continue
        half = 1 if '_slab [' in material and '"bottom"' in material else 2
        top = 2*y+half
        if all(b.cells.get((x, h, z), "air") == "air" for h in range((top+1)//2, (top+3)//2+1)):
            surfaces.setdefault((x, z), []).append(top)
    start = (0, 32, 0)
    seen, queue = {start}, deque([start])
    while queue:
        x, z, h = queue.popleft()
        for xx, zz in ((x-1, z), (x+1, z), (x, z-1), (x, z+1)):
            for hh in surfaces.get((xx, zz), ()):
                p = (xx, zz, hh)
                if abs(hh-h) <= 1 and p not in seen:
                    seen.add(p)
                    queue.append(p)
    assert (-125, 63, 18) in seen, "station platform is inaccessible"
    solid = {p: m for p, m in b.cells.items() if m != "air"}
    minimum = [min(p[k] for p in solid) for k in range(3)]
    maximum = [max(p[k] for p in solid) for k in range(3)]
    assert tuple(minimum+maximum) == BOUNDS
    reference=json.loads((ROOT/"docs/pharaohs_curse/metrics.json").read_text())["dimensions"]
    assert dict(width=maximum[0]-minimum[0]+1,depth=maximum[2]-minimum[2]+1,
                height=maximum[1]-minimum[1]+1)==reference
    columns = {}
    for x, z, y in path:
        columns.setdefault((x, z), []).append(y+1)
    crossings = [dict(left=x, forward=z, rail_heights=sorted(ys),
                      separation=min(b-a for a, b in zip(sorted(ys), sorted(ys)[1:])))
                 for (x, z), ys in sorted(columns.items()) if len(ys) > 1]
    assert all(c["separation"] >= 6 for c in crossings)
    return dict(rails=len(path), powered_rails=len(path)-curves, curves=curves,
                major_climbs=sum(v >= 20 for v in rises), major_drops=sum(v <= -20 for v in rises),
                elevation_changes=[v for v in rises if v], largest_drop=-min(rises),
                rail_height=[min(p[2]+1 for p in path), max(p[2]+1 for p in path)],
                bounds=[minimum, maximum], dimensions=[maximum[k]-minimum[k]+1 for k in range(3)],
                non_air_blocks=len(solid), material_counts=dict(sorted(Counter(solid.values()).items())),
                maximum_fill_volume=b.max_fill, walkable_station=True,
                landmarks=[label for label, _, _ in geo.LANDMARKS],
                crossings=crossings)


def direct_source_lines(b, metrics):
    header = [
        "# GEOMETRY REFERENCE - NOT A CALLABLE/PACKAGED FUNCTION",
        "# Raven Manor authored cuboids and exact rail placement for source replay.",
        "# The packaged entry point is the preloaded three-function structure loader.",
        "",
    ]
    lines = snap.transform_public_lines(header+b.lines+[
        "", "# === COMPLETION ===",
        'tellraw @s {"rawtext":[{"text":"Raven Manor built. Follow the right path to the carriage-house station; enter a minecart and push left toward the lift."}]}',
    ])
    count = sum(snap.is_command(line) for line in lines)
    # This is an inspectable geometry reference, never a packaged public function.
    lines = [line.replace("COMMAND_TOTAL", f"{count:,}") for line in lines]
    metrics["direct_placement_commands"] = count
    snap.validate_public_lines(lines)
    return lines


def validate_source(lines, b, path):
    """Parse the ENTIRE final function and replay geometry in all four facings."""
    commands = [line for line in lines if snap.is_command(line)]
    assert tuple(commands[:5]) == snap.SNAP_COMMANDS
    pattern = re.compile(r'(fill|setblock) ((?:\^-?\d+ ){3,6})minecraft:([a-z_]+)(?: (\[.*\]))?')
    inventories = set()
    rail_commands = [[] for _ in FACINGS]
    replay = {}
    for line in commands[5:]:
        assert line.startswith(snap.REANCHOR_PREFIX)
        command = line.removeprefix(snap.REANCHOR_PREFIX)
        if command.startswith("tellraw @s "):
            json.loads(command.removeprefix("tellraw @s "))
            continue
        facing = None
        if command.startswith("execute "):
            for k, (condition, selector, _) in enumerate(FACINGS):
                prefix = f"execute {condition} entity {selector} run "
                if command.startswith(prefix):
                    facing = k
                    command = command.removeprefix(prefix)
                    break
            assert facing is not None, command
        match = pattern.fullmatch(command)
        assert match, command
        verb, coordinates, name, states = match.groups()
        coords = list(map(int, coordinates.replace("^", "").split()))
        assert len(coords) == (3 if verb == "setblock" else 6)
        inventory = (name, states or "")
        inventories.add(inventory)
        if facing is not None:
            rail_commands[facing].append((tuple(coords), name, states))
            if facing != 0:
                continue
        if len(coords) == 3:
            coords += coords
        lo, hi = coords[:3], coords[3:]
        volume = 1
        for k in range(3):
            assert BOUNDS[k] <= lo[k] <= hi[k] <= BOUNDS[k+3]
            volume *= hi[k]-lo[k]+1
        assert volume <= 32768
        material = name + (" "+states if states and name not in ("rail", "golden_rail") else "")
        for p in product(*(range(lo[k], hi[k]+1) for k in range(3))):
            replay[p] = material
    assert replay == b.cells, "emitted commands differ from validated model"
    for facing, (_, _, turn) in enumerate(FACINGS):
        world_path = [(*turn(x, z), y) for x, z, y in path]
        assert len(rail_commands[facing]) == len(path)
        for i, (p, name, states) in enumerate(rail_commands[facing]):
            x, z, y = path[i]
            assert p == (x, y+1, z)
            expected, _ = rail_state(world_path, i)
            decoded = json.loads(states.replace("=", ":").replace("[", "{").replace("]", "}"))
            assert expected.name == "minecraft:"+name and dict(expected.states) == decoded
    return inventories


def scene_with_states(b, path):
    cache = {}
    for material in set(b.cells.values()):
        name, _, states = material.partition(" ")
        decoded = json.loads(states.replace("=", ":").replace("[", "{").replace("]", "}")) if states else {}
        if name in ("dark_oak_log", "bone_block"):
            decoded.setdefault("pillar_axis", "y")
        if name == "soul_lantern":
            decoded.setdefault("hanging", False)
        cache[material] = nbt.Block("minecraft:"+name, tuple(sorted(decoded.items())))
    scene = {p:cache[material] for p, material in b.cells.items()}
    for i, (x, z, y) in enumerate(path):
        scene[x, y+1, z] = rail_state(path, i)[0]
    assert len(scene) >= 352*272
    return scene


def verify_catalog(inventories):
    data = json.load(urllib.request.urlopen(CATALOG, timeout=30))
    known = {b["name"]: {s["name"] for s in b["properties"]} for b in data["data_items"]}
    values = {s["name"]: [v["value"] for v in s["values"]] for s in data["block_properties"]}
    for name, states in inventories:
        full = "minecraft:"+name
        assert full in known, full
        decoded = json.loads(states.replace("=", ":").replace("[", "{").replace("]", "}")) if states else {}
        for key, value in decoded.items():
            assert key in known[full] and value in values[key], (full, key, value)


def write(path, text, check):
    output = (text.rstrip()+"\n").encode("utf-8")
    if path.exists():
        old = path.read_bytes()
        assert old.count(b"\r\n") in (0, old.count(b"\n")), path
        if b"\r\n" in old:
            output = output.replace(b"\n", b"\r\n")
    if check:
        assert path.read_bytes() == output, f"stale generated artifact: {path}"
    else:
        path.write_bytes(output)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    parser.add_argument("--verify-bedrock", action="store_true")
    args = parser.parse_args()
    b, path = Build(), route()
    scenery(b)
    corridor = tracks(b, path)
    b.section("Contained ghost lagoon / final liquids")
    b.box(100,1,173,137,1,237,'water ["liquid_depth"=0]')
    metrics = validate(b, path, corridor)
    lines = direct_source_lines(b, metrics)
    inventories = validate_source(lines, b, path)
    scene = scene_with_states(b, path)
    for block in set(scene.values()):
        state_text = "["+",".join(f'"{k}"={json.dumps(v)}' for k, v in block.states)+"]"
        inventories.add((block.name.removeprefix("minecraft:"), state_text))
    if args.verify_bedrock:
        verify_catalog(inventories)
    metrics["air_cells"] = sum(block.name == "minecraft:air" for block in scene.values())
    texts = loader(metrics)
    validate_loader(texts, scene, path)
    metrics["assets"] = structure_assets(scene, args.check)
    metrics["validation"] = dict(continuous_loop=True, supported_and_powered=True,
                                 passenger_clearance=True, no_unintended_junctions=True,
                                 four_cardinal_rail_states=True, complete_command_replay=True,
                                 nbt_roundtrip=True, four_cardinal_voxel_maps=True,
                                 complete_site_preloaded=True, world_height_bounds=True,
                                 required_three_function_lifecycle=True,
                                 contained_lagoon=True, crypt_enclosure=True, pharaoh_physical_scale=True)
    DOCS.mkdir(parents=True, exist_ok=True)
    for filename, text in texts.items():
        write(ROOT / "src" / "functions" / filename, text, args.check)
    write(DOCS / "metrics.json", json.dumps(metrics, indent=2), args.check)
    if not args.check:
        previews(b, path, metrics)
    print(json.dumps({k: v for k, v in metrics.items() if k not in ("material_counts", "landmarks", "assets")}, indent=2))


if __name__ == "__main__":
    main()
