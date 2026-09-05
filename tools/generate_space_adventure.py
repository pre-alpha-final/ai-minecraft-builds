#!/usr/bin/env python3
"""Space Adventure: an authored Bedrock coaster, native assets, and honest voxel previews.

Run from any directory with Python 3.10+ and Pillow:
    python tools/generate_space_adventure.py
    python tools/generate_space_adventure.py --check
    python tools/generate_space_adventure.py --preview-only

Coordinates here are (left, up, forward), except the existing track helper's
(left, forward, track-bed-height). Assets load one block below the player's feet.
No source artwork, generated textures, custom blocks, or experimental features.
"""

from __future__ import annotations

import argparse
import itertools
import json
import math
import re
from collections import Counter, defaultdict
from pathlib import Path

import cardinal_snap
import generate_jungle_leviathan as track_tools
import generate_skyline_cyclone as nbt

ROOT = Path(__file__).resolve().parents[1]
BASE = "theme_park_space_adventure_roller_coaster"
ASSETS = ROOT / "src/structures/ai_minecraft_builds"
FUNCTIONS = ROOT / "src/functions"
DOCS = ROOT / "docs/space_adventure"
X0, X1, Z0, Z1, YMAX = -175, 176, 32, 303, 168
Block = nbt.Block

# Small, deliberately chosen vanilla palette. Colors also drive the voxel preview.
COLORS = {
    "air": (8, 13, 28), "black_concrete": (24, 28, 43),
    "gray_concrete": (66, 75, 91), "light_gray_concrete": (155, 168, 184),
    "white_concrete": (226, 236, 241), "cyan_concrete": (19, 132, 156),
    "light_blue_concrete": (78, 193, 233), "blue_concrete": (48, 62, 160),
    "purple_concrete": (108, 55, 157), "magenta_concrete": (194, 66, 177),
    "orange_concrete": (235, 127, 44), "yellow_concrete": (248, 206, 76),
    "sea_lantern": (175, 251, 246), "end_stone": (199, 200, 143),
    "end_bricks": (209, 207, 161), "amethyst_block": (141, 102, 193),
    "tinted_glass": (65, 64, 88), "light_blue_stained_glass": (121, 193, 224),
    "redstone_block": (162, 38, 37), "rail": (170, 181, 189),
    "golden_rail": (255, 201, 88),
}
B = {name: Block("minecraft:" + name) for name in COLORS}
AIR, BLACK, GRAY, SILVER, WHITE = (B[n] for n in (
    "air", "black_concrete", "gray_concrete", "light_gray_concrete", "white_concrete"))
CYAN, ICE, BLUE, PURPLE, MAGENTA = (B[n] for n in (
    "cyan_concrete", "light_blue_concrete", "blue_concrete", "purple_concrete", "magenta_concrete"))
ORANGE, GOLD, LIGHT, MOON, BRICK, CRYSTAL, GLASS, WINDOW, POWER = (B[n] for n in (
    "orange_concrete", "yellow_concrete", "sea_lantern", "end_stone", "end_bricks",
    "amethyst_block", "tinted_glass", "light_blue_stained_glass", "redstone_block"))
voxels: dict[tuple[int, int, int], Block] = {}

# The open courts are intentional: rocket forecourt, lunar basin, orbital garden.
WAYPOINTS = [
    (-135, 60, 8), (-75, 60, 8), (115, 60, 142),
    (125, 60, 142), (125, 70, 142), (140, 70, 142), (140, 85, 142), (150, 85, 142),
    (150, 215, 24), (150, 240, 24), (140, 240, 24), (140, 260, 24),
    (120, 260, 24), (120, 275, 24), (-105, 275, 100),
    (-125, 275, 100), (-125, 265, 100), (-145, 265, 100), (-145, 245, 100),
    (-155, 245, 100), (-155, 145, 30), (-155, 130, 30),
    (-140, 130, 30), (-140, 115, 30), (-120, 115, 30), (-50, 115, 70),
    (-50, 185, 18), (80, 185, 80), (100, 185, 80), (100, 195, 80),
    (115, 195, 80), (115, 215, 80), (115, 235, 80),
    (-105, 235, 45), (-105, 175, 90), (15, 175, 35),
    (15, 95, 14), (-135, 95, 8),
]
LANDMARKS = [
    ("01  LAUNCH TERMINAL", -107, 53), ("02  ODYSSEY ROCKET", -94, 103),
    ("03  TRANSLUNAR DROP", 153, 160), ("04  SELENE CRATER", 94, 140),
    ("05  AURELIA / RINGED PLANET", 38, 220), ("06  ORBITAL OUTPOST", 112, 223),
    ("07  JUMP GATE", -105, 201), ("08  CRYSTAL GARDEN", -73, 159),
]
# Five is minimal: the footprint can touch 414 chunks at an adverse alignment.
# Three 117/118 x 159 rectangles (99 chunks) and two 176 x 113 (96 chunks).
AREAS = [(f"space_adventure_1{c}", a, b, 32, 190)
         for c, (a, b) in enumerate(((-175, -59), (-58, 58), (59, 176)), 1)] + [
             ("space_adventure_21", -175, 0, 191, 303),
             ("space_adventure_22", 1, 176, 191, 303)]


