"""Scene-first geometry for Raven Manor at Pharaoh's Curse's physical scale.

Coordinates are caret left/up/forward; route entries use left/forward/bed Y.
Landmarks and open courts determine the ride, with no rail-count target.
"""

from generate_jungle_leviathan import add_segment

BOUNDS = (-175, -1, 32, 176, 99, 303)
WAYPOINTS = [
    (-140,64,8), (-85,64,8), (-85,112,26), (110,112,92),
    (138,112,92), (138,140,92), (153,140,92), (153,264,12),
    (65,264,12), (65,214,12), (-45,214,12), (-45,282,46),
    (-150,282,72), (-160,282,72), (-160,140,20),
    (-125,140,20), (-125,162,20), (-105,162,20), (-105,180,20),
    (-15,180,56), (-15,88,14), (85,88,14), (85,48,14), (-140,48,8),
]
LANDMARKS = [
    ("01  RAVEN GATE / ARRIVAL AVENUE", 0,38),
    ("02  CARRIAGE-HOUSE STATION", -124,64),
    ("03  FOUR-TOWER MANOR / ROSE COURT", 0,156),
    ("04  SKULL GATE / WIDOW'S PLUNGE", 153,206),
    ("05  ANCESTOR CRYPT / MIRROR HALL", 0,214),
    ("06  GRAVEYARD MAUSOLEUM", 58,264),
    ("07  SPECTRAL MEMORIAL / CEMETERY", -15,277),
    ("08  TWISTED FOREST / GHOST LAGOON", -139,218),
]
AREAS = [(f"haunted_house_coaster_1{i}", x0,x1,32,190)
         for i,(x0,x1) in enumerate(((-175,-59),(-58,58),(59,176)),1)] + [
    ("haunted_house_coaster_21",-175,0,191,303),
    ("haunted_house_coaster_22",1,176,191,303),
]


def route():
    path = [WAYPOINTS[0]]
    for end in WAYPOINTS[1:]:
        add_segment(path,end)
    add_segment(path,WAYPOINTS[0],include_final=False)
    return path


def shell(b,x0,z0,x1,z1,bottom,top,wall="dark_oak_planks"):
    # Explicit indoor air preserves the intended rooms in imperfectly clear sites.
    b.box(x0+1,bottom+1,z0+1,x1-1,top-1,z1-1,"air")
    b.box(x0,bottom,z0,x1,bottom,z1,"stone_bricks")
    b.box(x0,bottom+1,z0,x1,top,z0,wall)
    b.box(x0,bottom+1,z1,x1,top,z1,wall)
    b.box(x0,bottom+1,z0+1,x0,top,z1-1,wall)
    b.box(x1,bottom+1,z0+1,x1,top,z1-1,wall)


def lamp(b,x,z,y=0):
    b.box(x,y,z,x,y+4,z,"polished_blackstone_bricks")
    b.put(x,y+5,z,"soul_lantern")


def ghost(b,x,y,z,r=3):
    b.box(x-r,y,z,x+r,y+2*r,z+2*r,"white_concrete")
    b.box(x-r+1,y+2*r+1,z+1,x+r-1,y+2*r+1,z+2*r-1,"white_concrete")
    b.box(x-r-2,y+r,z+1,x+r+2,y+r+1,z+r,"white_concrete")
    for dx in (-r+1,r-1):
        b.box(x+dx,y+2*r-1,z-1,x+dx,y+2*r,z-1,"black_concrete")
    b.box(x-1,y+1,z-1,x+1,y+2,z-1,"black_concrete")
    for dx in range(-r,r+1,2):
        b.box(x+dx,y-2,z+1,x+dx,y-1,z+2*r-1,"white_concrete")


