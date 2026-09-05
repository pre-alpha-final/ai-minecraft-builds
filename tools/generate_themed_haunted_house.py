#!/usr/bin/env python3
"""Generate and validate the structure-backed Themed Haunted House."""

from __future__ import annotations

import argparse
from collections import Counter, deque
from itertools import permutations, product
import json
import math
from pathlib import Path
import re
import urllib.request

import cardinal_snap as snap
import generate_skyline_cyclone as nbt
import haunted_house_geometry as geo

ROOT = Path(__file__).resolve().parents[1]
NAME = "theme_park_themed_haunted_house"
DOCS = ROOT / "docs" / "themed_haunted_house"
ASSETS = ROOT / "src" / "structures" / "ai_minecraft_builds"
FUNCTIONS = ROOT / "src" / "functions"
BASE_Y = geo.BOUNDS[1]
CATALOG = "https://raw.githubusercontent.com/Mojang/bedrock-samples/v1.21.50.7/metadata/vanilladata_modules/mojang-blocks.json"
# Modern block-palette version 1.21.30.7, as exported in Microsoft's sample:
# minecraft-samples/chill_oasis_blocks_and_features/chill_oasis_biome/
# behavior_packs/chill_oasis_biome/structures/mike/palm_tree_large.mcstructure.
# The shared coaster writer defaults to 1.18.10.1, before split wooden slabs.
# Override only this generator's in-process codec; other assets are untouched.
nbt.BLOCK_VERSION = 18_161_159
# Three is minimal: the complete aligned footprint spans at least 15*15=225
# world chunks, which cannot fit in two 100-chunk ticking areas.
AREAS = [(f"themed_haunted_house_{i}",-112,112,z,w)
         for i,(z,w) in enumerate(((24,103),(104,183),(184,262)),1)]
FACING = [("SOUTH","@s[rym=-44,ry=44]",0), ("WEST","@s[rym=45,ry=134]",90),
          ("NORTH","@s[rym=135,ry=180]",180), ("NORTH NEGATIVE","@s[rym=-180,ry=-135]",180),
          ("EAST","@s[rym=-134,ry=-45]",270)]


def write_text(path,text,check=False):
    expected=(text.rstrip()+"\n").encode()
    if path.exists():
        prior=path.read_bytes()
        assert prior.count(b"\r\n") in (0,prior.count(b"\n")), path
        if b"\r\n" in prior:
            expected=expected.replace(b"\n",b"\r\n")
    if check:
        assert path.read_bytes()==expected, f"stale generated file: {path}"
    else:
        path.write_bytes(expected)


def specs():
    return [(i,j,x,min(x+63,112),z,min(z+63,262))
            for j,z in enumerate(range(24,263,64),1)
            for i,x in enumerate(range(-112,113,64),1)]


def block(b):
    name=b.split(" ")[0]
    states=dict(re.findall(r'"([^"]+)"="([^"]+)"',b))
    if name=="dark_oak_log":
        states["pillar_axis"]="y"
    if name=="soul_lantern":
        states["hanging"]=False
    return nbt.Block("minecraft:"+name,tuple(sorted(states.items())))


def validate_palette(scene,online):
    materials=sorted(set(scene.values()))
    if online:
        data=json.load(urllib.request.urlopen(CATALOG,timeout=30))
        known={b["name"]:{s["name"] for s in b["properties"]} for b in data["data_items"]}
        properties={s["name"]:[v["value"] for v in s["values"]] for s in data["block_properties"]}
        for material in materials:
            b=block(material)
            assert b.name in known, b
            for k,v in b.states:
                assert k in known[b.name] and v in properties[k], b
    # Only states whose geometric interpretation is unchanged by horizontal yaw.
    assert all(k in ("pillar_axis","hanging","minecraft:vertical_half")
               for b in map(block,materials) for k,_ in b.states)
    return materials


def h2(b):
    return 1 if "_slab " in b else 2


