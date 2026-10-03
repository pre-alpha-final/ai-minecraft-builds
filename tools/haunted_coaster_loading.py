"""Self-contained native loading and complete-map validation for Raven Manor."""

from collections import Counter
from itertools import product
import math
from pathlib import Path
import re
import tempfile

import cardinal_snap as snap
import haunted_coaster_geometry as geo
import generate_skyline_cyclone as nbt

ROOT = Path(__file__).resolve().parents[1]
NAME = "theme_park_haunted_house_roller_coaster"
LOADED = f"_{NAME}_tickingarea_loaded"
CLEANUP = f"_{NAME}_remove_tickingarea"
ASSETS = ROOT / "src/structures/ai_minecraft_builds"
FACING = (("@s[rym=-44,ry=44]",0), ("@s[rym=45,ry=134]",90),
          ("@s[rym=135,ry=180]",180), ("@s[rym=-180,ry=-135]",180),
          ("@s[rym=-134,ry=-45]",270))
TURN = {0:lambda x,z:(x,z),90:lambda x,z:(-z,x),
        180:lambda x,z:(-x,-z),270:lambda x,z:(z,-x)}


def specs():
    return [(f"{NAME}_x{i}_z{j}",x,min(x+63,176),z,min(z+63,303))
            for j,z in enumerate(range(32,304,64),1)
            for i,x in enumerate(range(-175,177,64),1)]


def buckets(scene):
    result={name:{} for name,*_ in specs()}
    for p,block in scene.items():
        x,_,z=p
        name=f"{NAME}_x{(x+175)//64+1}_z{(z-32)//64+1}"
        result[name][p]=block
    assert sum(map(len,result.values()))==len(scene)
    return result


def preload_counts():
    covered=Counter()
    counts=[]
    for _,a,b,z,w in geo.AREAS:
        covered.update(product(range(a,b+1),range(z,w+1)))
        counts.append(math.ceil((b-a+16)/16)*math.ceil((w-z+16)/16))
    assert set(covered.values())=={1}
    assert set(covered)==set(product(range(-175,177),range(32,304)))
    assert len(counts)==5 and max(counts)<=100
    return counts