def roof(b,x0,x1,z0,z1,y,levels,axis="x"):
    for k in range(levels):
        a,c = (x0+k,x1-k) if axis=="x" else (z0+k,z1-k)
        if axis=="x":
            b.box(a,y+k,z0,a,y+k,z1,"deepslate_tiles")
            b.box(c,y+k,z0,c,y+k,z1,"deepslate_tiles")
            b.box(a,y+k,z0,c,y+k,z0,"deepslate_tiles")
            b.box(a,y+k,z1,c,y+k,z1,"deepslate_tiles")
            b.box(a+1,y+k,z0+1,c-1,y+k,z1-1,"air")
        else:
            b.box(x0,y+k,a,x1,y+k,a,"deepslate_tiles")
            b.box(x0,y+k,c,x1,y+k,c,"deepslate_tiles")
            b.box(x0,y+k,a,x0,y+k,c,"deepslate_tiles")
            b.box(x1,y+k,a,x1,y+k,c,"deepslate_tiles")
            b.box(x0+1,y+k,a+1,x1-1,y+k,c-1,"air")
    if axis=="x":
        b.box(x0+levels-1,y+levels-1,z0,x1-levels+1,y+levels-1,z1,"deepslate_tiles")
    else:
        b.box(x0,y+levels-1,z0+levels-1,x1,y+levels-1,z1-levels+1,"deepslate_tiles")


def tower(b,cx,cz,top):
    shell(b,cx-9,cz-9,cx+9,cz+9,2,top,"stone_bricks")
    for y in (8,25,43,61,top):
        b.box(cx-10,y,cz-10,cx+10,y,cz+10,"polished_blackstone_bricks")
    for y in (13,30,48,66):
        for z in (cz-9,cz+9):
            b.box(cx-3,y,z,cx+3,y+7,z,"lime_stained_glass")
    # A pale clock dial with fixed hands; the clock is decorative.
    z=cz-10
    b.box(cx-5,top-12,z,cx+5,top-2,z,"white_concrete")
    b.box(cx,top-10,z-1,cx,top-7,z-1,"black_concrete")
    b.box(cx,top-7,z-1,cx+4,top-7,z-1,"black_concrete")
    for k in range(11):
        r=10-k
        b.box(cx-r,top+1+2*k,cz-r,cx+r,top+2+2*k,cz+r,"deepslate_tiles")
    b.put(cx,top+23,cz,"soul_lantern")


def manor(b):
    b.section("Grand gothic estate / articulated wings and clock towers")
    b.box(-82,0,125,82,1,247,"mossy_stone_bricks")
    shell(b,-62,130,62,242,2,60)
    for y in (11,21,39):
        b.box(-61,y,131,61,y,241,"spruce_planks")
    # Lower crypt aisle, upper galleries, and an open center under the high roof.
    b.box(-59,12,206,59,20,222,"air")
    b.box(-20,40,137,20,78,235,"air")
    for z in (150,174,198,226):
        b.box(-61,37,z,61,38,z,"dark_oak_log")
    for x in range(-56,57,14):
        for z in (129,243):
            b.box(x,3,z,x,59,z,"dark_oak_log")
            for y in (5,25,44):
                b.box(x+3,y,z+1 if z==129 else z-1,
                      x+8,y+10,z+1 if z==129 else z-1,"purple_stained_glass")
                b.box(x+2,y-1,z,x+9,y-1,z,"polished_blackstone_bricks")
    for y in (3,20,38,60):
        b.box(-64,y,128,64,y,128,"polished_blackstone_bricks")
        b.box(-64,y,244,64,y,244,"polished_blackstone_bricks")
    roof(b,-65,-25,127,245,61,20)
    roof(b,25,65,127,245,61,20)
    # Tall central nave carries a prominent pointed gable and rose window.
    shell(b,-24,131,24,241,39,74)
    roof(b,-26,26,128,245,75,24)
    for k in range(20):
        b.box(-20+k,75+k,126,20-k,75+k,127,"dark_oak_planks")
    for x in range(-11,12):
        for y in range(70,93):
            distance=x*x+(y-81)**2
            if distance<=121:
                b.put(x,y,125,"purple_stained_glass" if distance<81 else "stone_bricks")
    b.box(0,71,124,0,91,124,"polished_blackstone_bricks")
    b.box(-10,81,124,10,81,124,"polished_blackstone_bricks")
    for x,z,h in ((-74,140,74),(74,140,76),(-74,230,70),(74,230,72)):
        tower(b,x,z,h)
    # Ground-level porch is accessible scenery; the boarding station is separate.
    b.box(-8,3,130,8,12,130,"air")
    b.box(-12,0,120,12,1,129,"stone_bricks")
    for k in range(4):
        half="bottom" if k%2==0 else "top"
        b.box(-8,k//2,120+k,8,k//2,120+k,
              f'polished_blackstone_slab ["minecraft:vertical_half"="{half}"]')

    b.section("Ancestor crypt, haunted ballroom, and mirror gallery")
    for x in range(-49,50,14):
        for z in (208,221):
            b.box(x-2,12,z,x+2,13,z+5,"polished_blackstone_bricks")
            b.box(x-1,14,z+1,x+1,14,z+4,"red_concrete")
            b.put(x,15,z+3,"bone_block")
        lamp(b,x,224,11)
    for x in (-48,-20,20,48):
        ghost(b,x,15,203,3)
        b.box(x-4,13,226,x+4,19,226,"polished_blackstone_bricks")
        b.box(x-3,14,225,x+3,18,225,"light_blue_stained_glass")
    for x in (-45,45):
        for z in (145,175,200,231):
            b.box(x-3,22,z-3,x+3,23,z+3,"dark_oak_planks")
            lamp(b,x,z,24)
            b.box(x-8,22,z+6,x+8,27,z+6,"bookshelf")
    for z in (153,187,225):
        b.box(0,64,z,0,73,z,"iron_bars")
        b.box(-8,63,z,8,63,z,"polished_blackstone_bricks")
        b.box(0,63,z-8,0,63,z+8,"polished_blackstone_bricks")
        for dx,dz in ((-8,0),(8,0),(0,-8),(0,8)):
            b.put(dx,62,z+dz,'soul_lantern ["hanging"=true]')
    for x,z in ((-12,157),(12,201),(-9,232)):
        ghost(b,x,47,z,4)
    for x in (-60,60):
        for z in (132,240):
            b.box(x,54,z,x,59,z,"web")