def walking(scene):
    solids={p:b for p,b in scene.items() if b!="air"}
    surfaces={}
    def clear(x,z,h,top):
        return all(not ((b:=solids.get((x,y,z))) and 2*y<top and 2*y+h2(b)>h)
                   for y in range(h//2,(top-1)//2+1))
    for (x,y,z),b in solids.items():
        if b in ("iron_bars","soul_lantern","flower_pot","web"):
            continue
        h=2*y+h2(b)
        if clear(x,z,h,h+4):
            surfaces.setdefault((x,z),[]).append(h)
    start=(0,0,24)
    seen,queue,parent={start},deque([start]),{}
    while queue:
        x,h,z=queue.popleft()
        for nx,nz in ((x-1,z),(x+1,z),(x,z-1),(x,z+1)):
            for nh in surfaces.get((nx,nz),()):
                p=(nx,nh,nz)
                if abs(nh-h)>1 or p in seen:
                    continue
                high=max(h,nh)
                if clear(x,z,high,high+4) and clear(nx,nz,high,high+4):
                    seen.add(p);queue.append(p);parent[p]=(x,h,z)
    missing={k:v for k,v in geo.GOALS.items() if v not in seen}
    assert not missing, f"Unreachable guest destinations: {missing}"
    paths={}
    for name,p in geo.GOALS.items():
        path=[p]
        while path[-1]!=start:
            path.append(parent[path[-1]])
        paths[name]=path[::-1]
    # Every individual tread, not only floor endpoints, must survive final writes.
    for name,x0,x1,z,feet,rise in geo.STAIRS:
        for i in range(2*rise):
            expected=feet*2+i+1
            assert any((x,expected,z+i) in seen for x in range(x0,x1+1)), (name,i,"blocked tread")
    return len(seen),paths


def compressed_cuboids(scene):
    """Exact disjoint cuboids: runs, rectangular merges, then volume merges.

    Test all six axis orders on final non-air geometry. Unlike painting over
    previous fills, these partitions never fill gaps or change source materials.
    """
    solids={p:b for p,b in scene.items() if b!="air"}
    results={}; best_boxes=None
    for order in permutations(range(3)):
        axis=order[0]
        other=[a for a in range(3) if a!=axis]
        buckets={}
        for p,b in solids.items():
            buckets.setdefault((p[other[0]],p[other[1]],b),[]).append(p[axis])
        boxes=[]
        for (u,v,b),values in buckets.items():
            values.sort();begin=previous=values[0]
            def add(a,w):
                lo=[0,0,0];hi=[0,0,0]
                lo[axis]=a;hi[axis]=w
                lo[other[0]]=hi[other[0]]=u
                lo[other[1]]=hi[other[1]]=v
                boxes.append((tuple(lo),tuple(hi),b))
            for value in values[1:]:
                if value!=previous+1:
                    add(begin,previous);begin=value
                previous=value
            add(begin,previous)
        for axis in order[1:]:
            groups={}
            other=[a for a in range(3) if a!=axis]
            for lo,hi,b in boxes:
                key=(lo[other[0]],hi[other[0]],lo[other[1]],hi[other[1]],b)
                groups.setdefault(key,[]).append((lo[axis],hi[axis]))
            boxes=[]
            for (u0,u1,v0,v1,b),intervals in groups.items():
                intervals.sort();begin,previous=intervals[0]
                def add(a,w):
                    lo=[0,0,0];hi=[0,0,0]
                    lo[axis]=a;hi[axis]=w
                    lo[other[0]],hi[other[0]]=u0,u1
                    lo[other[1]],hi[other[1]]=v0,v1
                    boxes.append((tuple(lo),tuple(hi),b))
                for a,w in intervals[1:]:
                    if a!=previous+1:
                        add(begin,previous);begin=a
                    previous=w
                add(begin,previous)
        # Split any cuboid that would exceed the Bedrock fill limit.
        pending=boxes;boxes=[]
        while pending:
            lo,hi,b=pending.pop()
            sizes=[hi[a]-lo[a]+1 for a in range(3)]
            if math.prod(sizes)<=32768:
                boxes.append((lo,hi,b));continue
            axis=max(range(3),key=lambda a:sizes[a]);mid=(lo[axis]+hi[axis])//2
            h=list(hi);h[axis]=mid;l=list(lo);l[axis]=mid+1
            pending.extend(((lo,tuple(h),b),(tuple(l),hi,b)))
        key="".join("xyz"[a] for a in order)
        results[key]=len(boxes)
        if best_boxes is None or len(boxes)<len(best_boxes):
            best_boxes=boxes
    restored={}
    for lo,hi,b in best_boxes:
        for p in product(*(range(lo[a],hi[a]+1) for a in range(3))):
            assert p not in restored
            restored[p]=b
    assert restored==solids
    assert min(results.values())>10000, results
    return results


def preload_check():
    covered=Counter()
    sizes=[]
    for _,a,b,z,w in AREAS:
        count=math.ceil((b-a+16)/16)*math.ceil((w-z+16)/16)
        assert count<=100
        sizes.append(count)
        covered.update(product(range(a,b+1),range(z,w+1)))
    assert set(covered.values())=={1}
    assert set(covered)==set(product(range(-112,113),range(24,263)))
    return sizes


def loader(metrics):
    loaded=f"_{NAME}_tickingarea_loaded";cleanup=f"_{NAME}_remove_tickingarea"
    header=["# THEMED HAUNTED HOUSE - GRAND ESTATE / Minecraft Bedrock Edition 1.21.50+",
            f"# Run /function {NAME} as a player at ground level, facing a cardinal direction with a horizontal view.",
            "# Origin: front-center observation point; nearest blocks start 24 forward. Door: ^0 ^10 ^72.",
            "# Bounds: ^-112 ^-1 ^24 through ^112 ^96 ^262. Width 225, depth 239, vertical extent 98 blocks.",
            "# Stand with feet at Overworld Y -63 through 223. Default flat-world ground is supported.",
            "# The estate sits on an eight-block terrace; entrance stairs preserve ground-level walking access and the crypt.",
            "# Three furnished main floors, six attic rooms, six crypt vaults, twelve tower rooms, front balcony, gardens.",
            "# Static walk-through attraction. Guest feet levels: crypt 0, grounds 8, main floors 10/22/34, attic 46.",
            f"# {metrics['solid_blocks']:,} non-air blocks and {metrics['air_cells']:,} explicit air cells in 16 native structures.",
            f"# Best of six exact cuboid encodings: {min(metrics['exact_cuboid_commands'].values()):,} solid-placement commands, before air or snap.",
            "# Public loader: 97 commands including five snap commands. Callbacks: 1 + 3 commands. Complete lifecycle: 101.",
            f"# {len(geo.GOALS)} guest destinations and every stair tread pass the conservative two-block headroom walking check.",
            "# Three temporary preloaded ticking areas (90 chunks maximum each); three of the world's ten slots must be free.",
            "# Queued placement finishes when the areas load. Cleanup refreshes to 300 ticks after each area is ready.",
            "# Wait for placement and cleanup before rerunning this build; the same loader reuses static area names.",
            "# WARNING: overwrites a large estate. Back up first or use a disposable world.",
            "# Interior and ground-route air is explicit; omitted exterior cells remain untouched. Upper belfries are decorative.",
            "# Palette: purple masonry/glass, pale stone, slate, dark oak/spruce parquet, marble mosaics, ghost wool, soul lighting.",
            "# In-game verification remains outstanding. Rebuild and reimport the pack after source changes.",
            "", "# === PRELOAD COMPLETE ESTATE ==="]
    commands=['tellraw @s {"rawtext":[{"text":"Themed Haunted House v1.0.22: loading estate. Three free ticking-area slots are required."}]}',
              f"schedule on_area_loaded clear function {loaded}",f"schedule delay clear {cleanup}"]
    commands += [f"tickingarea remove {name}" for name,*_ in AREAS]
    commands += [f"tickingarea add ^{a} ^0 ^{z} ^{b} ^0 ^{w} {name} true" for name,a,b,z,w in AREAS]
    commands += [f"schedule on_area_loaded add tickingarea {name} {loaded}" for name,*_ in AREAS]
    for label,selector,angle in FACING:
        commands += ["",f"# === {label}: ALL SIXTEEN STRUCTURES ==="]
        for i,j,a,b,z,w in specs():
            ax=b if angle in (180,270) else a
            az=w if angle in (90,180) else z
            commands.append(f"execute if entity {selector} run structure load ai_minecraft_builds:{NAME}_x{i}_z{j} ^{ax} ^{BASE_Y} ^{az} {angle}_degrees none")
    public=snap.transform_public_lines(header+commands)
    snap.validate_public_lines(public)
    assert sum(snap.is_command(c) for c in public)==97
    return {f"{NAME}.mcfunction":"\n".join(public),
            f"{loaded}.mcfunction":f"# INTERNAL CALLBACK - do not run manually. Refresh cleanup after each area loads.\nschedule delay add {cleanup} 300 replace",
            f"{cleanup}.mcfunction":"# INTERNAL CALLBACK - do not run manually. Remove only this estate's three areas.\n"+
            "\n".join(f"tickingarea remove {name}" for name,*_ in AREAS)}


def validate_functions(texts):
    loaded=f"_{NAME}_tickingarea_loaded";cleanup=f"_{NAME}_remove_tickingarea"
    patterns=[rf"schedule on_area_loaded clear function {loaded}", rf"schedule delay clear {cleanup}",
              r"tickingarea remove themed_haunted_house_[123]",
              r"tickingarea add \^-?\d+ \^0 \^\d+ \^-?\d+ \^0 \^\d+ themed_haunted_house_[123] true",
              rf"schedule on_area_loaded add tickingarea themed_haunted_house_[123] {loaded}",
              rf"execute if entity @s\[rym=-?\d+,ry=-?\d+\] run structure load ai_minecraft_builds:{NAME}_x[1-4]_z[1-4] \^-?\d+ \^{BASE_Y} \^\d+ (0|90|180|270)_degrees none",
              rf"schedule delay add {cleanup} 300 replace"]
    for name,text in texts.items():
        lines=text.splitlines()
        if not name.startswith("_"):
            snap.validate_public_lines(lines)
        else:
            assert lines[0].startswith("# INTERNAL CALLBACK - do not run manually")
        for line in lines:
            assert line==line.rstrip() and not line.startswith("/")
            if snap.is_command(line) and line not in snap.SNAP_COMMANDS:
                command=line.removeprefix(snap.REANCHOR_PREFIX)
                if command.startswith("tellraw @s "):
                    message=json.loads(command.removeprefix("tellraw @s "))
                    assert message=={"rawtext":[{"text":"Themed Haunted House v1.0.22: loading estate. Three free ticking-area slots are required."}]}
                    continue
                assert any(re.fullmatch(pattern,command) for pattern in patterns), line
    actual={p.name for p in FUNCTIONS.glob(f"*{NAME}*.mcfunction")}
    assert actual==set(texts), actual


def validate_rotations(scene,texts):
    # Parse anchors from actual public text. Simulate each chunk's rotated local
    # bounding box, then undo player yaw to compare every material in caret space.
    public=texts[f"{NAME}.mcfunction"]
    for angle in (0,90,180,270):
        seen=set()
        for i,j,x0,x1,z0,z1 in specs():
            match=re.search(rf"{NAME}_x{i}_z{j} \^(-?\d+) \^(-?\d+) \^(-?\d+) {angle}_degrees",public)
            ax,ay,az=map(int,match.groups());sx=x1-x0+1;sz=z1-z0+1
            for (x,y,z),material in scene.items():
                if not (x0<=x<=x1 and z0<=z<=z1):
                    continue
                u,v=x-x0,z-z0
                if angle==0: wx,wz=ax+u,az+v
                elif angle==90: wx,wz=-az+sz-1-v,ax+u
                elif angle==180: wx,wz=-ax+sx-1-u,-az+sz-1-v
                else: wx,wz=az+v,-ax+sx-1-u
                lx,lz=(wx,wz) if angle==0 else (wz,-wx) if angle==90 else (-wx,-wz) if angle==180 else (-wz,wx)
                p=(lx,ay+y-BASE_Y,lz)
                assert p==(x,y,z) and scene[p]==material and p not in seen, (angle,p)
                seen.add(p)
        assert len(seen)==len(scene)


def validate_world_heights(texts,assets):
    """Regression: every selected asset must fit from default flat-world ground.

    Check the load origin, including omitted bottom layers. Bedrock validates
    the structure bounding box, not only the non-air cells inside it.
    """
    sizes={a['file'].removesuffix('.mcstructure'):a['size'] for a in assets}
    placements=re.findall(r"structure load ai_minecraft_builds:(\w+) \^-?\d+ \^(-?\d+) \^\d+ (?:0|90|180|270)_degrees",texts[f"{NAME}.mcfunction"])
    assert len(placements)==80
    tested=(-63,-60,-59,-55,64,223)
    for feet in tested:
        for asset,offset in placements:
            bottom=feet+int(offset)
            top=bottom+sizes[asset][1]-1
            assert -64<=bottom<=top<=319,(feet,asset,bottom,top,"structure outside Overworld")
    return list(tested)


COLORS={
    "grass_block":(64,83,56),"mossy_stone_bricks":(100,113,89),"stone_bricks":(169,164,153),
    "polished_blackstone_bricks":(59,52,68),"deepslate_tiles":(45,48,61),"purple_terracotta":(106,69,89),
    "dark_oak_planks":(83,57,37),"spruce_planks":(119,85,52),"dark_oak_log":(52,41,31),
    "chiseled_stone_bricks":(177,172,156),"purple_stained_glass":(148,99,193),"black_stained_glass":(45,38,57),
    "lime_stained_glass":(109,181,82),"iron_bars":(102,113,122),"soul_lantern":(99,242,224),
    "sea_lantern":(159,234,215),"red_wool":(143,38,50),"black_wool":(31,25,38),"purple_wool":(103,53,141),
    "bookshelf":(122,98,61),"enchanting_table":(61,148,144),"flower_pot":(141,84,65),
    "white_wool":(230,225,215),"black_concrete":(25,23,31),"amethyst_block":(156,106,192),
    "bone_block":(210,202,170),"polished_andesite":(145,147,146),"gold_block":(209,172,66),
    "blue_wool":(51,67,141),"yellow_wool":(214,181,57),"web":(176,180,183),
    "podzol":(101,73,48),"moss_block":(75,110,48),"dark_oak_slab":(83,57,37),
    "polished_blackstone_brick_slab":(59,52,68)}


def previews(scene,metrics,paths):
    from PIL import Image,ImageDraw,ImageFont
    fontpath=Path("C:/Windows/Fonts/segoeui.ttf")
    def font(size):
        return ImageFont.truetype(str(fontpath),size) if fontpath.exists() else ImageFont.load_default(size=size)
    solids={p:b for p,b in scene.items() if b!="air"}
    def render(model,filename,title,subtitle):
        im=Image.new("RGB",(1800,1530),(19,21,29));d=ImageDraw.Draw(im)
        def raw(x,y,z):return (-2.65*x+1.8*z,-.85*x-1.28*z-3.3*y)
        points=[raw(*p) for p in model]
        lo=[min(p[a] for p in points) for a in (0,1)];hi=[max(p[a] for p in points) for a in (0,1)]
        fit=min(1650/(hi[0]-lo[0]),1190/(hi[1]-lo[1]))
        def proj(x,y,z):
            a,b=raw(x,y,z);return (round(75+(a-lo[0])*fit),round(176+(b-lo[1])*fit))
        faces=[((0,1,0),[(0,1,0),(1,1,0),(1,1,1),(0,1,1)],1.12),
               ((0,0,-1),[(0,0,0),(1,0,0),(1,1,0),(0,1,0)],.88),
               ((-1,0,0),[(0,0,0),(0,1,0),(0,1,1),(0,0,1)],.68)]
        for (x,y,z),b in sorted(model.items(),key=lambda item:5.94*item[0][0]-4.922*item[0][1]+8.745*item[0][2],reverse=True):
            rgb=COLORS[b.split(" ")[0]]
            for (dx,dy,dz),corners,shade in faces:
                if (x+dx,y+dy,z+dz) not in model:
                    color=tuple(min(255,round(c*shade)) for c in rgb)
                    d.polygon([proj(x+a,y+h*h2(b)/2,z+c) for a,h,c in corners],fill=color)
        d.text((60,30),title,font=font(46),fill=(231,223,208))
        d.text((62,95),subtitle,font=font(24),fill=(142,220,204))
        d.text((62,1401),"Actual generated block geometry / schematic thin blocks and glass / not an in-game screenshot",font=font(22),fill=(165,169,181))
        d.text((62,1445),f"225 x 239-block estate  |  42 main rooms + attic + crypt  |  {metrics['solid_blocks']:,} solid blocks",font=font(25),fill=(225,216,205))
        im.save(DOCS/filename)
    render(solids,"overview.png","THEMED HAUNTED HOUSE / GRAND ESTATE","Three main floors, four towers, a crypt, and haunted gardens")
    render({p:b for p,b in solids.items() if 7<=p[1]<=18},"ground_floor_cutaway.png",
           "INSIDE THE GRAND ESTATE","Ground floor cutaway / connected rooms, ballrooms, dining halls, and libraries")
    # Main stair cutaway proves there are traversable floors inside the large shell.
    render({p:b for p,b in solids.items() if -11<=p[0]<=11 and 73<=p[2]<=215 and p[1]<50},
           "staircase_cutaway.png","FIVE WALKABLE LEVELS","Crypt 0  /  ground +10  /  first +22  /  second +34  /  attic +46 feet heights")
    im=Image.new("RGB",(1850,1600),(19,21,29));d=ImageDraw.Draw(im)
    d.text((45,24),"THE ESTATE / FIVE FLOOR PLANS",font=font(40),fill=(231,223,208))
    d.text((45,85),"Cyan markers: validated guest destinations. Plans show the final furnished geometry, cut two blocks above each floor.",font=font(22),fill=(142,220,204))
    for panel,(floor,label) in enumerate(((-1,"CRYPT"),(9,"GROUND FLOOR"),(21,"FIRST FLOOR"),(33,"SECOND FLOOR"),(45,"ATTIC"))):
        ox=45+(panel%3)*610;oy=192+(panel//3)*693;scale=2.55
        d.text((ox,oy-48),label,font=font(27),fill=(231,223,208))
        for x in range(-95,96):
            for z in range(65,221):
                b=next((solids[(x,y,z)] for y in range(floor+2,floor-1,-1) if (x,y,z) in solids),None)
                if b:
                    px,py=ox+(95-x)*scale,oy+(220-z)*scale
                    d.rectangle((px,py,px+scale,py+scale),fill=COLORS[b.split(" ")[0]])
        names=[]
        for name,(x,h,z) in geo.GOALS.items():
            if h==2*(floor+1):
                names.append(name)
                px,py=ox+(95-x)*scale,oy+(220-z)*scale
                d.ellipse((px-3,py-3,px+3,py+3),fill=(92,255,226))
        d.text((ox,oy+415),f"{len(names)} reachable destinations / entrance below",font=font(21),fill=(142,220,204))
        for j,line in enumerate(("Library / ballroom / banquet / seance" if floor==9 else
                                  "Bedchambers / mirrors / archives / laboratories" if floor in (21,33) else
                                  "Six vaults off a central crypt aisle" if floor==-1 else
                                  "Six attic spaces under the main roof",)):
            d.text((ox,oy+449+j*28),line,font=font(20),fill=(207,206,209))
    ox,oy=1265,885
    for j,line in enumerate(("WALKING VALIDATION",f"{len(geo.GOALS)} destinations reached","Five connected guest levels","All 112 half-block treads checked","Two blocks of headroom","No jumping or flying required","","STRUCTURE LOADER","16 assets / 3 temporary areas","97 public + 4 callback commands")):
        d.text((ox,oy+j*39),line,font=font(24 if j in (0,7) else 22),fill=(142,220,204) if j in (0,7) else (225,216,205))
    im.save(DOCS/"floor_plans.png")


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--verify-catalog",action="store_true")
    parser.add_argument("--check",action="store_true",help="validate regenerated geometry against saved assets without writing")
    parser.add_argument("--preview-only",action="store_true",help="validate and render without exporting structures")
    args=parser.parse_args()
    print("Building the grand estate...",flush=True)
    scene=geo.build()
    print(f"Geometry: {len(scene):,} explicit cells. Checking walking routes...",flush=True)
    count,paths=walking(scene)
    materials=validate_palette(scene,args.verify_catalog)
    print(f"All {len(paths)} destinations reached. Measuring exact cuboid compression...",flush=True)
    compression=compressed_cuboids(scene)
    assert [min(p[a] for p in scene) for a in range(3)]+[max(p[a] for p in scene) for a in range(3)]==list(geo.BOUNDS)
    solids={p:b for p,b in scene.items() if b!="air"}
    assert [min(p[a] for p in solids) for a in range(3)]+[max(p[a] for p in solids) for a in range(3)]==list(geo.BOUNDS)
    metrics=dict(name="Themed Haunted House / Grand Estate",function=NAME,representation="native structures",
                 dimensions=dict(width=225,depth=239,height=98),caret_bounds=[list(geo.BOUNDS[:3]),list(geo.BOUNDS[3:])],
                 previous_dimensions=dict(width=65,depth=77,height=41),footprint_ratio=225*239/(65*77),
                 solid_blocks=len(solids),air_cells=len(scene)-len(solids),exact_cuboid_commands=compression,
                 rooms=geo.ROOMS,main_rooms=42,attic_spaces=6,crypt_vaults=6,tower_rooms=12,
                 walking_destinations={name:dict(left=p[0],feet_up=p[1]/2,forward=p[2],route_steps=len(paths[name])-1) for name,p in geo.GOALS.items()},
                 reachable_surfaces=count,stairs=[dict(name=n,width=b-a+1,steps=r*2,feet_from=f,feet_to=f+r) for n,a,b,z,f,r in geo.STAIRS],
                 materials=dict(sorted(Counter(scene.values()).items())),ticking_areas=3,
                 maximum_chunks_per_area=preload_check(),public_commands=97,callback_commands=4,total_commands=101,
                 bedrock_catalog=CATALOG,block_palette_version=nbt.BLOCK_VERSION)
    DOCS.mkdir(parents=True,exist_ok=True)
    texts=loader(metrics)
    print(f"Best exact solid encoding: {min(compression.values()):,} commands. Checking cardinal maps...",flush=True)
    validate_rotations(scene,texts)
    if not args.check:
        previews(scene,metrics,paths)
    if args.preview_only:
        print(json.dumps({k:v for k,v in metrics.items() if k not in ('materials','rooms','walking_destinations')},indent=2));return
    lookup={b:block(b) for b in materials}
    nbt.voxels={(x,y-BASE_Y,z):lookup[b] for (x,y,z),b in scene.items()}
    ASSETS.mkdir(parents=True,exist_ok=True)
    assets=[];total=0
    for i,j,a,b,z,w in specs():
        p=ASSETS/f"{NAME}_x{i}_z{j}.mcstructure"
        max_y=max(y-BASE_Y for x,y,zz in scene if a<=x<=b and z<=zz<=w)
        size=(b-a+1,max_y+1,w-z+1)
        if not args.check:
            nbt.write_structure(p,a,b,z,w,max_y)
        cells=nbt.validate_nbt(p,size,a,z);total+=cells
        assets.append(dict(file=p.name,size=list(size),cells=cells,bytes=p.stat().st_size))
        print(f"Validated structure {i},{j}: {cells:,} explicit cells",flush=True)
    assert total==len(scene)
    assert {p.name for p in ASSETS.glob(f"{NAME}_*.mcstructure")}=={a['file'] for a in assets}
    for name,text in texts.items():
        write_text(FUNCTIONS/name,text,args.check)
    validate_functions(texts)
    metrics['world_height_regression_feet_y']=validate_world_heights(texts,assets)
    metrics['overworld_feet_y_range']=[-63,223]
    metrics['terrace_height']=8
    metrics['structures']=assets
    metrics['validation']=dict(walking_destinations=True,all_stair_treads=True,exact_cuboid_reconstruction=True,
                               nbt_roundtrip=True,four_cardinal_voxel_maps=True,preload_coverage=True,in_game_tested=False)
    write_text(DOCS/"metrics.json",json.dumps(metrics,indent=2),args.check)
    print(json.dumps({k:v for k,v in metrics.items() if k not in ('materials','rooms','walking_destinations','structures')},indent=2))


if __name__=="__main__":
    main()
