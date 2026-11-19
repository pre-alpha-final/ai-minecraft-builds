#!/usr/bin/env python3
"""Generate and check Glacier Run's Bedrock structures, functions, and maps."""

import argparse
from collections import Counter, deque
from itertools import permutations
import json
from math import cos, pi, sin
from pathlib import Path
import struct

import numpy as np

import generate_skyline_cyclone as nbt
from generate_tidal_kingdom import compressed_count, verify_catalog
import glacier_run_geometry as g
import glacier_run_loading as loading
from tidal_kingdom_loading import int_list_payload

ROOT = Path(__file__).resolve().parents[1]
DOCS = ROOT / 'docs/glacier_run'
ASSETS = ROOT / 'src/structures/ai_minecraft_builds'
TURNS = {0: lambda x,z: (x,z), 90: lambda x,z: (-z,x),
         180: lambda x,z: (-x,-z), 270: lambda x,z: (z,-x)}


def write(path, data, check):
    if check:
        assert path.read_bytes() == data, f'out of date: {path}'
    else:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)


def walking(park):
    air = park.material('air')
    clear = (park.a < 0) | (park.a == air)
    blocked = [i for i, b in enumerate(park.blocks) if b.name.endswith(('_fence', '_rail', ':rail'))]
    floor = ~clear[:,:-2,:] & ~np.isin(park.a[:,:-2,:], blocked)
    floor &= clear[:,1:-1,:] & clear[:,2:,:]
    surfaces = {}
    for ix,iy,iz in zip(*np.nonzero(floor)):
        b = park.blocks[park.a[ix,iy,iz]]
        half = 1 if b.name == 'minecraft:spruce_slab' else 2
        surfaces.setdefault((int(ix)+g.X0,int(iz)+g.Z0),[]).append(2*(int(iy)+g.Y0)+half)
    start = (0, g.Z0, 0)
    queue = deque([start])
    visited = {start}
    while queue:
        x,z,h = queue.popleft()
        for xx,zz in ((x-1,z),(x+1,z),(x,z-1),(x,z+1)):
            for hh in surfaces.get((xx,zz),()):
                cell = (xx,zz,hh)
                if -2 <= hh-h <= 1 and cell not in visited:
                    visited.add(cell)
                    queue.append(cell)
    goals = [(g.BOARD[0], g.BOARD[2], 0), (0, 40, 8), (2, 57, 0), (105, 187, 0),
             (-15, 52, 0), (16, 52, 0), (34, 52, 0), (-78, 42, 0), (22, 34, 0)]
    goals += [(x,z,0) for x,z in g.CAVE_WALK]
    missing = [p for p in goals if p not in visited]
    assert not missing, f'no continuous guest path to {missing}'
    return len(visited)