def graveyard(b):
    b.section("Mausoleum, cemetery courts, and spectral memorial")
    shell(b,26,249,86,277,1,21,"mossy_stone_bricks")
    roof(b,24,88,247,279,22,12,"z")
    for x in (29,42,58,74,83):
        for z in (248,278):
            b.box(x,2,z,x,24,z,"stone_bricks")
            b.put(x,25,z,"soul_lantern")
    for x in (37,54,74):
        b.box(x-3,2,252,x+3,4,259,"polished_blackstone_bricks")
        b.box(x-2,5,253,x+2,5,258,"red_concrete")
        ghost(b,x,15,273,2)
    for x in (-99,-77,-55,-33,-11,107,127):
        for z in (254,271,291):
            if -55<=x<=-33 and z==271:
                continue
            b.box(x-4,0,z-5,x+4,0,z+5,"coarse_dirt")
            b.box(x-2,1,z+2,x+2,5,z+2,"mossy_stone_bricks")
            b.box(x-3,4,z+2,x+3,4,z+2,"stone_bricks")
            b.put(x,6,z+2,"stone_bricks")
            lamp(b,x,z-4)
    b.box(-12,0,271,12,3,288,"polished_blackstone_bricks")
    ghost(b,0,20,276,8)
    for x in (-14,14):
        b.box(x,1,268,x,19,268,"stone_bricks")
        b.put(x,20,268,"soul_lantern")


def skull_gate(b):
    b.section("Widow's plunge / giant skull gate")
    # The descent threads the central mouth. Passenger clearance is carved last.
    for x in (140,166):
        b.box(x-3,0,201,x+3,34,211,"polished_blackstone_bricks")
        b.box(x-4,29,200,x+4,34,212,"bone_block")
    b.box(137,35,201,169,62,212,"white_concrete")
    b.box(140,63,203,166,68,210,"white_concrete")
    for x in (145,161):
        b.box(x-3,53,200,x+3,59,200,"black_concrete")
        b.box(x-1,55,199,x+1,57,199,"sea_lantern")
    b.box(152,49,200,154,52,200,"black_concrete")
    b.box(147,37,200,159,47,212,"air")
    for x in (146,150,154,158,162):
        b.box(x,35,200,x,38,200,"bone_block")