def loader(metrics):
    counts=preload_counts()
    header=[
        "# RAVEN MANOR: THE WIDOW'S PLUNGE - Minecraft Bedrock Edition 1.21.50+",
        f"# Run /function {NAME} as a player at ground level, facing a cardinal direction with a horizontal view.",
        "# Physical scale matches Pharaoh's Curse: width 352, depth 272, height 101; no rail-count target.",
        "# Front-center observation origin; nearest blocks begin 32 ahead. Bounds ^-175 ^-1 ^32 to ^176 ^99 ^303.",
        "# Stand with feet at Overworld Y -63 through 220. Choose a new clear flat site for this larger version.",
        "# Follow the right path and eighteen half-block steps to the carriage-house station.",
        "# Board beside ^-125 ^9 ^64; push left (+local left) toward the clock-tower lift.",
        f"# {metrics['rails']:,} connected rails; {metrics['curves']} curves; {metrics['major_climbs']} climbs and {metrics['major_drops']} drops >=20 blocks.",
        f"# Rail height {metrics['rail_height'][0]}..{metrics['rail_height'][1]}; largest drop {metrics['largest_drop']} blocks; crossing separation 18.",
        "# Mansion, ancestor crypt, mirror gallery, skull gate, mausoleum, spectral memorial, forest, and lagoon.",
        "# Functional minecart loop; ghosts, raven, clock hands and all haunt effects are static scenery.",
        f"# {metrics['non_air_blocks']:,} non-air blocks + {metrics['air_cells']:,} explicit air cells in 30 native assets.",
        "# Five of the world's ten ticking-area slots must be free; each preload rectangle covers at most 99 chunks.",
        "# Placement stays in player context and can queue while the complete site preloads.",
        "# Cleanup refreshes to 300 ticks after each area loads; wait for placement and cleanup before rerunning.",
        "# WARNING: overwrites the footprint, rooms and ride corridor. Back up first or use a disposable world.",
        "# Omitted exterior air remains untouched. The larger footprint replaces the earlier small design.",
        "# Public loader COMMAND_TOTAL commands including snap; callbacks 1+5 commands; exactly three lifecycle functions.",
        "# Rebuild/reimport after source changes. Generator tools/generate_haunted_house_coaster.py.",
        "# In-game verification remains outstanding.",
        "", "# === PRELOAD THE ENTIRE ESTATE ===",
        'tellraw @s {"rawtext":[{"text":"Raven Manor v1.0.25: loading the grand estate. Five free ticking-area slots are required; wait for queued placement."}]}',
        f"schedule on_area_loaded clear function {LOADED}",
        f"schedule delay clear {CLEANUP}",
        # Retire this loader's former small-build area on pack upgrades.
        "tickingarea remove haunted_house_coaster",
    ]
    commands=[f"tickingarea remove {name}" for name,*_ in geo.AREAS]
    commands += [f"tickingarea add ^{a} ^0 ^{z} ^{b} ^0 ^{w} {name} true"
                 for name,a,b,z,w in geo.AREAS]
    commands += [f"schedule on_area_loaded add tickingarea {name} {LOADED}" for name,*_ in geo.AREAS]
    for selector,angle in FACING:
        commands += ["",f"# === {angle}-DEGREE PLACEMENT: {selector} ==="]
        for name,x0,x1,z0,z1 in specs():
            ax=x1 if angle in (180,270) else x0
            az=z1 if angle in (90,180) else z0
            commands.append(f"execute if entity {selector} run structure load ai_minecraft_builds:{name} "
                            f"^{ax} ^-1 ^{az} {angle}_degrees none")
    lines=snap.transform_public_lines(header+commands)
    count=sum(snap.is_command(line) for line in lines)
    assert count==174 and count<10000
    metrics.update(commands=count,callback_commands=6,loader_lifecycle_commands=count+6,
                   ticking_areas=5,maximum_preload_chunks=max(counts),preload_chunks=counts,structures=30,
                   scale_interpretation="Pharaoh's Curse physical envelope and landmark ambition",
                   reference_dimensions=dict(width=352,depth=272,height=101))
    return {
        f"{NAME}.mcfunction":"\n".join(line.replace("COMMAND_TOTAL",str(count)) for line in lines),
        f"{LOADED}.mcfunction":"# INTERNAL CALLBACK - do not run manually. Refresh cleanup after every area loads.\n"
                               f"schedule delay add {CLEANUP} 300 replace",
        f"{CLEANUP}.mcfunction":"# INTERNAL CALLBACK - do not run manually. Remove only this estate's five areas.\n"+
                               "\n".join(f"tickingarea remove {name}" for name,*_ in geo.AREAS),
    }