def put(x: int, y: int, z: int, block: Block) -> None:
    if not (X0 <= x <= X1 and Z0 <= z <= Z1 and 0 <= y <= YMAX):
        raise ValueError(f"out of bounds: {(x, y, z)}")
    voxels[x, y, z] = block


def box(x0, y0, z0, x1, y1, z1, block):
    for x, y, z in itertools.product(range(min(x0, x1), max(x0, x1) + 1),
                                     range(min(y0, y1), max(y0, y1) + 1),
                                     range(min(z0, z1), max(z0, z1) + 1)):
        put(x, y, z, block)


def line(a, b, block, radius=0):
    steps = max(abs(b[i] - a[i]) for i in range(3)) * 2
    for t in range(steps + 1):
        p = tuple(round(a[i] + (b[i] - a[i]) * t / max(1, steps)) for i in range(3))
        box(p[0]-radius, p[1]-radius, p[2]-radius,
            p[0]+radius, p[1]+radius, p[2]+radius, block)


def disk(cx, y, cz, radius, block, inner=0):
    for x in range(-radius, radius+1):
        for z in range(-radius, radius+1):
            if inner**2 <= x*x+z*z <= radius**2:
                put(cx+x, y, cz+z, block)


def sphere(cx, cy, cz, radius, color_fn, thickness=2):
    for x in range(-radius, radius+1):
        for y in range(-radius, radius+1):
            for z in range(-radius, radius+1):
                if (radius-thickness)**2 <= x*x+y*y+z*z <= radius**2:
                    put(cx+x, cy+y, cz+z, color_fn(x, y, z))


def ring(cx, cy, cz, radius, tube, block, plane="xz", tilt=0.0):
    # Supersampled round beams: decorative loops only; rails remain rideable slopes.
    for i in range(math.ceil(2*math.pi*radius*3)):
        a = i/(math.ceil(2*math.pi*radius*3))*math.tau
        u, v = radius*math.cos(a), radius*math.sin(a)
        p = ((cx+u, cy+v*math.sin(tilt), cz+v*math.cos(tilt)) if plane == "xz"
             else (cx, cy+u, cz+v) if plane == "yz" else (cx+u, cy+v, cz))
        q = tuple(round(value) for value in p)
        for dx, dy, dz in itertools.product(range(-tube, tube+1), repeat=3):
            if dx*dx+dy*dy+dz*dz <= tube*tube:
                put(q[0]+dx, q[1]+dy, q[2]+dz, block)


def track_path():
    path = [WAYPOINTS[0]]
    for end in WAYPOINTS[1:]:
        track_tools.add_segment(path, end)
    track_tools.add_segment(path, WAYPOINTS[0], include_final=False)
    return path


def ground():
    # A dark observatory platform, not random checkerboard noise. Large lunar patches
    # and thin circuit traces leave the elevated silhouette legible in daylight.
    for x in range(X0, X1+1):
        for z in range(Z0, Z1+1):
            wave = math.sin(x/29)*5 + math.sin(z/17)*3
            lunar = ((x-94)/65)**2 + ((z-142)/61)**2 < 1
            rock = GRAY if lunar else BLACK
            if lunar and (x+2*z+round(wave)) % 31 < 2:
                rock = SILVER
            put(x, 0, z, rock)
    for x in (X0, X1):
        box(x, 1, Z0, x, 2, Z1, CYAN)
        for z in range(Z0+3, Z1, 12):
            put(x, 3, z, LIGHT)
    for z in (Z0, Z1):
        box(X0, 1, z, X1, 2, z, CYAN)
    box(-6, 1, 32, 6, 1, 80, SILVER)
    box(-138, 1, 76, 6, 1, 84, SILVER)
    box(-5, 1, 32, -5, 1, 76, LIGHT)
    box(5, 1, 32, 5, 1, 84, LIGHT)
    # Open front gate and two luminous navigational pylons.
    box(-6, 2, 32, 6, 4, 33, AIR)
    for x in (-12, 12):
        box(x-2, 1, 35, x+2, 18, 39, WHITE)
        box(x, 3, 34, x, 16, 34, LIGHT)
    box(-12, 18, 35, 12, 20, 39, CYAN)
    for z in range(42, 76, 9):
        line((-2, 2, z+2), (0, 2, z), GOLD)
        line((0, 2, z), (2, 2, z+2), GOLD)


def station():
    # Accessible eight-step approach, two boarding platforms, open rail portals.
    box(-143, 1, 48, -75, 7, 72, GRAY)
    box(-143, 8, 48, -75, 8, 72, WHITE)
    box(-140, 8, 58, -75, 8, 62, BLACK)
    for k in range(8):
        box(-127, 1, 80-k, -120, k+1, 80-k, SILVER)
    for x in range(-139, -75, 12):
        for z in (49, 71):
            box(x, 9, z, x+1, 21, z+1, WHITE)
            box(x, 11, z-1 if z==49 else z+2, x+1, 16, z-1 if z==49 else z+2, LIGHT)
    # Ribbed swept canopy, high enough for a standing passenger.
    for x in range(-145, -73):
        for z in range(46, 75):
            y = 22 + round(5*math.sin((z-46)/28*math.pi))
            put(x, y, z, WHITE if (x+145)%12 < 2 else WINDOW)
    box(-140, 9, 67, -79, 9, 67, GOLD)
    for x in range(-136, -78, 9):
        box(x, 9, 69, x+2, 10, 69, BLUE)
    # Mission-control booths flanking the passenger concourse.
    box(-124, 9, 50, -113, 14, 54, BLUE)
    box(-123, 11, 54, -114, 13, 54, WINDOW)
    box(-122, 10, 55, -115, 10, 55, LIGHT)