def gardens(b):
    b.section("Twisted forest / broad garden courts / ghost lagoon")
    for x,z,h in ((-139,196,37),(-129,231,43),(-143,256,32),
                   (-104,243,28),(-121,204,30),(114,152,29),
                   (143,291,32),(-120,104,25),(120,68,20)):
        b.box(x-1,0,z-1,x+1,h,z+1,"dark_oak_log")
        for k in range(1,14):
            b.box(x-k,h-13+k//2,z,x-k,h-11+k//2,z+1,"dark_oak_log")
            b.box(x+k,h-7+k//2,z+1,x+k,h-6+k//2,z+2,"dark_oak_log")
        b.box(x-10,h-8,z,x-8,h-6,z+1,"web")
        ghost(b,x+6,9,z-7,2)
    # A contained rectangular basin with stepped stone banks. Water is placed
    # after all shells, supports and passenger clearance, by the main generator.
    b.box(100,0,173,137,0,237,"stone_bricks")
    b.box(99,1,172,138,2,172,"mossy_stone_bricks")
    b.box(99,1,238,138,2,238,"mossy_stone_bricks")
    b.box(99,1,173,99,2,237,"mossy_stone_bricks")
    b.box(138,1,173,138,2,237,"mossy_stone_bricks")
    for x,z in ((105,182),(132,182),(105,231),(132,231)):
        lamp(b,x,z,2)
    ghost(b,118,12,202,6)
    # Terraced rose beds border a large uncluttered frontal court.
    for x in (-55,-25,25,55):
        b.box(x-8,0,94,x+8,0,102,"mossy_stone_bricks")
        b.box(x-6,1,95,x+6,1,101,"green_concrete")
        for dx in (-4,0,4):
            b.put(x+dx,2,98,"red_concrete")
    for x,z in ((-165,42),(165,42),(-170,292),(170,292),(-102,89),(102,89),
                (-92,119),(92,119),(-109,250),(95,278)):
        lamp(b,x,z)


def build_estate(b):
    b.section("Foundation / arrival avenue / perimeter")
    b.box(-175,-1,32,176,-1,303,"stone_bricks")
    b.box(-174,-1,33,175,-1,302,"grass_block")
    for x in (-175,176):
        b.box(x,0,32,x,1,303,"mossy_stone_bricks")
        b.box(x,2,32,x,3,303,"iron_bars")
    b.box(-175,0,303,176,1,303,"mossy_stone_bricks")
    b.box(-175,2,303,176,3,303,"iron_bars")
    for a,c in ((-174,-11),(11,175)):
        b.box(a,0,32,c,1,32,"mossy_stone_bricks")
        b.box(a,2,32,c,3,32,"iron_bars")
    b.box(-6,-1,32,6,-1,121,"polished_blackstone_bricks")
    b.box(-128,-1,40,6,-1,42,"polished_blackstone_bricks")
    b.box(-128,-1,42,-122,-1,60,"polished_blackstone_bricks")
    b.section("Raven gate / carriage-house station")
    for x in (-10,10):
        b.box(x-2,0,34,x+2,18,38,"polished_blackstone_bricks")
        b.put(x,19,36,"soul_lantern")
    b.box(-12,17,34,12,20,38,"dark_oak_planks")
    b.box(-3,21,35,3,27,37,"black_concrete")
    b.box(-13,23,35,13,24,37,"black_concrete")
    b.put(0,26,34,"sea_lantern")
    b.box(-154,0,56,-88,8,74,"polished_blackstone_bricks")
    b.box(-151,8,59,-89,8,63,"dark_oak_planks")
    b.box(-151,8,65,-89,8,71,"dark_oak_planks")
    for x in (-154,-119,-88):
        for z in (56,74):
            b.box(x,9,z,x,24,z,"dark_oak_log")
            b.put(x,25,z,"soul_lantern")
    roof(b,-156,-86,55,75,25,9,"z")
    b.box(-128,0,43,-122,12,60,"air")
    for k in range(18):
        y=k//2
        if y:
            b.box(-128,0,43+k,-122,y-1,43+k,"polished_blackstone_bricks")
        half="bottom" if k%2==0 else "top"
        b.box(-128,y,43+k,-122,y,43+k,
              f'polished_blackstone_slab ["minecraft:vertical_half"="{half}"]')
    manor(b)
    graveyard(b)
    skull_gate(b)
    gardens(b)
