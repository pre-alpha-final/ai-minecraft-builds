"""Architectural model for the large walk-through haunted estate.

All positions are caret-local left/up/forward, including negative crypt levels.
Only intrinsically rotation-invariant blocks/states are used. Air is explicit
inside buildings; omitted cells above the gardens remain structure void.
"""
from itertools import product
import math

BOUNDS = (-112, -1, 24, 112, 96, 262)
AIR = "air"
SLAB = 'dark_oak_slab ["minecraft:vertical_half"="bottom"]'
STONE_SLAB = 'polished_blackstone_brick_slab ["minecraft:vertical_half"="bottom"]'
V = {}
ROOMS = []
GOALS = {}
STAIRS = []


def box(x0, y0, z0, x1, y1, z1, b):
    assert x0 <= x1 and y0 <= y1 and z0 <= z1
    assert -112 <= x0 <= x1 <= 112 and -9 <= y0 <= y1 <= 96 and 24 <= z0 <= z1 <= 262, (x0,y0,z0,x1,y1,z1)
    for p in product(range(x0,x1+1), range(y0,y1+1), range(z0,z1+1)):
        V[p] = b


def put(x,y,z,b):
    box(x,y,z,x,y,z,b)


def shell(x0,y0,z0,x1,y1,z1,b):
    box(x0,y0,z0,x1,y1,z0,b)
    box(x0,y0,z1,x1,y1,z1,b)
    box(x0,y0,z0,x0,y1,z1,b)
    box(x1,y0,z0,x1,y1,z1,b)


def goal(name,x,feet,z):
    assert name not in GOALS
    GOALS[name] = (x, 2*feet, z)


def lamp(x,y,z):
    put(x,y,z,"polished_blackstone_bricks")
    put(x,y+1,z,"soul_lantern")


def chandelier(x,y,z,r=3):
    box(x,y+1,z,x,y+3,z,"iron_bars")
    box(x-r,y,z,x+r,y,z,"polished_blackstone_bricks")
    box(x,y,z-r,x,y,z+r,"polished_blackstone_bricks")
    for a,b in ((r,0),(-r,0),(0,r),(0,-r)):
        put(x+a,y+1,z+b,"soul_lantern")