def rocket():
    cx, cz = -96, 98
    for y in range(1, 4):
        disk(cx, y, cz, 23, WHITE if y==3 else GRAY)
    disk(cx, 4, cz, 20, CYAN, 18)
    # Fluted exhaust, engine bells, slender white body, dark band and pointed nose.
    for y in range(5, 87):
        radius = (8 if y<65 else max(1, round(8*(87-y)/22)))
        for dx in range(-radius, radius+1):
            for dz in range(-radius, radius+1):
                if (radius-2)**2 <= dx*dx+dz*dz <= radius*radius:
                    material = ORANGE if y<14 else BLUE if 49<=y<=53 else WHITE
                    if y>=65:
                        material = CYAN if abs(dx)<=2 else WHITE
                    put(cx+dx, y, cz+dz, material)
    for dx in (-4, 4):
        for dz in (-4, 4):
            for y in range(5, 11):
                disk(cx+dx, y, cz+dz, 3 if y<8 else 2, BLACK)
            disk(cx+dx, 5, cz+dz, 2, LIGHT)
    for y in range(10, 31):
        reach = max(8, 17-(y-10)//2)
        for side in (-1, 1):
            box(cx+side*8, y, cz-1, cx+side*reach, y, cz+1, CYAN)
            box(cx-1, y, cz+side*8, cx+1, y, cz+side*reach, CYAN)
    for y in (37, 59):
        box(cx-2, y, cz-8, cx+2, y+3, cz-8, WINDOW)
    # Service gantry visibly connects to the rocket; open bracing instead of a slab.
    for x in (-118, -113):
        for z in (88, 94):
            box(x, 1, z, x, 77, z, SILVER)
    for y in range(5, 78, 9):
        box(-118, y, 88, -113, y, 94, GRAY)
        line((-118, y, 88), (-113, min(y+9,77), 88), ORANGE)
    box(-113, 60, 91, -103, 61, 95, SILVER)
    put(cx, 87, cz, LIGHT)


def lunar_basin():
    cx, cz, radius = 92, 139, 43
    for dx in range(-radius, radius+1):
        for dz in range(-radius, radius+1):
            d = math.hypot(dx, dz)
            if d>radius:
                continue
            rim = round(9*math.exp(-((d-34)/5)**2))
            for y in range(1, rim+2):
                block = MOON if y==rim+1 else BRICK
                put(cx+dx, y, cz+dz, block)
    # Satellite dishes and rover in the open crater floor.
    for cx, cz in ((87, 133), (111, 145)):
        box(cx-1, 2, cz-1, cx+1, 13, cz+1, SILVER)
        for dx in range(-10, 11):
            for dz in range(-10, 11):
                r2=dx*dx+dz*dz
                if r2<=100:
                    put(cx+dx, 14+round(r2/24), cz+dz, WHITE if r2>65 else CYAN)
        line((cx, 14, cz), (cx, 23, cz), LIGHT)
    box(67, 3, 143, 73, 5, 151, WHITE)
    box(68, 6, 145, 72, 8, 148, WINDOW)
    for x in (66, 74):
        for z in (144, 150):
            box(x, 2, z, x, 4, z+1, BLACK)
    line((70, 8, 149), (70, 15, 149), SILVER)
    put(70, 15, 149, LIGHT)


def planet_and_outpost():
    cx, cy, cz, radius = 38, 107, 220, 34
    def bands(x,y,z):
        stripe = (y + round(3*math.sin(x/9)+2*math.sin(z/11))) % 25
        return WHITE if stripe<3 else GOLD if stripe<7 else ORANGE if stripe<17 else MAGENTA
    sphere(cx,cy,cz,radius,bands)
    # Broad tilted Saturn rings with a real Cassini gap.
    for r in range(43, 61):
        if r in (50,51,52):
            continue
        ring(cx,cy,cz,r,0, LIGHT if r in (43,49,53,60) else GOLD if r<50 else CYAN,
             tilt=0.38)
    # Orbital station is a separate hub, solar wings, docking tunnel, and mast.
    sphere(113, 65, 218, 16, lambda x,y,z: WINDOW if abs(y)<5 else WHITE)
    ring(113,65,218,19,1,CYAN)
    box(112, 22, 217, 114, 64, 219, SILVER)
    for y in range(26, 62, 8):
        ring(113,y,218,3,0,LIGHT)
    for side in (-1, 1):
        xa, xb = (75,92) if side<0 else (134,151)
        box(xa, 64, 205, xb, 64, 232, BLUE)
        for x in range(xa, xb+1, 5):
            box(x, 65, 205, x, 65, 232, CYAN)
        for z in range(205,233,7):
            box(xa,65,z,xb,65,z,SILVER)
        line((113,64,218), (xa if side<0 else xb,64,218), WHITE)
    # A slender communications needle supplies a tall secondary silhouette.
    for y in range(1,YMAX+1):
        r=3 if y<125 else 1
        disk(-23,y,248,r,WHITE if y%12<10 else CYAN)
    for y,r in ((113,13),(132,9),(149,5)):
        ring(-23,y,248,r,1,LIGHT)
    put(-23,YMAX,248,LIGHT)


def jump_gate_and_garden():
    # Track travels along Z through the circular XY aperture. Its center is open.
    cx, cy, cz = -105, 72, 201
    for radius, tube, material in ((30,2,GRAY),(27,1,MAGENTA),(24,1,LIGHT)):
        ring(cx,cy,cz,radius,tube,material,plane="xy")
    for angle in range(0,360,45):
        a=math.radians(angle)
        x,y=round(cx+30*math.cos(a)),round(cy+30*math.sin(a))
        box(x-2,y-2,cz-3,x+2,y+2,cz+3,WHITE)
        box(x-1,y-1,cz-4,x+1,y+1,cz-4,LIGHT)
    for x in (cx-23,cx+23):
        box(x-2,1,cz-3,x+2,48,cz+3,PURPLE)
        box(x-3,1,cz-5,x+3,4,cz+5,GRAY)
    # Crystal groups make a landscape with generous gaps, not a filled forest.
    crystals = [(-81,156,27,5),(-70,147,39,6),(-62,162,21,4),
                (-88,166,17,4),(-44,215,24,5),(-67,255,19,4),
                (3,255,26,5),(55,96,18,4),(33,128,23,4),
                (-151,208,18,4),(-128,287,14,3)]
    for cx,cz,height,radius in crystals:
        disk(cx,1,cz,radius+5,PURPLE)
        for y in range(2,height+1):
            r=max(0,round(radius*min(1,(height-y)/(height*0.4))))
            for dx in range(-r,r+1):
                for dz in range(-r,r+1):
                    if abs(dx)+abs(dz)<=r:
                        put(cx+dx,y,cz+dz, LIGHT if dx==0 and dz==-r else CRYSTAL if dx<0 else MAGENTA)
    # Three asteroids beside the rear run: physical craters, small mineral seams.
    for cx,cy,cz,r in ((-58,108,281,11),(-9,80,279,8),(-132,61,241,9)):
        sphere(cx,cy,cz,r,lambda x,y,z: SILVER if (x+2*y+z)%13<3 else GRAY, thickness=3)
        for x in range(-3,4):
            for y in range(-3,4):
                if x*x+y*y<10:
                    put(cx+x,cy+y,cz-r,BLACK)


def track_and_supports(path):
    # Reserve rider space BEFORE supports. Explicit air carves the corridor even
    # in an imperfectly cleared world; all other absent structure cells stay void.
    corridor=set()
    beds={(x,y,z) for x,z,y in path}
    rails={(x,y+1,z) for x,z,y in path}
    for x,z,y in path:
        for dx,dz in itertools.product((-1,0,1),repeat=2):
            for dy in range(2,5):
                corridor.add((x+dx,y+dy,z+dz))
    # A rising rail legitimately occupies the lower neighbor's side envelope.
    # Exempt only adjacent route cells; unrelated crossings must remain clear.
    route_index={p:i for i,p in enumerate(path)}
    for x,z,y in path:
        if z==60 and x in (-35,-10,15,40,65,90):
            ring(x,y+5,z,10,1,WHITE,plane="yz")
            ring(x-1,y+5,z,8,0,LIGHT,plane="yz")
    for i,(x,z,y) in enumerate(path):
        for dx,dz in itertools.product((-1,0,1),repeat=2):
            for dy in range(1,5):
                j=route_index.get((x+dx,z+dz,y+dy))
                if j is not None and min((j-i)%len(path),(i-j)%len(path))>2:
                    raise ValueError(f"route crosses passenger clearance at {i}, {j}")
    corridor.difference_update(beds|rails)
    for i,(x,z,y) in enumerate(path):
        rail,corner=nbt.rail_state(path,i)
        px,pz,_=path[i-1]
        nx,nz,_=path[(i+1)%len(path)]
        # Three-wide backbone, cyan running lights, white transverse outriggers.
        perp=(0,1) if nx!=px else (1,0)
        for offset in (-1,0,1):
            p=(x+perp[0]*offset,y,z+perp[1]*offset)
            if p not in corridor:
                put(*p,POWER if offset==0 else CYAN)
        if not corner and i%5==0:
            for side in (-2,2):
                p=(x+perp[0]*side,y-1,z+perp[1]*side)
                if p not in corridor and p not in rails:
                    put(*p,LIGHT if i%10==0 else WHITE)
        if not corner and i%28==0:
            # Widely spaced splayed A-frames replace a forest of vertical poles.
            for side in (-1,1):
                for h in range(1,y):
                    spread=round(2+5*(1-h/max(y,1)))
                    sx,sz=x+perp[0]*side*spread,z+perp[1]*side*spread
                    p=(sx,h,sz)
                    if p not in corridor and p not in rails and p not in beds:
                        put(*p,LIGHT if h%24<2 else WHITE if side<0 else GRAY)
                for k in range(-3,4):
                    p=(x+perp[0]*k,y-1,z+perp[1]*k)
                    if p not in corridor and p not in rails and p not in beds:
                        put(*p,WHITE)
    for p in corridor:
        put(*p,AIR)
    # Last writes restore every support block and rail exactly, including crossings.
    for i,(x,z,y) in enumerate(path):
        put(x,y,z,POWER)
        put(x,y+1,z,nbt.rail_state(path,i)[0])
    return corridor


def validate_track(path,corridor):
    if len(set(path))!=len(path):
        raise ValueError("duplicate route cell")
    curves=0
    columns=defaultdict(list)
    for i,(x,z,y) in enumerate(path):
        nx,nz,ny=path[(i+1)%len(path)]
        assert abs(nx-x)+abs(nz-z)==1 and abs(ny-y)<=1, (i,"disconnected track")
        rail,corner=nbt.rail_state(path,i)
        curves+=corner
        assert voxels[x,y+1,z]==rail and voxels[x,y,z]==POWER
        columns[x,z].append(y)
        # Reject side connections to unrelated rails, including slope-level neighbors.
        # A lookup below checks this in linear rather than quadratic time.
    indexes={(x,z,y):i for i,(x,z,y) in enumerate(path)}
    for i,(x,z,y) in enumerate(path):
        for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)):
            for dy in (-1,0,1):
                j=indexes.get((x+dx,z+dz,y+dy))
                assert j is None or j in {(i-1)%len(path),(i+1)%len(path)}, (i,j,"unintended rail junction")
    assert all(voxels[p]==AIR for p in corridor)
    crossings=[(x,z,sorted(ys)) for (x,z),ys in columns.items() if len(ys)>1]
    assert all(b-a>=6 for _,_,ys in crossings for a,b in itertools.pairwise(ys))
    # Meaningful climbs/drops are contiguous elevation changes of at least 20 blocks.
    runs=[]
    for a,b in itertools.pairwise(path+[path[0]]):
        dy=b[2]-a[2]
        if dy and runs and runs[-1]*dy>0:
            runs[-1]+=dy
        elif dy:
            runs.append(dy)
        elif runs and runs[-1]!=0:
            runs.append(0)
    # Walkable station access at one-block step height, with two-block headroom.
    for k in range(8):
        for x in range(-127,-119):
            p=(x,k+1,80-k)
            assert voxels.get(p) not in (None,AIR), (p,"missing station stair")
            assert all(voxels.get((x,k+1+h,80-k),AIR)==AIR for h in (1,2)), (p,"blocked stair")
    return {"rails":len(path),"curves":curves,"powered_rails":len(path)-curves,
            "rail_height_above_player":[min(y for x,z,y in path),max(y for x,z,y in path)],
            "major_climbs":sum(v>=20 for v in runs),"major_drops":sum(v<=-20 for v in runs),
            "crossings":[{"left":x,"forward":z,"rail_heights":ys} for x,z,ys in crossings]}