def validate_rides(park, path, course, curbs, trees):
    air = park.material('air')
    coords = {(x,y,z): i for i,(x,z,y) in enumerate(path)}
    assert len(coords) == len(path)
    climb, drop, grade = [], [], 0
    curves = 0
    for i, (x,z,y) in enumerate(path):
        nx,nz,ny = path[(i+1) % len(path)]
        assert abs(nx-x)+abs(nz-z) == 1 and abs(ny-y) <= 1
        rail, curve = nbt.rail_state(path,i)
        assert park.blocks[park.get(x,y,z)] == rail
        assert park.get(x,y-1,z) == park.material('spruce_planks' if curve else 'redstone_block')
        curves += curve
        for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)):
            for dy in (-1,0,1):
                other = coords.get((x+dx,y+dy,z+dz))
                assert other is None or other in ((i-1)%len(path), (i+1)%len(path)), (i, other)
        for dx in (-1,0,1):
            for dz in (-1,0,1):
                for dy in (1,2):
                    p = (x+dx,y+dy,z+dz)
                    assert p in coords or park.get(*p) == air, ('rider clearance', (x,y,z), p)
        dy = ny-y
        if grade and dy*grade <= 0:
            (climb if grade > 0 else drop).append(abs(grade))
            grade = 0
        grade += dy
    assert grade == 0, 'choose a flat start when measuring climbs and drops'
    state_turn = {0:1,1:0,2:5,5:3,3:4,4:2,6:7,7:8,8:9,9:6}
    for angle, turn in TURNS.items():
        world = [(*turn(x,z),y) for x,z,y in path]
        for i,(x,z,y) in enumerate(path):
            rail = park.blocks[park.get(x,y,z)]
            state = dict(rail.states)['rail_direction']
            for _ in range(angle//90):
                state = state_turn[state]
            assert state == dict(nbt.rail_state(world,i)[0].states)['rail_direction']
    assert all(park.get(x,-1,z) == park.material('blue_ice') for x,z in course)
    assert all(park.get(x,0,z) == park.material('light_blue_concrete') for x,z in curbs)
    assert all(park.get(x,y,z) == air for x,z in course for y in (0,1,2,3))
    # Verify an uninterrupted lap in a three-block-wide envelope including
    # the diagonal corner transitions and both passes beneath the trestle.
    for i in range(720):
        angle = 2*pi*i/720
        x,z = round(2+53*cos(angle)),round(93+30*sin(angle))
        assert all((x+dx,z+dz) in course for dx in (-1,0,1) for dz in (-1,0,1)), (x,z)
    under = [(x,z,y) for x,z,y in path if (x,z) in course]
    assert len(under) >= 8 and min(y for _,_,y in under) >= 5
    assert all(park.get(-32,y+5,z) in (park.material('packed_ice'),park.material('sea_lantern'))
               for x,z,y in path if x == -32 and 135 <= z <= 155)
    return dict(rails=len(path), curves=curves, track_y=[min(y for _,_,y in path),max(y for _,_,y in path)],
                major_climbs=[h for h in climb if h >= 8], major_drops=[h for h in drop if h >= 8],
                boat_lane_blocks=len(course), boat_underpass_min_rail_y=min(y for _,_,y in under),
                spruce_trees=trees, walkable_surfaces_reached=walking(park))


def structure_assets(park, check):
    air = park.material('air')
    known_samples = {(g.BOARD[0], 0, 40), (2, -1, 63), (89, -1, 151), (31, 84, 188)}
    assets = []
    total = 0
    for xi,x0 in enumerate(range(g.X0,g.X1+1,64),1):
        for zi,z0 in enumerate(range(g.Z0,g.Z1+1,64),1):
            x1,z1 = min(x0+63,g.X1),min(z0+63,g.Z1)
            src = park.a[x0-g.X0:x1-g.X0+1,:,z0-g.Z0:z1-g.Z0+1]
            sy = int(np.nonzero(np.any(src >= 0,axis=(0,2)))[0].max())+1
            src = src[:,:sy,:]
            sx,_,sz = src.shape
            y1 = g.Y0+sy-1
            entries = sorted(int(i) for i in np.unique(src) if i >= 0)
            table = np.full(len(park.blocks)+1,-1,dtype=np.int32)
            table[entries] = np.arange(len(entries))
            primary = table[src]
            layers = (nbt.tag_header(9,'block_indices')+b'\x09'+struct.pack('<i',2) +
                      int_list_payload(primary)+int_list_payload(np.full(src.shape,-1,dtype=np.int32)))
            palette = [nbt.palette_entry(park.blocks[i]) for i in entries]
            default = nbt.tag_compound_list('block_palette',palette)+nbt.tag_compound('block_position_data',b'')
            payload = layers+nbt.tag_compound_list('entities',[])+nbt.tag_compound('palette',nbt.tag_compound('default',default))
            encoded = (b'\x0a\x00\x00'+nbt.tag_int('format_version',1)+nbt.tag_int_list('size',list(src.shape))+
                       nbt.tag_compound('structure',payload)+nbt.tag_int_list('structure_world_origin',[0,0,0])+b'\x00')
            decoded,end = nbt.read_payload(encoded,3,10)
            assert end == len(encoded) and decoded['size'] == list(src.shape) and decoded['format_version'] == 1
            assert decoded['structure_world_origin'] == [0,0,0] and sx <= 64 and sy <= 257 and sz <= 64
            region = decoded['structure']
            a,b = region['block_indices']
            assert len(a) == len(b) == src.size and set(b) == {-1}
            assert min(a) >= -1 and max(a) < len(entries)
            inversion = np.asarray(entries+[-1])
            assert np.array_equal(inversion[a].reshape(src.shape),src)
            assert region['entities'] == [] and region['palette']['default']['block_position_data'] == {}
            assert region['palette']['default']['block_palette'] == [
                dict(name=park.blocks[i].name, states=dict(park.blocks[i].states), version=nbt.BLOCK_VERSION)
                for i in entries
            ]
            samples = {p for p in known_samples if x0 <= p[0] <= x1 and z0 <= p[2] <= z1}
            candidates = np.argwhere((src != -1) & (src != air))
            # A discriminating sample from the footprint, plus one high on
            # the terrain or scenery where available. Skip the stone base.
            surface = candidates[candidates[:,1] > 0]
            for u,h,v in (surface[len(surface)//2], surface[np.argmax(surface[:,1])]):
                samples.add((int(u)+x0,int(h)+g.Y0,int(v)+z0))
            name = f'{loading.NAME}_x{xi}_z{zi}'
            count = int(np.count_nonzero(src >= 0))
            asset = dict(name=name,low=[x0,g.Y0,z0],high=[x1,y1,z1],size=list(src.shape),written_cells=count,
                         samples=[dict(position=list(p),block=park.blocks[park.get(*p)].name) for p in sorted(samples)])
            u,_,v = np.nonzero(src >= 0)
            for angle,turn in TURNS.items():
                ax,_,az = loading.anchor(asset,angle)
                rx,rz = ((u,v), (sz-1-v,u), (sx-1-u,sz-1-v), (v,sx-1-u))[angle//90]
                wx,wz = turn(ax,az)
                ex,ez = turn(x0+u,z0+v)
                assert np.array_equal(wx+rx,ex) and np.array_equal(wz+rz,ez), (name, angle)
            total += count
            assets.append(asset)
            write(ASSETS/f'{name}.mcstructure',encoded,check)
    assert total == np.count_nonzero(park.a >= 0)
    return assets


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true', help='compare generated bytes to the files in the repository')
    args = parser.parse_args()
    park,path,course,curbs,trees = g.build()
    metrics = validate_rides(park,path,course,curbs,trees)
    metrics['verified_block_variants'] = verify_catalog(park)
    compression = min(compressed_count(park,axes) for axes in permutations(range(3)))
    assert compression+5 > 10000
    materials = Counter()
    for i,count in zip(*np.unique(park.a[park.a >= 0],return_counts=True)):
        materials[park.blocks[i].name] += int(count)
    air = materials.pop('minecraft:air')
    nbt.BLOCK_VERSION = 18_161_159
    assets = structure_assets(park,args.check)
    ymax = max(a['high'][1] for a in assets)
    metrics.update(footprint=[g.X1-g.X0+1,g.Z1-g.Z0+1],relative_y=[g.Y0,ymax],
                   feet_y=[-64-g.Y0,319-ymax],non_air_blocks=sum(materials.values()),explicit_air=air,
                   exact_cuboid_commands=compression,materials=dict(sorted(materials.items())),structures=assets)
    for name,text in loading.functions(metrics).items():
        assert not text.endswith('\n\n') and all(line == line.rstrip() for line in text.splitlines())
        assert all(not line.startswith('/') for line in text.splitlines())
        write(ROOT/'src/functions'/f'{name}.mcfunction',text.encode(),args.check)
    write(DOCS/'metrics.json',(json.dumps(metrics,indent=2)+'\n').encode(),args.check)
    if not args.check:
        from glacier_run_preview import render
        render(park,path,DOCS)
    print(json.dumps({k:v for k,v in metrics.items() if k not in ('materials','structures')},indent=2))


if __name__ == '__main__':
    main()
