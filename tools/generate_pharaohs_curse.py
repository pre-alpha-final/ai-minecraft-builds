#!/usr/bin/env python3
"""Pharaoh's Curse: an authored Bedrock coaster, native assets, and honest voxel previews.

Run from any directory with Python 3.10+ and Pillow:
    python tools/generate_pharaohs_curse.py
    python tools/generate_pharaohs_curse.py --check
    python tools/generate_pharaohs_curse.py --preview-only

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
BASE = "theme_park_pharaohs_curse_roller_coaster"
ASSETS = ROOT / "src/structures/ai_minecraft_builds"
FUNCTIONS = ROOT / "src/functions"
DOCS = ROOT / "docs/pharaohs_curse"
X0, X1, Z0, Z1, YMAX = -175, 176, 32, 303, 100
Block = nbt.Block

# Warm limestone, lapis and gold architecture; turquoise marks the supernatural scenes.
COLORS = {
    "air": (20, 18, 27), "sandstone": (211, 185, 129),
    "smooth_sandstone": (225, 203, 151), "cut_sandstone": (202, 174, 116),
    "chiseled_sandstone": (192, 160, 102), "red_sandstone": (168, 83, 42),
    "gold_block": (246, 198, 56), "blue_concrete": (35, 53, 128),
    "cyan_concrete": (23, 128, 143), "black_concrete": (29, 29, 32),
    "white_concrete": (231, 220, 195), "light_gray_concrete": (164, 159, 143),
    "brown_concrete": (102, 68, 42), "green_concrete": (70, 103, 41),
    "lime_concrete": (117, 149, 55), "sea_lantern": (158, 236, 218),
    "orange_concrete": (207, 106, 40), "redstone_block": (153, 36, 32),
    "water": (36, 132, 159), "rail": (167, 157, 133), "golden_rail": (255, 194, 60),
}
B = {name: Block("minecraft:" + name) for name in COLORS}
AIR, SAND, CREAM, CUT, GLYPH, RED, GOLD, BLUE, CYAN, BLACK, WHITE, SILVER, BROWN, GREEN, LIME, LIGHT, ORANGE, POWER = (
    B[n] for n in ("air", "sandstone", "smooth_sandstone", "cut_sandstone", "chiseled_sandstone",
    "red_sandstone", "gold_block", "blue_concrete", "cyan_concrete", "black_concrete", "white_concrete",
    "light_gray_concrete", "brown_concrete", "green_concrete", "lime_concrete", "sea_lantern", "orange_concrete", "redstone_block"))
WATER = Block("minecraft:water", (("liquid_depth", 0),))
voxels: dict[tuple[int, int, int], Block] = {}

# Scene-first route: sun ascent, pyramid plunge, burial chamber, tomb escape,
# rear dunes, cobra descent, sphinx flyby, low oasis return. No length target.
WAYPOINTS = [
    (-135,60,8), (-75,60,8), (-75,105,26), (90,105,96),
    (112,105,96), (112,120,96), (126,120,96), (126,136,96), (138,136,96),
    (138,258,14), (62,258,14), (62,192,14), (-25,192,14),
    (-25,265,42), (-70,265,42), (-70,282,42), (-140,282,68),
    (-152,282,68), (-152,268,68), (-160,268,68), (-160,150,18),
    (-140,150,18), (-140,138,18), (-110,138,18), (-110,150,18),
    (-20,150,54), (-20,80,12), (65,80,12), (65,48,12), (-135,48,8),
]
LANDMARKS = [
    ("01  TEMPLE OF THE SUN / STATION", -107,60),
    ("02  THE SPHINX & OBELISK COURT", 22,124),
    ("03  GOLDEN PYRAMID / BURIAL CHAMBER", 35,211),
    ("04  PHARAOH'S PLUNGE", 138,195),
    ("05  QUEENS' TOMBS", -94,246),
    ("06  COBRA GATE", -157,200),
    ("07  OASIS & PALM GROVE", -87,190),
    ("08  AVENUE OF GUARDIANS", 0,65),
]
# Five rectangles, minimal for a footprint that can touch 414 world chunks.
AREAS = [(f"pharaohs_curse_1{c}", a, b, 32, 190)
         for c, (a, b) in enumerate(((-175, -59), (-58, 58), (59, 176)), 1)] + [
             ("pharaohs_curse_21", -175, 0, 191, 303),
             ("pharaohs_curse_22", 1, 176, 191, 303)]


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














def glyph(cx, cy, z, kind=0, block=BLUE):
    """Small architectural reliefs: ankh, eye, reed. Front faces toward -forward."""
    patterns = [
        ["01110", "11011", "11011", "01110", "00100", "11111", "00100", "00100", "00100"],
        ["00000", "01110", "10001", "10101", "01110", "00100", "00110", "00010", "00000"],
        ["00100", "01110", "11111", "00100", "00100", "01110", "00100", "00100", "11111"],
    ]
    for row, bits in enumerate(patterns[kind % 3]):
        for col, bit in enumerate(bits):
            if bit == "1":
                put(cx + col - 2, cy + 8 - row, z, block)


def column(x, z, height, base=1):
    box(x-3,base,z-3,x+3,base+2,z+3,CUT)
    box(x-2,base+3,z-2,x+2,base+height-3,z+2,CREAM)
    for y in (base+4, base+height-6):
        box(x-2,y,z-2,x+2,y+1,z+2,BLUE)
    box(x-3,base+height-3,z-3,x+3,base+height-1,z+3,GOLD)
    box(x-4,base+height,z-4,x+4,base+height,z+4,CUT)


def obelisk(x,z,height):
    box(x-5,1,z-5,x+5,3,z+5,RED)
    box(x-4,4,z-4,x+4,6,z+4,BLUE)
    for y in range(7,height+1):
        r = 3 if y < height-12 else 2 if y < height-5 else 1 if y < height-1 else 0
        box(x-r,y,z-r,x+r,y,z+r,GOLD if y>height-7 else CUT)
    for y in range(10,height-12,12):
        glyph(x,y,z-4,(y//12)%3,GOLD)


def ground():
    # Sculpted dune patches leave plazas and landmark silhouettes uncluttered.
    dunes=[(-148,95,23,19,7),(144,74,24,27,10),(122,283,35,16,8),
           (-30,287,35,13,6),(-42,228,16,25,7),(154,221,12,35,8)]
    for x in range(X0,X1+1):
        for z in range(Z0,Z1+1):
            height=0
            for cx,cz,rx,rz,h in dunes:
                radius=((x-cx)/rx)**2+((z-cz)/rz)**2
                if radius<1:
                    height=max(height,round(h*(1-radius)))
            for y in range(height+1):
                put(x,y,z,CREAM if y==height else SAND)
    # A low, eroded retaining edge anchors the attraction without a tall fence.
    for x in range(X0,X1+1):
        for z in (Z0,Z1):
            if abs(x)>8:
                put(x,1,z,CUT)
    for z in range(Z0,Z1+1):
        for x in (X0,X1):
            put(x,1,z,CUT)
    box(-6,1,32,6,1,80,CUT)
    box(-138,1,76,6,1,84,CUT)
    for x in (-5,5):
        box(x,1,32,x,1,80,BLUE)
    for x in range(-137,7):
        put(x,1,83,BLUE)
    # Entrance pylons, striped cavetto cornice, and a winged sun disk.
    for side in (-1,1):
        for y in range(1,30):
            outer=31-(y//10)
            box(side*12,y,34,side*outer,y,42,CREAM if y%7 else CUT)
        glyph(side*20,11,33,0,GOLD)
        box(side*11,28,33,side*32,30,43,BLUE)
        box(side*11,31,32,side*33,32,44,GOLD)
    box(-12,24,36,12,27,40,CUT)
    # Sun with tapered feathered wings.
    for dx in range(-5,6):
        for dy in range(-5,6):
            if dx*dx+dy*dy<=25:
                put(dx,29+dy,35,GOLD)
    for side in (-1,1):
        for k in range(5,20):
            box(side*k,28,35,side*k,28+max(1,(20-k)//3),35,BLUE if k%3 else GOLD)
    for z in (50,65):
        for x in (-11,11):
            mummy(x,2,z,scale=1,guardian=True)


def station():
    box(-143,1,48,-75,7,72,CUT)
    box(-143,8,48,-75,8,72,CREAM)
    box(-140,8,58,-75,8,62,BLUE)
    for k in range(8):
        box(-127,1,80-k,-120,k+1,80-k,CREAM)
    for x in range(-138,-75,14):
        for z in (50,68):
            column(x,z,15,9)
    box(-144,25,46,-73,26,74,CUT)
    box(-145,27,45,-72,28,75,BLUE)
    box(-144,29,46,-73,29,74,GOLD)
    # Open skylight and relief frieze preserve a light, monumental station.
    box(-130,25,54,-86,29,66,AIR)
    for x in range(-137,-76,10):
        glyph(x,14,46,(x//10)%3,BLUE)
    box(-137,9,67,-78,9,67,GOLD)
    for x in range(-135,-80,11):
        box(x,9,68,x+3,10,69,BLUE)
    obelisk(-62,70,48)


def pyramid(cx,cz,r,height):
    # A true four-sided, layered shell; empty interior is deliberate, not filled mass.
    for y in range(1,height+1):
        radius=max(0,round(r*(height-y)/height))
        mat=GOLD if y>height-9 else CUT if y%6==0 else CREAM
        for x in range(-radius,radius+1):
            for z in range(-radius,radius+1):
                if max(abs(x),abs(z))>=radius-2:
                    put(cx+x,y,cz+z,mat)
    # Broad layered plinth and dark blue corner inlays.
    for y in (1,2):
        box(cx-r-2,y,cz-r-2,cx+r+2,y,cz+r+2,CUT)
    for side in (-1,1):
        box(cx-r,3,cz+side*r,cx+r,3,cz+side*r,BLUE)


def mummy(cx,base,cz,scale=1,guardian=False):
    """Voxel sculpture with wrapped limbs, crossed arms, eye slit and striped nemes."""
    def part(a,b,material):
        box(cx+a[0]*scale,base+a[1]*scale,cz+a[2]*scale,
            cx+(b[0]+1)*scale-1,base+(b[1]+1)*scale-1,cz+(b[2]+1)*scale-1,material)
    wrap=CREAM if guardian else WHITE
    part((-4,-1,-3),(4,0,3),BLUE if guardian else CUT)
    for x in (-2,1):
        part((x,1,-1),(x+1,6,1),wrap)
    part((-3,7,-1),(3,13,2),wrap)
    part((-2,14,-2),(2,18,2),GOLD if guardian else wrap)
    for y in (3,6,9,12,15,18):
        part((-2,y,-2),(2,y,-2),BLUE if guardian else SILVER)
    for x in (-3,3):
        part((x,7,-2),(x,12,0),wrap)
    # Actual crossed arms in front of torso, with individual diagonal strips.
    for k in range(6):
        part((-3+k,12-k//2,-3),(-2+k,12-k//2,-3),GOLD if guardian else WHITE)
        part((-3+k,10+k//2,-4),(-2+k,10+k//2,-4),GOLD if guardian else WHITE)
    part((-2,16,-3),(2,16,-3),BLACK)
    for x in (-1,1):
        part((x,16,-4),(x,16,-4),LIGHT)
    if guardian:
        for y in range(12,20):
            for x in (-4,-3,3,4):
                part((x,y,-1),(x,y,2),BLUE if y%2 else GOLD)
        part((-3,19,-1),(3,20,2),BLUE)
        part((0,19,-3),(0,21,-3),GOLD)


def pyramids_and_tomb():
    pyramid(35,211,65,82)
    pyramid(-102,249,30,38)
    pyramid(-53,288,12,19)
    # Crypt carved explicitly so terrain cannot remain inside the ride scene.
    box(3,5,181,67,39,223,AIR)
    box(-14,13,179,77,13,225,BLUE)
    box(-14,14,179,77,14,225,CUT)
    # Separate corridor walls, lintels and torches; track enters along x=62.
    for z in (180,224):
        box(3,15,z,67,34,z,CUT)
        box(3,34,z,67,36,z,BLUE)
        for x in range(8,66,12):
            box(x-1,16,z-1,x+1,31,z+1,GLYPH)
            put(x,29,z-2 if z==224 else z+2,LIGHT)
    # A lit royal sarcophagus and three bandaged figures visible from the lower run.
    box(15,15,206,43,17,220,BLUE)
    mummy(29,18,213,guardian=True)
    for x in (10,49,61):
        mummy(x,15,211)
    for x in range(8,66,12):
        glyph(x,23,223,x//12,GOLD)
    # A golden false door faces the circuit; its open eyes mark the curse.
    box(15,18,224,43,32,226,BLACK)
    for x in (16,42):
        box(x,18,223,x+1,32,223,GOLD)
    glyph(29,23,223,1,LIGHT)
    # Exterior temple portal on the pyramid's front, below the high lift.
    for x in (17,53):
        column(x,146,25)
    box(12,27,142,58,29,150,BLUE)
    box(11,30,141,59,31,151,GOLD)
    box(24,4,145,46,24,165,AIR)
    for k in range(4):
        box(23,1,138+k,47,k+1,138+k,CREAM)
    # Torches flank the track's actual east crypt entrance.
    for x in (56,68):
        box(x,2,258,x+1,19,259,CUT)
        box(x-1,20,257,x+2,21,260,BLUE)
        put(x,22,258,LIGHT)


def sphinx_court():
    # Lion body, projecting paws, haunches, face, beard and lapis/gold headdress.
    cx,cz=22,121
    box(cx-19,1,cz-17,cx+19,3,cz+28,CUT)
    for y in range(4,20):
        r=13 if y<13 else 12-(y-13)//2
        box(cx-r,y,cz,cx+r,y,cz+23,CREAM)
    for side in (-1,1):
        box(cx+side*7-4,4,cz-16,cx+side*7+4,8,cz+8,CREAM)
        for k in (-2,0,2):
            box(cx+side*7+k,4,cz-17,cx+side*7+k,6,cz-17,CUT)
        for y in range(8,18):
            r=max(3,8-(y-8)//2)
            box(cx+side*10-r,y,cz+15,cx+side*10+r,y,cz+24,CREAM)
    box(cx-6,17,cz-1,cx+6,34,cz+10,CREAM)
    for y in range(21,40):
        half=11 if y<32 else max(5,11-(y-32))
        box(cx-half,y,cz+2,cx+half,y,cz+12,BLUE if y%3 else GOLD)
        if y<33:
            for side in (-1,1):
                box(cx+side*9-2,y,cz-1,cx+side*9+2,y,cz+3,BLUE if y%3 else GOLD)
    box(cx-5,22,cz-2,cx+5,33,cz+1,CREAM)
    for side in (-1,1):
        box(cx+side*3-1,29,cz-3,cx+side*3+1,29,cz-3,BLACK)
        box(cx+side*3-1,30,cz-3,cx+side*3+1,30,cz-3,BLUE)
    box(cx-1,26,cz-4,cx+1,29,cz-3,CREAM)
    box(cx-2,23,cz-3,cx+2,23,cz-3,CUT)
    box(cx-1,18,cz-3,cx+1,22,cz-2,BLUE)
    box(cx,34,cz-2,cx,39,cz-2,GOLD)
    for x,z,h in ((-4,115,56),(57,126,44),(105,172,34)):
        obelisk(x,z,h)
    # Flanking hypostyle ruins: columns and deliberately broken architraves.
    for x in (76,91,106):
        for z in (88,104):
            column(x,z,19 if x!=91 else 13)
    box(73,21,85,82,23,91,CUT)
    box(101,21,101,110,23,107,CUT)


def cobra_gate():
    # Giant hooded cobra arches over the descending western track.
    cx,cz=-157,200
    box(cx-15,1,cz-8,cx+15,4,cz+8,BLUE)
    # Open underbelly aperture; the body rises in two coils beside the rider.
    for side in (-1,1):
        for y in range(5,45):
            x=cx+side*(12 if y<30 else 11-(y-30)//6)
            box(x-2,y,cz-3,x+2,y,cz+3,GOLD if y%5==0 else BLUE)
    for y in range(37,72):
        r=round(6+10*math.sin((y-37)/35*math.pi))
        for x in range(-r,r+1):
            for z in range(-3,4):
                if abs(x)>r-3 or abs(z)>1:
                    put(cx+x,y,cz+z,GOLD if (y+abs(x))%7<2 else BLUE)
    box(cx-7,62,cz-6,cx+7,72,cz+3,BLUE)
    for side in (-1,1):
        box(cx+side*4-1,67,cz-7,cx+side*4+1,69,cz-7,LIGHT)
        box(cx+side*5,60,cz-7,cx+side*5,64,cz-6,WHITE)
    box(cx-3,62,cz-7,cx+3,64,cz-7,BLACK)
    box(cx,56,cz-8,cx,62,cz-8,RED)
    # The luminous ankh next to the gate is a fixed sculpture, not a portal.
    ring(-122,48,199,9,1,GOLD,plane="xy")
    box(-123,24,198,-121,40,200,GOLD)
    box(-130,33,198,-114,35,200,GOLD)
    box(-125,1,196,-119,5,202,BLUE)
    box(-122,6,199,-122,23,199,CUT)


def palm(cx,cz,height):
    for y in range(1,height+1):
        bend=round(3*(y/height)**2)
        box(cx+bend,y,cz,cx+bend+1,y,cz+1,BROWN)
    for angle in range(0,360,45):
        a=math.radians(angle)
        for k in range(1,13):
            x=round(cx+3+math.cos(a)*k);z=round(cz+math.sin(a)*k)
            y=height+round(4*math.sin(k/12*math.pi))-k//4
            box(x-1,y,z-1,x+1,y,z+1,GREEN if k%3 else LIME)


def oasis_and_ruins():
    # The pool has a solid floor and a complete bank, and its cells are written last.
    pool=set()
    for x in range(-130,-40):
        for z in range(160,231):
            r=((x+87)/34)**2+((z-192)/24)**2
            if r<1.25:
                put(x,1,z,CUT)
            if r<1:
                put(x,0,z,CYAN)
                pool.add((x,1,z))
    for x,z,h in ((-123,171,23),(-109,160,28),(-62,169,25),(-48,194,27),
                  (-62,222,24),(-113,219,29),(91,55,24),(124,52,29)):
        palm(x,z,h)
    # Small sandstone settlements give scale to the immense monuments.
    for x,z,w,h in ((-116,104,15,10),(-147,234,13,9),(98,275,17,13)):
        box(x-w//2,1,z-7,x+w//2,h,z+7,CREAM)
        box(x-w//2+1,2,z-6,x+w//2-1,h-1,z+6,AIR)
        box(x-2,2,z-7,x+2,6,z-6,AIR)
        box(x-w//2-1,h+1,z-8,x+w//2+1,h+1,z+8,CUT)
        for dx in (-4,4):
            box(x+dx,5,z-8,x+dx,7,z-8,BLUE)
    # Broken columns occupy only a small archaeological court.
    for x,z,h in ((-54,112,12),(-42,121,7),(-60,136,15)):
        column(x,z,h)
    box(-56,1,120,-42,3,124,CUT)
    for p in pool:
        put(*p,WATER)


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
        # Lapis track trim and gold ties echo Egyptian jewelry.
        perp=(0,1) if nx!=px else (1,0)
        for offset in (-1,0,1):
            p=(x+perp[0]*offset,y,z+perp[1]*offset)
            if p not in corridor:
                put(*p,POWER if offset==0 else BLUE)
        if not corner and i%5==0:
            for side in (-2,2):
                p=(x+perp[0]*side,y-1,z+perp[1]*side)
                if p not in corridor and p not in rails:
                    put(*p,GOLD if i%10==0 else CUT)
        if not corner and i%28==0:
            # Widely spaced splayed A-frames replace a forest of vertical poles.
            for side in (-1,1):
                for h in range(1,y):
                    spread=round(2+5*(1-h/max(y,1)))
                    sx,sz=x+perp[0]*side*spread,z+perp[1]*side*spread
                    p=(sx,h,sz)
                    if p not in corridor and p not in rails and p not in beds:
                        put(*p,GOLD if h%24<2 else CUT)
                for k in range(-3,4):
                    p=(x+perp[0]*k,y-1,z+perp[1]*k)
                    if p not in corridor and p not in rails and p not in beds:
                        put(*p,CUT)
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
            "largest_drop":-min(runs),"elevation_changes":[v for v in runs if v],
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
        "# PHARAOH'S CURSE / THE AWAKENING - Minecraft Bedrock Edition roller coaster",
        f"# Run: /function {BASE}",
        "# Stand at ground level, face a cardinal direction, and look horizontally. Run as a player.",
        "# Origin: front-center observation point; nearest blocks are 32 blocks ahead.",
        "# Size: 352 wide x 272 deep x 101 high. Bounds: ^-175 ^-1 ^32 through ^176 ^99 ^303.",
        "# Use a clear flat Overworld site; player's feet must be at Y -63 through 220 for world-height clearance.",
        "# Continuous powered minecart circuit; pyramids, mummies, sphinx and curse effects are static scenery.",
        "# Follow the guardian avenue and path to the temple stairs. Board at ^-120 ^8 ^60; push toward the long lift (+left).",
        f"# {metrics['rails']:,} rails; {metrics['curves']} flat curves; {metrics['major_climbs']} major climbs and {metrics['major_drops']} major drops.",
        "# Largest drop: 82 blocks. Gold-capped main pyramid: 129 x 129 shell footprint, 82 block layers.",
        "# Rail heights: 8 through 96 above player origin. Three-block-wide, three-block-high passenger clearance.",
        "# Scenes: sun temple, sphinx, golden pyramid, mummy crypt, queens tombs, cobra gate, palm oasis.",
        f"# {metrics['solid_blocks']:,} non-air blocks + {metrics['air_cells']:,} explicit clearance cells in {len(specs())} native structures.",
        f"# Smallest exact axis-run encoding: {min(metrics['axis_run_commands'].values()):,} commands; native assets avoid the 10,000-command limit.",
        f"# Public wrapper: {count} commands (including five snap commands); callbacks: 1 + {len(AREAS)}; total: {count+1+len(AREAS)}.",
        "# Requires Bedrock 1.21.50+ for the delayed schedule lifecycle.",
        "# Palette: sandstone variants, gold, lapis-blue/cyan/black/ivory/brown/green concrete, sea lanterns, water, redstone and rails.",
        "# WARNING: overwrites a large site. Back up first or use a disposable world. Sparse void cells do not clear existing terrain.",
        "# Five temporary ticking areas, <=99 chunks each. Five of the world's ten slots must be free or loading can fail.",
        "# Cleanup refreshes to 300 ticks after each area loads. Wait for placement and cleanup before rerunning this build.",
        "", "# === CLEAR STALE CALLBACKS AND PRELOAD ALL FIVE RECTANGLES ===",
    ]
    public=cardinal_snap.transform_public_lines(header+commands)
    texts={f"{BASE}.mcfunction":"\n".join(public)+"\n",
           f"{loaded}.mcfunction":f"# INTERNAL CALLBACK - do not run manually. Refresh cleanup after every loaded rectangle.\nschedule delay add {cleanup} 300 replace\n",
           f"{cleanup}.mcfunction":"# INTERNAL CALLBACK - do not run manually. Remove only the Pharaohs Curse temporary areas.\n"+
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
            r"tickingarea remove pharaohs_curse_[12][123]",
            r"tickingarea add \^-?\d+ \^0 \^\d+ \^-?\d+ \^0 \^\d+ pharaohs_curse_[12][123] true",
            rf"schedule on_area_loaded add tickingarea pharaohs_curse_[12][123] _{BASE}_tickingarea_loaded",
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


def validate_scenes(path):
    # Geometry checks supplement the rail graph: pool containment, the walking
    # approach, sculptures surviving support placement, and a genuinely roofed crypt.
    for (x,y,z),b in voxels.items():
        if b == WATER:
            assert voxels.get((x,y-1,z)) not in (None,AIR,WATER), "pool has no floor"
            for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)):
                assert voxels.get((x+dx,y,z+dz)) not in (None,AIR), "pool bank leak"
    walkway = [(x,1,z) for x in range(-3,4) for z in range(32,82)]
    walkway += [(x,1,z) for x in range(-126,4) for z in range(77,80)]
    for x,y,z in walkway:
        # The last steps are intentionally higher than the flat concourse.
        if -127 <= x <= -120 and z >= 73:
            continue
        assert voxels.get((x,y,z)) not in (None,AIR,WATER), (x,y,z,"walkway floor")
        assert all(voxels.get((x,y+h,z),AIR)==AIR for h in (1,2)), (x,y,z,"walkway blocked")
    for cx,base,cz,guardian in [(29,18,213,True),(10,15,211,False),
                               (49,15,211,False),(61,15,211,False)]:
        for dx in (-1,1):
            assert voxels.get((cx+dx,base+16,cz-4))==LIGHT, "mummy eyes overwritten"
    assert voxels[35,82,211]==GOLD, "missing pyramid capstone"
    assert voxels[22,39,119]==GOLD, "missing sphinx crown"
    assert any(x==62 and 195<=z<=230 and y==14 for x,z,y in path)
    for x in range(6,65):
        assert any(voxels.get((x,y,200)) in (SAND,CREAM,CUT,GOLD)
                   for y in range(40,83)), (x,"crypt roof is open")
    # Thin shell clearing must not accidentally expose the complete chamber.
    for y in range(24,35):
        r=round(65*(82-y)/82)
        for side in (-1,1):
            assert voxels.get((35+side*r,y,211)) in (CREAM,CUT), "crypt breaches pyramid"


def crypt_preview():
    from PIL import Image, ImageDraw, ImageFont
    font_path=Path("C:/Windows/Fonts/consola.ttf")
    def font(size):
        return ImageFont.truetype(str(font_path),size) if font_path.exists() else ImageFont.load_default(size=size)
    solid={p:b for p,b in voxels.items() if b!=AIR and
           3<=p[0]<=67 and 14<=p[1]<=39 and 190<=p[2]<=225 and
           (p[1]<=36 or (22<=p[0]<=36 and 207<=p[2]<=218))}
    im=Image.new("RGB",(1500,920),(20,18,27));d=ImageDraw.Draw(im)
    def raw(x,y,z): return (-2.65*x+1.8*z,-.85*x-1.28*z-3.3*y)
    points=[raw(*p) for p in solid]
    lo=[min(p[a] for p in points) for a in (0,1)]
    hi=[max(p[a] for p in points) for a in (0,1)]
    fit=min(1340/(hi[0]-lo[0]),620/(hi[1]-lo[1]))
    def project(x,y,z):
        sx,sy=raw(x,y,z)
        return (round(80+(sx-lo[0])*fit),round(150+(sy-lo[1])*fit))
    faces=[((0,1,0),[(0,1,0),(1,1,0),(1,1,1),(0,1,1)],1.08),
           ((0,0,-1),[(0,0,0),(1,0,0),(1,1,0),(0,1,0)],.82),
           ((-1,0,0),[(0,0,0),(0,1,0),(0,1,1),(0,0,1)],.64)]
    for (x,y,z),b in sorted(solid.items(),key=lambda item: 5.94*item[0][0]-4.922*item[0][1]+8.745*item[0][2],reverse=True):
        rgb=COLORS[b.name.split(":")[1]]
        for (dx,dy,dz),corners,shade in faces:
            if (x+dx,y+dy,z+dz) not in solid:
                color=tuple(min(255,round(c*shade)) for c in rgb)
                d.polygon([project(x+a,y+b,z+c) for a,b,c in corners],fill=color)
    d.text((55,30),"INSIDE THE FORBIDDEN TOMB",font=font(38),fill=(244,208,129))
    d.text((57,86),"ROYAL SARCOPHAGUS / BANDAGED GUARDIANS / ILLUMINATED FALSE DOOR",font=font(21),fill=(157,228,216))
    d.text((57,816),"CUTAWAY OF ACTUAL BLOCKS / ROOF & FRONT WALL OMITTED FOR VISIBILITY",font=font(22),fill=(201,188,164))
    d.text((57,855),"THE BUILT PYRAMID ENCLOSES THIS CHAMBER. THE MUMMIES ARE STATIC SCULPTURES.",font=font(20),fill=(155,153,158))
    im.save(DOCS/"crypt.png")


def previews(path,metrics):
    from PIL import Image, ImageDraw, ImageFont
    DOCS.mkdir(exist_ok=True,parents=True)
    font_path=Path("C:/Windows/Fonts/consola.ttf")
    def font(size):
        return ImageFont.truetype(str(font_path),size) if font_path.exists() else ImageFont.load_default(size=size)
    # Top-down plot is derived from the final voxel map and the actual closed route.
    im=Image.new("RGB",(1600,1330),(28,23,32)); d=ImageDraw.Draw(im)
    d.text((62,28),"PHARAOH'S CURSE",font=font(42),fill=(231,244,255))
    d.text((64,83),"THE AWAKENING  /  ROUTE & LANDMARK PLAN",font=font(20),fill=(237,189,85))
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
        color=(round(75+180*y/96),round(223-58*y/96),round(249-148*y/96))
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
    d.text((65,1290),f"352 x 272 BLOCKS   |   {metrics['rails']:,} RAILS   |   HEIGHT 8-96   |   FRONT / PLAYER BELOW",font=font(18),fill=(237,189,85))
    im.save(DOCS/"route.png")

    crypt_preview()

    # Orthographic voxel renderer. Draw only exposed faces, sorted back to front.
    # This is actual generated geometry, not an AI concept image or game screenshot.
    solid={p:b for p,b in voxels.items() if b!=AIR}
    im=Image.new("RGB",(1900,1500),(28,23,32)); d=ImageDraw.Draw(im)
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
    d.text((64,35),"PHARAOH'S CURSE",font=font(51),fill=(231,244,255))
    d.text((67,101),"THE AWAKENING  /  DESCEND INTO THE FORBIDDEN TOMB",font=font(23),fill=(237,189,85))
    d.text((67,1408),"ACTUAL GENERATED VOXEL GEOMETRY  /  ORTHOGRAPHIC PREVIEW  /  NOT AN IN-GAME SCREENSHOT",font=font(18),fill=(143,174,199))
    d.text((67,1442),f"SUN TEMPLE  >  PYRAMID PLUNGE  >  MUMMY CRYPT  >  COBRA GATE  >  OASIS",font=font(21),fill=(214,229,241))
    im.save(DOCS/"overview.png")
    # Continuous elevation profile exposes real climb/drop lengths and station flat.
    im=Image.new("RGB",(1600,380),(28,23,32));d=ImageDraw.Draw(im)
    d.text((55,22),"RIDE PROFILE / ONE COMPLETE CIRCUIT",font=font(25),fill="white")
    for h in (8,30,60,96):
        py=315-h*2.3
        d.line((60,py,1540,py),fill=(40,54,73));d.text((8,py-8),str(h),font=font(15),fill=(148,176,201))
    points=[(60+i/(len(path)-1)*1480,315-y*2.3) for i,(x,z,y) in enumerate(path)]
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
    ground();station();pyramids_and_tomb();sphinx_court();cobra_gate();oasis_and_ruins()
    corridor=track_and_supports(path)
    metrics=validate_track(path,corridor)
    validate_scenes(path)
    validate_rotation_rails(path)
    actual=[min(p[a] for p in voxels) for a in range(3)]+[max(p[a] for p in voxels) for a in range(3)]
    assert actual==[X0,0,Z0,X1,YMAX,Z1],actual
    assert all(b.name in {v.name for v in B.values()} for b in voxels.values())
    metrics.update(dimensions={"width":352,"depth":272,"height":101},
                   caret_bounds=[[-175,-1,32],[176,99,303]],
                   solid_blocks=sum(b!=AIR for b in voxels.values()),
                   air_cells=sum(b==AIR for b in voxels.values()),
                   rail_corridor_air_cells=len(corridor),
                   solid_caret_bounds=[[min(p[a] for p,b in voxels.items() if b!=AIR)-(1 if a==1 else 0) for a in range(3)],
                                       [max(p[a] for p,b in voxels.items() if b!=AIR)-(1 if a==1 else 0) for a in range(3)]],
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
                           "nbt_roundtrip":True,"pool_containment":True,"walkable_entrance":True,"crypt_enclosure":True,"four_cardinal_voxel_maps":True,"four_cardinal_rail_states":True,
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