def specs():
    return [(xi,zi,x,min(x+63,X1),z,min(z+63,Z1))
            for zi,z in enumerate(range(Z0,Z1+1,64),1)
            for xi,x in enumerate(range(X0,X1+1,64),1)]


def compression_counts():
    # Exact same-material runs in each axis; no cavities are filled to save commands.
    result={}
    for axis in range(3):
        count=0
        for p,block in voxels.items():
            before=list(p)
            before[axis]-=1
            if voxels.get(tuple(before))!=block:
                count+=1
        result["xyz"[axis]]=count
    return result


def function_texts(metrics):
    loaded=f"_{BASE}_tickingarea_loaded"
    cleanup=f"_{BASE}_remove_tickingarea"
    commands=[f"schedule on_area_loaded clear function {loaded}",
              f"schedule delay clear {cleanup}"]
    commands += [f"tickingarea remove {name}" for name,*_ in AREAS]
    commands += [f"tickingarea add ^{a} ^0 ^{z} ^{b} ^0 ^{w} {name} true" for name,a,b,z,w in AREAS]
    commands += [f"schedule on_area_loaded add tickingarea {name} {loaded}" for name,*_ in AREAS]
    groups=[("SOUTH","@s[rym=-44,ry=44]",0),("WEST","@s[rym=45,ry=134]",90),
            ("NORTH","@s[rym=135,ry=180]",180),("NORTH NEGATIVE YAW","@s[rym=-180,ry=-135]",180),
            ("EAST","@s[rym=-134,ry=-45]",270)]
    for label,selector,angle in groups:
        commands += ["",f"# === {label}: NATIVE STRUCTURES ==="]
        for xi,zi,x0,x1,z0,z1 in specs():
            x=x1 if angle in (180,270) else x0
            z=z1 if angle in (90,180) else z0
            commands.append(f"execute if entity {selector} run structure load ai_minecraft_builds:{BASE}_x{xi}_z{zi} ^{x} ^-1 ^{z} {angle}_degrees none")
    count=sum(cardinal_snap.is_command(s) for s in commands)+5
    header=[
        "# SPACE ADVENTURE / ODYSSEY - Minecraft Bedrock Edition roller coaster",
        f"# Run: /function {BASE}",
        "# Stand at ground level, face a cardinal direction, and look horizontally. Run as a player.",
        "# Origin: front-center observation point; nearest blocks are 32 blocks ahead.",
        "# Size: 352 wide x 272 deep x 169 high. Bounds: ^-175 ^-1 ^32 through ^176 ^167 ^303.",
        "# Use a clear flat Overworld site; player's feet must be at Y -63 through 152 for world-height clearance.",
        "# Functional continuous minecart circuit; all space scenery is static (no moving spacecraft or loops).",
        "# Follow the lit entrance path to the terminal stairs. Board at ^-120 ^8 ^60; push toward the long lift (+left).",
        f"# {metrics['rails']:,} rails; {metrics['curves']} flat curves; {metrics['major_climbs']} major climbs and {metrics['major_drops']} major drops.",
        "# Rail heights: 8 through 142 above player origin. Three-block-wide, three-block-high passenger clearance.",
        "# Scenes: launch terminal, Odyssey rocket, Selene crater, Aurelia's rings, orbital outpost, jump gate, crystals.",
        f"# {metrics['solid_blocks']:,} non-air blocks + {metrics['air_cells']:,} explicit clearance cells in {len(specs())} native structures.",
        f"# Smallest exact axis-run encoding: {min(metrics['axis_run_commands'].values()):,} commands; native assets avoid the 10,000-command limit.",
        f"# Public wrapper: {count} commands (including five snap commands); callbacks: 1 + {len(AREAS)}; total: {count+1+len(AREAS)}.",
        "# Palette: concrete in white/gray/black/cyan/blue/purple/magenta/orange/yellow, glass, end stone, amethyst, sea lanterns, redstone, rails.",
        "# WARNING: overwrites a large site. Back up first or use a disposable world. Sparse void cells do not clear existing terrain.",
        "# Five temporary ticking areas, <=99 chunks each. Five of the world's ten slots must be free or loading can fail.",
        "# Cleanup refreshes to 300 ticks after each area loads. Wait for placement and cleanup before rerunning this build.",
        "", "# === CLEAR STALE CALLBACKS AND PRELOAD ALL FIVE RECTANGLES ===",
    ]
    public=cardinal_snap.transform_public_lines(header+commands)
    texts={f"{BASE}.mcfunction":"\n".join(public)+"\n",
           f"{loaded}.mcfunction":f"# INTERNAL CALLBACK - do not run manually. Refresh cleanup after every loaded rectangle.\nschedule delay add {cleanup} 300 replace\n",
           f"{cleanup}.mcfunction":"# INTERNAL CALLBACK - do not run manually. Remove only Space Adventure's temporary areas.\n"+
               "\n".join(f"tickingarea remove {name}" for name,*_ in AREAS)+"\n"}
    metrics.update(public_commands=count,callback_commands=1+len(AREAS),total_commands=count+1+len(AREAS))
    return texts