def parquet(x0,x1,z0,z1,y,marble=False):
    # Traditional 2 x 2 parquet or contrasting stone dance-floor tiles.
    # Every tile remains visible and walkable; no hidden count padding.
    colors = ("polished_andesite","polished_blackstone_bricks") if marble else ("dark_oak_planks","spruce_planks")
    for x in range(x0,x1+1):
        for z in range(z0,z1+1):
            edge = min(x-x0,x1-x,z-z0,z1-z)
            b = "dark_oak_planks" if edge < 2 else colors[((x-x0)//2+(z-z0)//2)%2]
            put(x,y,z,b)


def rug(x0,x1,z0,z1,y,color="red_wool"):
    box(x0,y,z0,x1,y,z1,"black_wool")
    box(x0+1,y,z0+1,x1-1,y,z1-1,color)


def stair(name,x0,x1,z0,feet,rise,slab=SLAB,material="dark_oak_planks",guard=True):
    # Shaft explicitly clears old terrain and intersecting floors before treads.
    box(x0,feet,z0,x1,feet+rise+3,z0+2*rise-1,AIR)
    for i in range(2*rise):
        y,z = feet+i//2,z0+i
        if y > feet:
            box(x0,feet,z,x1,y-1,z,material)
        box(x0,y,z,x1,y,z,slab if i%2==0 else material)
        if guard:
            for x in (x0-1,x1+1):
                box(x,feet,z,x,y+1,z,material)
    if guard:
        for x in (x0-1,x1+1):
            box(x,feet+rise,z0,x,feet+rise+1,z0+2*rise-1,"iron_bars")
        box(x0,feet+rise,z0-1,x1,feet+rise+1,z0-1,"iron_bars")
    STAIRS.append((name,x0,x1,z0,feet,rise))


def ghost(x,y,z,r=2):
    box(x-r,y,z,x+r,y+2*r+1,z+2,"white_wool")
    box(x-r-2,y+2,z,x+r+2,y+3,z+1,"white_wool")
    for dx in (-1,1):
        put(x+dx,y+2*r,z-1,"black_concrete")
    put(x,y+2,z-1,"black_concrete")


def room(name,kind,x0,x1,z0,z1,floor):
    """Furnish a room while preserving a perimeter circulation aisle."""
    ROOMS.append(dict(name=name,kind=kind,bounds=[x0,floor,z0,x1,floor+10,z1]))
    y,cx,cz = floor+1,(x0+x1)//2,(z0+z1)//2
    goal(name,x0+2,y,z0+3)
    w,d = x1-x0,z1-z0
    chandelier(cx,floor+8,cz,3 if w<30 else 5)
    for x in (x0+2,x1-2):
        lamp(x,y,z1-2)
    # Ceiling coffers and wainscot make rooms legible from the inside.
    for z in range(z0+4,z1-2,8):
        beam=floor+7 if floor==37 else floor+10
        box(x0,beam,z,x1,beam,z,"dark_oak_log")
    if kind in ("library","study","archive"):
        for z in range(z0+7,z1-4,7):
            box(x1-2,y,z,x1-1,y+5,z+3,"bookshelf")
        box(cx-3,y,cz-3,cx+3,y,cz+2,"dark_oak_planks")
        put(cx,y+1,cz,"enchanting_table")
        box(cx-5,y,cz,cx-5,y,cz+2,SLAB)
    elif kind in ("banquet","kitchen"):
        if kind=="kitchen":
            box(x1-3,y,z0+6,x1-1,y+1,z1-4,"polished_andesite")
            for z in range(z0+7,z1-4,5):
                put(x1-2,y+2,z,"flower_pot")
        box(cx-2,y,z0+8,cx+2,y,z1-7,"dark_oak_planks")
        for z in range(z0+8,z1-6,4):
            for x in (cx-5,cx+5):
                put(x,y,z,SLAB)
                box(x+(-1 if x<cx else 1),y,z,x+(-1 if x<cx else 1),y+2,z,"dark_oak_planks")
            put(cx,y+1,z,"soul_lantern")
    elif kind in ("seance","laboratory"):
        rug(cx-6,cx+6,cz-6,cz+6,floor,"purple_wool")
        box(cx-3,y,cz-3,cx+3,y,cz+3,"polished_blackstone_bricks")
        put(cx,y+1,cz,"amethyst_block")
        for dx,dz in ((-3,-3),(-3,3),(3,-3),(3,3)):
            put(cx+dx,y+1,cz+dz,"soul_lantern")
        if kind=="laboratory":
            for z in (z0+7,z1-6):
                box(x1-4,y,z,x1-2,y+3,z+2,"lime_stained_glass")
                put(x1-3,y+1,z+1,"sea_lantern")
    elif kind in ("bedroom","nursery","servants"):
        for bx in ([cx] if w<30 else [cx-9,cx+9]):
            box(bx-3,y,cz-5,bx+3,y,cz+3,"red_wool")
            box(bx-2,y,cz-5,bx+2,y,cz-4,"white_wool")
            if kind!="servants":
                for dx,dz in ((-4,-6),(-4,4),(4,-6),(4,4)):
                    box(bx+dx,y,cz+dz,bx+dx,y+6,cz+dz,"dark_oak_log")
                box(bx-4,y+7,cz-6,bx+4,y+7,cz+4,"purple_wool")
        if kind=="nursery":
            for i,b in enumerate(("red_wool","blue_wool","yellow_wool")):
                put(x0+5+i*3,y,z1-5,b)
    elif kind in ("gallery","mirrors","armor"):
        for z in range(z0+6,z1-4,7):
            box(x1-2,y+1,z-2,x1-2,y+6,z+2,"gold_block")
            box(x1-3,y+2,z-1,x1-3,y+5,z+1,"purple_stained_glass" if kind=="mirrors" else "black_concrete")
            put(x1-4,y+4,z,"sea_lantern")
        for z in (cz-6,cz+6):
            box(cx-3,y,z,cx+3,y,z,SLAB)
    elif kind in ("ballroom","music","theater"):
        # Large open dance floor; raised stage occupies only the far end.
        box(x0+5,y,z1-8,x1-5,y,z1-4,"dark_oak_planks")
        box(x0+6,y,z1-9,x1-6,y,z1-9,SLAB)
        for x in range(x0+7,x1-5,3):
            h=3+round(3*abs(math.sin(x)))
            box(x,y+1,z1-4,x,y+h,z1-4,"bone_block")
        if kind=="theater":
            for z in range(z0+8,cz+4,4):
                for x in range(x0+6,x1-5,4):
                    put(x,y,z,SLAB)
        if kind=="ballroom":
            ghost(cx,y+4,z1-7)
    elif kind in ("conservatory","observatory"):
        for dx,dz in ((-5,-5),(-5,5),(5,-5),(5,5)):
            box(cx+dx-1,y,cz+dz-1,cx+dx+1,y,cz+dz+1,"moss_block")
            box(cx+dx,y+1,cz+dz,cx+dx,y+4,cz+dz,"dark_oak_log")
            put(cx+dx,y+5,cz+dz,"amethyst_block")
        if kind=="observatory":
            box(cx-1,y,cz-1,cx+1,y+1,cz+1,"polished_blackstone_bricks")
            box(cx,y+2,cz,cx+4,y+2,cz,"gold_block")
    elif kind in ("crypt","relics"):
        for bx in (cx-5,cx+5):
            box(bx-1,y,cz-4,bx+1,y+1,cz+3,"polished_blackstone_bricks")
            box(bx,y+2,cz-3,bx,y+2,cz+2,"bone_block")
        put(cx,y+1,z1-5,"amethyst_block")
    put(x1-1,floor+9,z1-1,"web")


def block_building(x0,x1,z0,z1):
    box(x0,0,z0,x1,38,z1,"stone_bricks")
    box(x0+1,2,z0+1,x1-1,38,z1-1,AIR)
    shell(x0,2,z0,x1,37,z1,"purple_terracotta")
    for y in (1,13,25,37):
        parquet(x0+1,x1-1,z0+1,z1-1,y)
    for y in (1,12,24,36,38):
        shell(x0-1,y,z0-1,x1+1,y,z1+1,"polished_blackstone_bricks")
    for z in range(z0+4,z1-2,8):
        for x in (x0,x1):
            box(x,2,z,x,37,z,"dark_oak_log")
    for x in range(x0+4,x1-2,8):
        for z in (z0,z1):
            box(x,2,z,x,37,z,"dark_oak_log")


def roof(x0,x1,z0,z1,base,axis="x"):
    # Real hollow shell, staggered slate courses, decorative ribs and gables.
    lo,hi = (x0,x1) if axis=="x" else (z0,z1)
    for k in range((hi-lo)//2+1):
        a,b,y=lo+k,hi-k,base+k
        for e in {a,b}:
            runs = range(z0,z1+1) if axis=="x" else range(x0,x1+1)
            for t in runs:
                block="deepslate_tiles" if (t//3+k)%5 else "polished_blackstone_bricks"
                put(e,y,t,block) if axis=="x" else put(t,y,e,block)
        if axis=="x":
            for z in (z0+1,z1-1):
                box(a,y,z,b,y,z,"purple_terracotta")
            for z in range(z0,z1+1,16):
                put(a,y,z,"polished_blackstone_bricks")
                put(b,y,z,"polished_blackstone_bricks")
        else:
            for x in (x0+1,x1-1):
                box(x,y,a,x,y,b,"purple_terracotta")


def windows():
    # Repeating arched windows have inset stained-glass diamonds and lead lines.
    for base in (1,13,25):
        for x in range(-28,29,14):
            for z in (72,216):
                box(x-3,base+3,z,x+3,base+9,z,"stone_bricks")
                box(x-2,base+4,z,x+2,base+8,z,"purple_stained_glass")
                put(x,base+9,z,"purple_stained_glass")
                for y in range(base+4,base+9):
                    put(x,y,z,"black_stained_glass")
                put(x-1,base+6,z,"sea_lantern")
        for x in (-88,88):
            for z in range(104,182,13):
                box(x,base+3,z-3,x,base+9,z+3,"stone_bricks")
                box(x,base+4,z-2,x,base+8,z+2,"purple_stained_glass")
                box(x,base+4,z,x,base+8,z,"black_stained_glass")
        for x in (-36,36):
            for z in (80,202):
                box(x,base+4,z-2,x,base+8,z+2,"purple_stained_glass")
        for x in (-63,-47,47,63):
            for z in (92,188):
                box(x-2,base+4,z,x+2,base+8,z,"purple_stained_glass")


def tower(cx,cz,height):
    # Octagonal shell, clear internal rooms, four landings reached from the wings.
    footprint={(x,z) for x in range(cx-12,cx+13) for z in range(cz-12,cz+13)
               if abs(x-cx)+abs(z-cz)<=19}
    for x,z in footprint:
        boundary=any((x+dx,z+dz) not in footprint for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)))
        box(x,0,z,x,height,z,"stone_bricks" if boundary else AIR)
        for floor in (1,13,25,37,height):
            put(x,floor,z,"polished_blackstone_bricks" if boundary else "dark_oak_planks")
        if boundary:
            for floor in (1,13,25,37):
                if (x==cx-12 or x==cx+12) and abs(z-cz)<3:
                    box(x,floor+4,z,x,floor+9,z,"purple_stained_glass")
                if (z==cz-12 or z==cz+12) and abs(x-cx)<3:
                    box(x,floor+4,z,x,floor+9,z,"purple_stained_glass")
    # Portals open inward toward adjoining wing; attic only reaches central roof.
    for floor in (1,13,25):
        z=cz+12 if cz<144 else cz-12
        box(cx-3,floor+1,z-1,cx+3,floor+5,z+1,AIR)
        goal(f"{'Front' if cz<144 else 'Rear'} {'left' if cx>0 else 'right'} tower / floor {floor}",cx,floor+1,cz)
        lamp(cx-7,floor+1,cz)
    # No unadvertised inaccessible fourth guest floor: upper tower is scenery.
    # Clock faces and stone banding articulate the otherwise tall belfry shell.
    for y in range(49,height,12):
        for x,z in footprint:
            if any((x+dx,z+dz) not in footprint for dx,dz in ((1,0),(-1,0),(0,1),(0,-1))):
                put(x,y,z,"polished_blackstone_bricks")
    cy=height-7
    for dx in range(-5,6):
        for dy in range(-5,6):
            r=math.hypot(dx,dy)
            if r<=5:
                put(cx+dx,cy+dy,cz-12,"gold_block" if r>4 else "bone_block")
    box(cx,cy,cz-13,cx,cy+3,cz-13,"black_concrete")
    box(cx,cy,cz-13,cx+2,cy,cz-13,"black_concrete")
    for r in range(13,-1,-1):
        y=height+1+(13-r)
        for x in range(cx-r,cx+r+1):
            for z in range(cz-r,cz+r+1):
                if abs(x-cx)+abs(z-cz)<=max(0,int(r*1.6)):
                    put(x,y,z,"deepslate_tiles")
    box(cx,height+15,cz,cx,height+18,cz,"iron_bars")


def grounds():
    box(-112,-1,24,112,-1,262,"grass_block")
    # Clear guest-height obstacles across the grounds, preserving sparse space aloft.
    box(-112,0,24,112,3,262,AIR)
    for x in (-112,112):
        box(x,0,24,x,1,262,"mossy_stone_bricks")
        box(x,2,24,x,4,262,"iron_bars")
    for z in (26,262):
        box(-112,0,z,112,1,z,"mossy_stone_bricks")
        box(-112,2,z,112,4,z,"iron_bars")
    box(-6,0,26,6,4,26,AIR)
    box(-6,-1,24,6,-1,72,"mossy_stone_bricks")
    for x in (-9,9):
        box(x,0,26,x,9,28,"polished_blackstone_bricks")
        lamp(x,10,27)
    box(-9,9,26,9,10,28,"polished_blackstone_bricks")
    # Lateral promenades connect the cemetery and garden courts.
    for z in (52,226,250):
        box(-105,-1,z-2,105,-1,z+2,"mossy_stone_bricks")
    for x in (-103,103):
        box(x-2,-1,40,x+2,-1,250,"mossy_stone_bricks")
    for x in (-9,9):
        for z in range(38,68,10):
            lamp(x,0,z)
    for x in range(-98,99,14):
        for z in (49,229,253):
            lamp(x,0,z)
    # Cemetery occupies its own front court, with aisles between every row.
    for x in range(28,94,10):
        for z in (34,44,61):
            box(x-2,-1,z,x+2,-1,z+4,"podzol")
            box(x-2,0,z+4,x+2,1,z+4,"mossy_stone_bricks")
            box(x,2,z+4,x,3,z+4,"chiseled_stone_bricks")
    goal("Cemetery",20,0,44)
    # A low, navigable rose-knot garden; lanes stay open to all four sides.
    for x in range(-95,-19,12):
        for z in (35,61):
            shell(x,0,z,x+7,1,z+7,"moss_block")
            box(x+2,0,z+2,x+5,0,z+5,"red_wool")
    goal("Rose knot garden",-20,0,44)
    for cx,cz in ((-102,76),(102,76),(-102,202),(102,202),(-72,242),(72,242)):
        box(cx,0,cz,cx+1,14,cz+1,"dark_oak_log")
        for s in (-1,1):
            for i in range(7):
                box(cx+s*i,8+i//2,cz,cx+s*i+1,9+i//2,cz+1,"dark_oak_log")
            box(cx+s*6,11,cz,cx+s*6,17,cz,"dark_oak_log")
        box(cx,12,cz-5,cx,12,cz+5,"dark_oak_log")
        put(cx,13,cz+5,"web")
    # Memorial sculpture and broad paths behind the house.
    box(-7,-1,216,7,-1,251,"mossy_stone_bricks")
    box(-12,0,235,12,0,246,"stone_bricks")
    for x in (-10,10):
        box(x,1,239,x,7,241,"chiseled_stone_bricks")
        lamp(x,8,240)
    ghost(0,4,242,4)
    goal("Rear memorial garden",0,0,231)


def build():
    V.clear(); ROOMS.clear(); GOALS.clear(); STAIRS.clear()
    grounds()
    # Three connected building volumes; wings are deliberately lower than the nave.
    block_building(-36,36,72,216)
    block_building(-88,-37,92,188)
    block_building(37,88,92,188)
    # Main floor hall is marble; the side rooms retain warm parquet.
    for f in (1,13,25,37):
        parquet(-11,11,73,215,f,True)
    # Four rooms along each side of the center, three larger halls in each wing.
    core_kinds=[
        [("Whispering library","library"),("Seance salon","seance"),("Music room","music"),("Embalmer study","study"),
         ("Ghost banquet","banquet"),("Abandoned kitchen","kitchen"),("Winter parlor","gallery"),("Poison conservatory","conservatory")],
        [("Occult archive","archive"),("Velvet bedchamber","bedroom"),("Watchful portraits","gallery"),("Moon study","study"),
         ("Forgotten nursery","nursery"),("Guest bedchamber","bedroom"),("Alchemist laboratory","laboratory"),("Broken mirrors","mirrors")],
        [("Astronomer library","library"),("Raven bedchamber","bedroom"),("Cursed relics","relics"),("Spirit observatory","observatory"),
         ("Doll nursery","nursery"),("Countess suite","bedroom"),("Forbidden experiments","laboratory"),("Midnight music","music")]]
    wing_kinds=[[("Grand ballroom","ballroom"),("Hall of mirrors","mirrors"),("Funeral theater","theater"),
                 ("Servants dining hall","banquet"),("Armor gallery","armor"),("Winter orangery","conservatory")],
                [("Long library","library"),("Royal apartments","bedroom"),("Masked ball salon","ballroom"),
                 ("Servants quarters","servants"),("Family portrait hall","gallery"),("Crystal laboratory","laboratory")],
                [("Lost manuscripts","archive"),("Phantom theater","theater"),("Astral gallery","observatory"),
                 ("Doll collection","nursery"),("Midnight banquet","banquet"),("Relic exhibition","relics")]]
    for level,f in enumerate((1,13,25)):
        for x in (-12,12):
            box(x,f+1,73,x,f+11,215,"dark_oak_planks")
        for z in (108,144,180):
            for a,b in ((-35,-13),(13,35)):
                box(a,f+1,z,b,f+11,z,"purple_terracotta")
        for side,(a,b) in enumerate(((-35,-13),(13,35))):
            for j,(za,zb) in enumerate(((73,107),(109,143),(145,179),(181,215))):
                name,kind=core_kinds[level][side*4+j]
                room(name,kind,a,b,za,zb,f)
                x=-12 if side==0 else 12
                z=(za+zb)//2
                box(x,f+1,z-2,x,f+6,z+2,AIR)
                put(x,f+7,z,AIR)
        for side,(a,b) in enumerate(((-87,-38),(38,87))):
            for z in (124,156):
                box(a,f+1,z,b,f+11,z,"purple_terracotta")
            for j,(za,zb) in enumerate(((93,123),(125,155),(157,187))):
                name,kind=wing_kinds[level][side*3+j]
                if kind in ("ballroom","theater","mirrors"):
                    parquet(a,b,za,zb,f,True)
                room(name,kind,a,b,za,zb,f)
                x=-37 if side==0 else 37
                # Cross both adjacent exterior walls and their trim at the join.
                z=104+j*32
                box(x-2,f+1,z-2,x+2,f+6,z+2,AIR)
                box(x-2,f,z-2,x+2,f,z+2,"dark_oak_planks")
        goal(f"Main hall / level {level+1}",0,f+1,150)
    roof(-38,38,70,218,38)
    for a,b in ((-90,-35),(35,90)):
        for z in (91,123,155):
            roof(a,b,z,z+34,38,"z")
    windows()
    # Central rose windows and articulated gable facade.
    for z in (71,217):
        for x in range(-12,13):
            for y in range(43,68):
                r=math.hypot(x,y-55)
                if 9<r<12:
                    put(x,y,z,"stone_bricks")
                elif r<=9:
                    put(x,y,z,"purple_stained_glass" if x and y!=55 else "black_stained_glass")
    for x,z,h in ((-78,88,62),(78,88,66),(-78,192,70),(78,192,64)):
        tower(x,z,h)
    # Attic rooms sit under the high central roof, with no inaccessible wing floor.
    for side,(a,b) in enumerate(((-30,-13),(13,30))):
        for j,(za,zb) in enumerate(((78,115),(117,154),(156,210))):
            name=f"{'West' if side==0 else 'East'} attic / {['relic store','forgotten archive','ghost gallery'][j]}"
            room(name,('relics','archive','gallery')[j],a,b,za,zb,37)
    goal("Attic central landing",0,38,197)
    for z in (90,145,200):
        ghost(0,44,z,3)
    # Crypt is excavated below the central manor; a broad aisle links six vaults.
    box(-35,-9,90,35,-1,208,"stone_bricks")
    box(-34,-8,91,34,-2,207,AIR)
    parquet(-34,34,91,207,-9,True)
    for x in (-12,12):
        box(x,-8,91,x,-2,207,"mossy_stone_bricks")
    for side,(a,b) in enumerate(((-34,-13),(13,34))):
        for j,(za,zb) in enumerate(((92,128),(130,166),(168,206))):
            if j:
                box(a,-8,za-1,b,-2,za-1,"mossy_stone_bricks")
            name=f"{'West' if side==0 else 'East'} crypt / {['ancestor vault','ossuary','sealed relics'][j]}"
            # Crypt furniture uses lower lights so its ceiling remains intact.
            cx,cz=(a+b)//2,(za+zb)//2
            ROOMS.append(dict(name=name,kind="crypt",bounds=[a,-9,za,b,-2,zb]))
            goal(name,a+2,-8,za+3)
            for zz in (za+7,zb-7):
                box(cx-2,-8,zz-2,cx+2,-7,zz+2,"polished_blackstone_bricks")
                box(cx,-6,zz-1,cx,-6,zz+1,"bone_block")
            lamp(a+2,-8,zb-3)
            x=-12 if side==0 else 12
            box(x,-8,cz-2,x,-4,cz+2,AIR)
    for z in range(96,208,18):
        lamp(-10,-8,z)
    # Open central foyer void and install all guest stairs after floor decorations.
    box(-8,13,99,8,13,143,AIR)
    for x in (-9,9):
        box(x,14,99,x,15,143,"iron_bars")
    box(-8,14,99,8,15,99,"iron_bars")
    stair("Grand stair",-6,6,120,2,12)
    stair("Upper stair",-8,-3,168,14,12)
    stair("Attic stair",3,8,168,26,12)
    stair("Crypt stair",3,8,92,-8,10)
    chandelier(0,20,108,5)
    # Door arches, porch, and accessible front balcony.
    box(-7,2,71,7,9,72,AIR)
    box(-5,10,71,5,10,72,AIR)
    box(-12,1,68,12,1,71,"polished_blackstone_bricks")
    stair("Porch",-7,7,64,0,2,STONE_SLAB,"polished_blackstone_bricks",False)
    for x in (-12,12):
        box(x,2,68,x,12,68,"stone_bricks")
    box(-13,13,66,13,13,71,"polished_blackstone_bricks")
    shell(-13,14,66,13,15,71,"iron_bars")
    box(-4,14,71,4,19,72,AIR)
    goal("Front balcony",0,14,69)
    box(-4,2,216,4,8,217,AIR)
    box(-4,1,217,4,1,218,"polished_blackstone_bricks")
    for i in range(3):
        y=1 if i==0 else 0
        box(-4,y,219+i,4,y,219+i,STONE_SLAB if i%2==0 else "polished_blackstone_bricks")
    # Foundation replaces the central promenade at the porch only; restore approach.
    goal("Front door",0,2,74)
    # A default Bedrock flat world has too little depth for a nine-block crypt.
    # Lift the intact estate eight blocks onto a retaining foundation, keeping
    # its lowest cell at -1, like the other ground-level park attractions.
    raised={(x,y+8,z):b for (x,y,z),b in V.items()}
    V.clear(); V.update(raised)
    for room_data in ROOMS:
        room_data['bounds'][1]+=8
        room_data['bounds'][4]+=8
    for name,(x,h,z) in list(GOALS.items()):
        GOALS[name]=(x,h+16,z)
    STAIRS[:]=[(n,a,b,z,f+8,r) for n,a,b,z,f,r in STAIRS]
    for p in product(range(-112,113),range(-1,7),range(24,263)):
        # Preserve the crypt's explicit air and walls inside the foundation.
        V.setdefault(p,"stone_bricks")
    # Open a ground-level approach through the front retaining wall and climb
    # the terrace on a full-width half-step ramp. The player stays at the origin.
    box(-7,0,24,7,14,27,AIR)
    box(-7,-1,24,7,-1,27,"mossy_stone_bricks")
    stair("Terrace entrance",-5,5,28,0,8,STONE_SLAB,"stone_bricks")
    goal("Terrace landing",0,8,48)
    return V