def validate_loader(texts,scene,path):
    public=texts[f"{NAME}.mcfunction"].splitlines()
    snap.validate_public_lines(public)
    commands=[line.removeprefix(snap.REANCHOR_PREFIX) for line in public if snap.is_command(line)]
    expected=[f"schedule on_area_loaded clear function {LOADED}",f"schedule delay clear {CLEANUP}",
              "tickingarea remove haunted_house_coaster"]
    expected += [f"tickingarea remove {name}" for name,*_ in geo.AREAS]
    expected += [f"tickingarea add ^{a} ^0 ^{z} ^{b} ^0 ^{w} {name} true" for name,a,b,z,w in geo.AREAS]
    expected += [f"schedule on_area_loaded add tickingarea {name} {LOADED}" for name,*_ in geo.AREAS]
    assert commands[6:24]==expected
    assert texts[f"{LOADED}.mcfunction"].splitlines()[1:]==[f"schedule delay add {CLEANUP} 300 replace"]
    assert texts[f"{CLEANUP}.mcfunction"].splitlines()[1:]==[f"tickingarea remove {name}" for name,*_ in geo.AREAS]
    for name,text in texts.items():
        lines=text.splitlines()
        assert lines[-1] and all(line==line.rstrip() and not line.startswith("/") for line in lines)
        if name.startswith("_"):
            assert lines[0].startswith("# INTERNAL CALLBACK - do not run manually")
            assert not any(line in snap.SNAP_COMMANDS for line in lines)
    placed=[c for c in commands if c.startswith("execute if entity ") and " run structure load " in c]
    assert len(placed)==150
    parts=buckets(scene)
    state_turn={0:1,1:0,2:5,5:3,3:4,4:2,6:7,7:8,8:9,9:6}
    for selector,angle in FACING:
        seen=set()
        for name,x0,x1,z0,z1 in specs():
            selected=[c for c in placed if c.startswith(f"execute if entity {selector} run ") and f":{name} " in c]
            assert len(selected)==1
            match=re.fullmatch(rf"execute if entity {re.escape(selector)} run structure load ai_minecraft_builds:{name} "
                               rf"\^(-?\d+) \^(-?\d+) \^(-?\d+) {angle}_degrees none",selected[0])
            assert match
            ax,ay,az=map(int,match.groups());sx=x1-x0+1;sz=z1-z0+1
            height=max(y for _,y,_ in parts[name])+2
            for (x,y,z),block in parts[name].items():
                u,v=x-x0,z-z0
                if angle==0: wx,wz=ax+u,az+v
                elif angle==90: wx,wz=-az+sz-1-v,ax+u
                elif angle==180: wx,wz=-ax+sx-1-u,-az+sz-1-v
                else: wx,wz=az+v,-ax+sx-1-u
                lx,lz=((wx,wz) if angle==0 else (wz,-wx) if angle==90
                       else (-wx,-wz) if angle==180 else (-wz,wx))
                p=(lx,ay+y+1,lz)
                assert p==(x,y,z) and p not in seen and scene[p]==block
                seen.add(p)
            assert -64<=-63+ay and 220+ay+height-1<=319
        assert len(seen)==len(scene)
        # Every rectangle is checked for each yaw and each world-chunk alignment.
        turn=TURN[angle]
        for _,a,b,z,w in geo.AREAS:
            for rx,rz in product(range(16),repeat=2):
                corners=[turn(x,zz) for x in (a,b) for zz in (z,w)]
                count=((max(x for x,_ in corners)+rx)//16-(min(x for x,_ in corners)+rx)//16+1)*\
                      ((max(zz for _,zz in corners)+rz)//16-(min(zz for _,zz in corners)+rz)//16+1)
                assert count<=100
        world_path=[(*turn(x,z),y) for x,z,y in path]
        for i,(x,z,y) in enumerate(path):
            state=dict(scene[x,y+1,z].states)["rail_direction"]
            for _ in range(angle//90): state=state_turn[state]
            expected,_=nbt.rail_state(world_path,i)
            assert dict(expected.states)["rail_direction"]==state
    preload_counts()


def structure_assets(scene,check):
    nbt.BLOCK_VERSION=18_161_159
    ASSETS.mkdir(parents=True,exist_ok=True)
    parts=buckets(scene)
    assets=[];decoded_total=0
    with tempfile.TemporaryDirectory(prefix="raven-manor-validation-") as directory:
        for name,x0,x1,z0,z1 in specs():
            nbt.voxels={(x,y+1,z):block for (x,y,z),block in parts[name].items()}
            max_y=max(y for _,y,_ in nbt.voxels)
            final=ASSETS/f"{name}.mcstructure";output=Path(directory)/final.name
            occupied,size_bytes=nbt.write_structure(output,x0,x1,z0,z1,max_y)
            size=(x1-x0+1,max_y+1,z1-z0+1)
            decoded=nbt.validate_nbt(output,size,x0,z0)
            assert occupied==decoded==len(parts[name])
            decoded_total+=decoded
            if check:
                assert final.read_bytes()==output.read_bytes(),f"stale structure: {final}"
            else:
                final.write_bytes(output.read_bytes())
            assets.append(dict(file=final.name,size=list(size),cells=decoded,bytes=size_bytes,
                               local_min=[x0,-1,z0],local_max=[x1,max_y-1,z1]))
    assert decoded_total==len(scene)
    return assets