def validate_functions(texts):
    for name,expected in texts.items():
        data=(FUNCTIONS/name).read_bytes()
        assert data==expected.encode(), f"stale function: {name}"
        assert b"\r" not in data and data.endswith(b"\n") and not data.endswith(b"\n\n")
        lines=data.decode().splitlines()
        assert all(line==line.rstrip() for line in lines)
        executable=[s for s in lines if cardinal_snap.is_command(s)]
        assert len(executable)<=10000
        if not name.startswith("_"):
            cardinal_snap.validate_public_lines(lines)
    # Validate every full command against the authored grammar, not only its verb.
    public=texts[f"{BASE}.mcfunction"].splitlines()
    for cmd in public:
        if not cardinal_snap.is_command(cmd) or cmd in cardinal_snap.SNAP_COMMANDS:
            continue
        cmd=cmd.removeprefix(cardinal_snap.REANCHOR_PREFIX)
        patterns=[
            rf"schedule on_area_loaded clear function _{BASE}_tickingarea_loaded",
            rf"schedule delay clear _{BASE}_remove_tickingarea",
            r"tickingarea remove space_adventure_[12][123]",
            r"tickingarea add \^-?\d+ \^0 \^\d+ \^-?\d+ \^0 \^\d+ space_adventure_[12][123] true",
            rf"schedule on_area_loaded add tickingarea space_adventure_[12][123] _{BASE}_tickingarea_loaded",
            rf"execute if entity @s\[rym=-?\d+,ry=-?\d+\] run structure load ai_minecraft_builds:{BASE}_x[1-6]_z[1-5] \^-?\d+ \^-1 \^\d+ (0|90|180|270)_degrees none",
        ]
        assert any(re.fullmatch(p,cmd) for p in patterns), cmd
    footprint=Counter()
    for name,a,b,z,w in AREAS:
        assert math.ceil((b-a+16)/16)*math.ceil((w-z+16)/16)<=100
        footprint.update(itertools.product(range(a,b+1),range(z,w+1)))
    assert set(footprint.values())=={1}
    assert set(footprint)==set(itertools.product(range(X0,X1+1),range(Z0,Z1+1)))
    manifest=json.loads((ROOT/"src/manifest.json").read_text())
    assert manifest["header"]["version"]==manifest["modules"][0]["version"]


def validate_rotation_rails(path):
    # Unlike a bounds-only check, transform the actual rail endpoints/states too.
    rotations={0:lambda x,z:(x,z),90:lambda x,z:(-z,x),
               180:lambda x,z:(-x,-z),270:lambda x,z:(z,-x)}
    state_turn={0:1,1:0,2:5,5:3,3:4,4:2,6:7,7:8,8:9,9:6}
    for angle,rotate in rotations.items():
        turned=[(*rotate(x,z),y) for x,z,y in path]
        for i in range(len(path)):
            original,_=nbt.rail_state(path,i)
            expected,_=nbt.rail_state(turned,i)
            state=dict(original.states)["rail_direction"]
            for _ in range(angle//90):
                state=state_turn[state]
            assert dict(expected.states)["rail_direction"]==state


def previews(path,metrics):
    from PIL import Image, ImageDraw, ImageFont
    DOCS.mkdir(exist_ok=True,parents=True)
    font_path=Path("C:/Windows/Fonts/consola.ttf")
    def font(size):
        return ImageFont.truetype(str(font_path),size) if font_path.exists() else ImageFont.load_default(size=size)
    # Top-down plot is derived from the final voxel map and the actual closed route.
    im=Image.new("RGB",(1600,1330),(8,13,28)); d=ImageDraw.Draw(im)
    d.text((62,28),"SPACE ADVENTURE",font=font(42),fill=(231,244,255))
    d.text((64,83),"ODYSSEY  /  ROUTE & LANDMARK PLAN",font=font(20),fill=(102,212,231))
    scale=3.7
    def p(x,z): return (round(765-x*scale),round(118+(Z1-z)*scale))
    top={}
    for (x,y,z),block in voxels.items():
        if block==AIR: continue
        if (x,z) not in top or y>top[x,z][0]: top[x,z]=(y,block)
    for (x,z),(y,block) in top.items():
        sx,sy=p(x,z); color=COLORS[block.name.split(":")[1]]
        d.rectangle((sx-2,sy-2,sx+2,sy+2),fill=tuple(round(v*.45) for v in color))
    for i,(x,z,y) in enumerate(path):
        nx,nz,ny=path[(i+1)%len(path)]
        color=(round(75+180*y/142),round(223-58*y/142),round(249-148*y/142))
        d.line((p(x,z),p(nx,nz)),fill=color,width=5)
    for i in range(20,len(path),85):
        x,z,y=path[i]; nx,nz,_=path[(i+3)%len(path)]
        sx,sy=p(x,z); ex,ey=p(nx,nz)
        dx,dy=ex-sx,ey-sy; length=max(1,math.hypot(dx,dy)); dx/=length;dy/=length
        d.polygon([(sx+dx*9,sy+dy*9),(sx-dx*6-dy*5,sy-dy*6+dx*5),(sx-dx*6+dy*5,sy-dy*6-dx*5)],fill="white")
    for label,x,z in LANDMARKS:
        sx,sy=p(x,z)
        d.ellipse((sx-14,sy-14,sx+14,sy+14),fill=(9,17,32),outline=(166,239,239),width=2)
        d.text((sx,sy),label[:2],font=font(15),anchor="mm",fill="white")
    for i,(label,x,z) in enumerate(LANDMARKS):
        d.text((65+(i%2)*755,1152+(i//2)*32),label,font=font(20),fill=(206,225,239))
    d.text((65,1290),f"352 x 272 BLOCKS   |   {metrics['rails']:,} RAILS   |   HEIGHT 8-142   |   FRONT / PLAYER BELOW",font=font(18),fill=(102,212,231))
    im.save(DOCS/"route.png")

    # Orthographic voxel renderer. Draw only exposed faces, sorted back to front.
    # This is actual generated geometry, not an AI concept image or game screenshot.
    solid={p:b for p,b in voxels.items() if b!=AIR}
    im=Image.new("RGB",(1900,1500),(8,13,28)); d=ImageDraw.Draw(im)
    def raw(x,y,z): return (-2.65*x+1.8*z,-.85*x-1.28*z-3.3*y)
    projected=[raw(x,y,z) for x,y,z in solid]
    lo=[min(p[a] for p in projected) for a in (0,1)]
    hi=[max(p[a] for p in projected) for a in (0,1)]
    fit=min(1750/(hi[0]-lo[0]),1180/(hi[1]-lo[1]))
    def proj(x,y,z):
        sx,sy=raw(x,y,z)
        return (round(75+(sx-lo[0])*fit),round(175+(sy-lo[1])*fit))
    faces=[((0,1,0),[(0,1,0),(1,1,0),(1,1,1),(0,1,1)],1.08),
           ((0,0,-1),[(0,0,0),(1,0,0),(1,1,0),(0,1,0)],.82),
           ((-1,0,0),[(0,0,0),(0,1,0),(0,1,1),(0,0,1)],.64)]
    for (x,y,z),block in sorted(solid.items(),key=lambda item: 5.94*item[0][0]-4.922*item[0][1]+8.745*item[0][2],reverse=True):
        rgb=COLORS[block.name.split(":")[1]]
        for (dx,dy,dz),corners,shade in faces:
            if (x+dx,y+dy,z+dz) not in solid:
                color=tuple(min(255,round(c*shade)) for c in rgb)
                d.polygon([proj(x+a,y+b,z+c) for a,b,c in corners],fill=color)
    d.text((64,35),"SPACE ADVENTURE",font=font(51),fill=(231,244,255))
    d.text((67,101),"ODYSSEY  /  A MINECART JOURNEY BEYOND EARTH",font=font(23),fill=(102,212,231))
    d.text((67,1408),"ACTUAL GENERATED VOXEL GEOMETRY  /  ORTHOGRAPHIC PREVIEW  /  NOT AN IN-GAME SCREENSHOT",font=font(18),fill=(143,174,199))
    d.text((67,1442),f"LAUNCH TERMINAL  >  LUNAR DROP  >  RINGS OF AURELIA  >  JUMP GATE  >  HOME",font=font(21),fill=(214,229,241))
    im.save(DOCS/"overview.png")
    # Continuous elevation profile exposes real climb/drop lengths and station flat.
    im=Image.new("RGB",(1600,380),(8,13,28));d=ImageDraw.Draw(im)
    d.text((55,22),"FLIGHT PROFILE / ONE COMPLETE CIRCUIT",font=font(25),fill="white")
    for h in (8,50,100,142):
        py=315-h*1.6
        d.line((60,py,1540,py),fill=(40,54,73));d.text((8,py-8),str(h),font=font(15),fill=(148,176,201))
    points=[(60+i/(len(path)-1)*1480,315-y*1.6) for i,(x,z,y) in enumerate(path)]
    d.line(points,fill=(102,230,240),width=3)
    d.text((60,340),f"{metrics['major_climbs']} MAJOR CLIMBS / {metrics['major_drops']} MAJOR DROPS / {len(metrics['crossings'])} SEPARATED CROSSINGS / HEIGHT ABOVE PLAYER ORIGIN",font=font(18),fill=(148,176,201))
    im.save(DOCS/"profile.png")


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check",action="store_true",help="reconstruct and compare all assets without writing them")
    parser.add_argument("--preview-only",action="store_true",help="validate route and render; skip NBT assets")
    args=parser.parse_args()
    voxels.clear()
    path=track_path()
    ground();station();rocket();lunar_basin();planet_and_outpost();jump_gate_and_garden()
    corridor=track_and_supports(path)
    metrics=validate_track(path,corridor)
    validate_rotation_rails(path)
    actual=[min(p[a] for p in voxels) for a in range(3)]+[max(p[a] for p in voxels) for a in range(3)]
    assert actual==[X0,0,Z0,X1,YMAX,Z1],actual
    assert all(b.name in {v.name for v in B.values()} for b in voxels.values())
    metrics.update(dimensions={"width":352,"depth":272,"height":169},
                   caret_bounds=[[-175,-1,32],[176,167,303]],
                   solid_blocks=sum(b!=AIR for b in voxels.values()),
                   air_cells=sum(b==AIR for b in voxels.values()),
                   axis_run_commands=compression_counts(),landmarks=[s for s,_,_ in LANDMARKS],
                   materials=dict(sorted(Counter(b.name for b in voxels.values()).items())),
                   ticking_areas=len(AREAS),max_chunks_per_area=99)
    assert min(metrics['axis_run_commands'].values())>10000
    texts=function_texts(metrics)
    if not args.check:
        previews(path,metrics)
    if args.preview_only:
        print(json.dumps(metrics,indent=2));return
    ASSETS.mkdir(parents=True,exist_ok=True)
    nbt.voxels=voxels
    assets=[];total=0
    for xi,zi,x0,x1,z0,z1 in specs():
        asset=ASSETS/f"{BASE}_x{xi}_z{zi}.mcstructure"
        max_y=max(y for x,y,z in voxels if x0<=x<=x1 and z0<=z<=z1)
        size=(x1-x0+1,max_y+1,z1-z0+1)
        if not args.check:
            nbt.write_structure(asset,x0,x1,z0,z1,max_y)
        occupied=nbt.validate_nbt(asset,size,x0,z0)
        total+=occupied
        assets.append({"file":asset.name,"size":size,"cells":occupied,"bytes":asset.stat().st_size})
    assert total==len(voxels)
    nbt.validate_rotations([(a,b,z,w) for _,_,a,b,z,w in specs()])
    for name,text in texts.items():
        if not args.check:
            (FUNCTIONS/name).write_bytes(text.encode())
    validate_functions(texts)
    metrics['structures']=assets
    metrics['validation']={"closed_route":True,"powered_supports":True,"rider_clearance":True,
                           "nbt_roundtrip":True,"four_cardinal_voxel_maps":True,"four_cardinal_rail_states":True,
                           "preload_coverage":True,"in_game_tested":False}
    report=json.dumps(metrics,indent=2)+"\n"
    if args.check:
        assert (DOCS/"metrics.json").read_text()==report,"stale metrics"
    else:
        (DOCS/"metrics.json").write_bytes(report.encode())
    print(json.dumps({k:v for k,v in metrics.items() if k not in ("structures","materials")},indent=2))
    print(f"Validated {len(assets)} native structures; {sum(a['bytes'] for a in assets):,} bytes.")


if __name__=="__main__":
    main()
