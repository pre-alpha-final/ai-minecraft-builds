"""Caret-local terrain, buildings, and ride geometry for Glacier Run."""

from math import cos, hypot, sin
from random import Random

import numpy as np

from generate_jungle_leviathan import add_segment
from generate_skyline_cyclone import Block, rail_state, state_block

X0, X1, Y0, Z0, Z1 = -112, 111, -2, 24, 215
Y_LIMIT = 96
BOARD = (-39, 0, 38)
CAVE_WALK = [(89, z) for z in range(126, 161)] + [
    (x, 160) for x in range(90, 104)
] + [(103, z) for z in range(161, 185)]
WAYPOINTS = [
    (-65, 48, 0), (-65, 106, 32), (-32, 106, 34), (-32, 172, 63),
    (26, 172, 71), (26, 78, 5), (72, 78, 5), (72, 56, 9),
    (46, 56, 9), (46, 40, 0), (-65, 40, 0),
]


class Park:
    def __init__(self):
        self.a = np.full((X1-X0+1, Y_LIMIT-Y0+1, Z1-Z0+1), -1, dtype=np.int16)
        self.blocks = []
        self.ids = {}

    def material(self, block):
        if isinstance(block, str):
            block = Block('minecraft:' + block)
        if block not in self.ids:
            self.ids[block] = len(self.blocks)
            self.blocks.append(block)
        return self.ids[block]

    def box(self, x0, y0, z0, x1, y1, z1, block):
        assert X0 <= x0 <= x1 <= X1 and Y0 <= y0 <= y1 <= Y_LIMIT and Z0 <= z0 <= z1 <= Z1
        self.a[x0-X0:x1-X0+1, y0-Y0:y1-Y0+1, z0-Z0:z1-Z0+1] = self.material(block)

    def put(self, x, y, z, block):
        self.box(x, y, z, x, y, z, block)

    def get(self, x, y, z):
        return int(self.a[x-X0, y-Y0, z-Z0])


def coaster_route():
    path = [WAYPOINTS[0]]
    for point in WAYPOINTS[1:]:
        add_segment(path, point)
    add_segment(path, WAYPOINTS[0], include_final=False)
    return path


def terrain(park):
    xx, zz = np.ogrid[X0:X1+1, Z0:Z1+1]
    height = np.full((X1-X0+1, Z1-Z0+1), -1)
    # Independent cirques and shoulders give the summit an asymmetric ridge.
    peaks = [(-38, 151, 45, 42, 68), (-82, 155, 25, 40, 43),
             (21, 178, 51, 44, 76), (55, 173, 30, 34, 58),
             (88, 157, 21, 31, 27), (98, 166, 13, 20, 25)]
    rough = 2*np.sin(.21*xx+.14*zz) + 1.6*np.sin(.39*zz-.11*xx) + np.cos(.57*xx-.29*zz)
    for x, z, rx, rz, top in peaks:
        radius = np.hypot((xx-x)/rx, (zz-z)/rz)
        shape = (top * np.maximum(0, 1-radius)**.73 + rough*np.maximum(0, 1-radius)**.3)
        height = np.maximum(height, np.where(shape >= 1, shape.astype(int), -1))

    # A shelf encloses the high mine tunnel and carries the observatory terrace.
    x, z = 30, 186
    shelf = np.maximum(0, np.abs(xx-x)-12) + np.maximum(0, np.abs(zz-z)-11)
    height = np.maximum(height, np.maximum(-1, 70-3*shelf))
    for x in range(-51, -12):
        for z in range(127, 166):
            cross = max(0, abs(x+32)-2)
            length = max(0, 141-z, z-150)
            ridge = 70-int(2.2*hypot(cross, 1.6*length))+int(1.8*sin(x*.55+z*.23))
            height[x-X0, z-Z0] = max(height[x-X0, z-Z0], ridge)

    park.box(X0, Y0, Z0, X1, Y0, Z1, 'stone')
    park.box(X0, -1, Z0, X1, -1, Z1, 'snow')
    for ix, iz in zip(*np.nonzero(height >= 0)):
        x, z = int(ix)+X0, int(iz)+Z0
        y = int(height[ix, iz])
        split = min(y, max(-1, 15 + (x+z)//10))
        park.box(x, -1, z, x, split, z, 'andesite')
        if y > split:
            park.box(x, split+1, z, x, y, z, 'stone')
        steepness = max(y-int(height[a, b]) for a, b in
                        ((max(ix-1,0), iz), (min(ix+1,X1-X0), iz),
                         (ix, max(iz-1,0)), (ix, min(iz+1,Z1-Z0))))
        snowline = 38 + int(7*sin(x*.11) + 4*cos(z*.21))
        cap = 'snow' if y >= snowline and steepness < 8 else 'andesite'
        if y < 12 and steepness < 5:
            cap = 'snow'
        # Paint the visible glacier on the summit's front slope. Alternating
        # ice strata remain visible on the exposed faces between snow ribs.
        ice_center = 27 + 4*sin((z-124)*.067)
        ice_width = 6 + min(12,max(0,(176-z)/4)) + 2*sin(z*.43)
        if 117 <= z <= 173 and y >= 3 and abs(x-ice_center) <= ice_width:
            ice = 'blue_ice' if (int(x-ice_center)+z//5) % 7 < 3 else 'packed_ice'
            park.box(x,max(0,y-3),z,x,y,z,ice)
            cap = 'snow' if (x+z//3) % 9 in (0,1) else ice
        park.put(x, y, z, cap)
    return height


def lake(park):
    course, curbs = set(), set()
    for x in range(-72, 78):
        for z in range(51, 139):
            shore = hypot((x-2)/72, (z-93)/43)
            if shore > 1 + .035*sin(x*.15+z*.19):
                continue
            park.put(x, -1, z, 'packed_ice')
            arc = hypot((x-2)/53, (z-93)/30)
            if .86 <= arc <= 1.12:
                course.add((x, z))
                park.put(x, -1, z, 'blue_ice')
                park.box(x, 0, z, x, 3, z, 'air')
            elif .80 <= arc < .86 or 1.12 < arc <= 1.17:
                if not (abs(x-2) <= 3 and z < 65):
                    curbs.add((x, z))
                    park.put(x, 0, z, 'light_blue_concrete')
            elif .95 <= shore:
                park.put(x, -1, z, 'light_blue_stained_glass')
    park.box(-2, -1, 56, 6, -1, 58, 'spruce_planks')
    for x in (-2, 6):
        lamp(park, x, 0, 57, 'dark_oak_fence')
    return course, curbs


def lamp(park, x, y, z, post='spruce_fence'):
    park.box(x, y, z, x, y+2, z, post)
    park.put(x, y+3, z, 'sea_lantern')
    park.put(x, y+4, z, 'dark_oak_planks')


def chalet(park, x, z, half_width, depth, roof, shutter):
    left, right, back = x-half_width, x+half_width, z+depth
    park.box(left, -1, z, right, -1, back, 'spruce_planks')
    park.box(left, 0, z, right, 4, back, 'spruce_planks')
    park.box(left+1, 0, z+1, right-1, 4, back-1, 'air')
    for xx in (left, right):
        for zz in (z, back):
            park.box(xx, 0, zz, xx, 4, zz, 'dark_oak_log')
    for zz in (z, back):
        for sign in (-1, 1):
            xx = x + sign*(half_width-2)
            park.box(xx-1, 1, zz, xx+1, 2, zz, 'yellow_stained_glass')
            for edge in (xx-2, xx+2):
                park.box(edge, 1, zz, edge, 2, zz, shutter)
    park.box(x-1, 0, z, x+1, 2, z, 'air')
    park.box(x-1, 3, z, x+1, 3, z, 'dark_oak_planks')
    for offset in range(half_width+2):
        y = 5 + half_width+1-offset
        for xx in sorted({x-offset, x+offset}):
            park.box(xx, y, z-1, xx, y, back+1, roof)
            if y > 5:
                park.box(xx, 5, z, xx, y-1, z, 'spruce_planks')
                park.box(xx, 5, back, xx, y-1, back, 'spruce_planks')
            if offset % 3 != 2:
                park.box(xx, y+1, z+1, xx, y+1, back-2, 'snow')
    park.box(x-1, 6, z, x+1, 7, z, 'light_blue_stained_glass')
    park.box(right-2, 5, back-3, right-1, 10, back-2, 'brick_block')
    park.box(right-3, 10, back-4, right, 10, back-1, 'stone_bricks')
    park.put(x, 4, z+3, 'sea_lantern')


def village(park):
    paths = [(-4, 24, 4, 55), (-1, 55, 4, 58), (-82, 28, 86, 32), (-46, 32, -32, 39),
             (-62, 50, 91, 52), (85, 28, 92, 130), (101, 182, 109, 193),
             (107, 126, 109, 193), (87, 125, 109, 129), (-81, 31, -75, 37)]
    for x0, z0, x1, z1 in paths:
        park.box(x0, -1, z0, x1, -1, z1, 'stone_bricks')
        park.box(x0, 0, z0, x1, 3, z1, 'air')
    for x in (-7, 7):
        park.box(x-1, -1, 25, x+1, 7, 27, 'dark_oak_log')
        park.box(x-2, 0, 24, x+2, 1, 28, 'stone_bricks')
        lamp(park, x, 1, 29)
    park.box(-8, 6, 25, 8, 7, 27, 'spruce_planks')
    for step in range(7):
        park.box(-8+step, 8+step//2, 25, -8+step, 8+step//2, 27, 'snow')
        park.box(8-step, 8+step//2, 25, 8-step, 8+step//2, 27, 'snow')
    park.box(-1, 11, 25, 1, 11, 27, 'oxidized_copper')
    park.box(-2, 4, 25, 2, 5, 27, 'light_blue_stained_glass')

    # Half-step overpass crosses above the ground-level station return.
    slab = state_block('minecraft:spruce_slab', **{'minecraft:vertical_half': 'bottom'})
    for z in range(31, 50):
        half = min(8, z-30, 50-z)
        top = (half-1)//2
        for x in (-5, 5):
            park.put(x, top+1, z, 'spruce_fence')
        park.box(-4, top, z, 4, top, z, slab if half % 2 else 'spruce_planks')
        if z not in range(38, 43):
            park.box(-5, -1, z, -5, top, z, 'dark_oak_log')
            park.box(5, -1, z, 5, top, z, 'dark_oak_log')

    for x, z, width, depth, roof, accent in [
        (-15, 48, 6, 10, 'deepslate_tiles', 'cyan_concrete'),
        (16, 46, 7, 12, 'oxidized_copper', 'red_concrete'),
        (34, 47, 6, 8, 'deepslate_tiles', 'cyan_concrete'),
        (-78, 37, 7, 13, 'deepslate_tiles', 'red_concrete'),
        (22, 29, 7, 7, 'deepslate_tiles', 'red_concrete'),
    ]:
        chalet(park, x, z, width, depth, roof, accent)
    for x, z in [(-12, 31), (10, 31), (-10, 54), (9, 55), (52, 49), (84, 53),
                 (85, 87), (92, 112), (85, 128), (109, 185)]:
        lamp(park, x, 0, z)

    # Station platform is level with the boarding rail and opens onto the path.
    park.box(-58, -1, 34, -22, -1, 43, 'spruce_planks')
    for x in (-58, -50, -42, -34, -26, -22):
        for z in (34, 44):
            park.box(x, 0, z, x, 6, z, 'dark_oak_log')
        park.box(x, 6, 34, x, 6, 44, 'dark_oak_log')
    for z in range(33, 46):
        y = 7 + (6-abs(z-39))//2
        park.box(-59, y, z, -21, y, z, 'deepslate_tiles')
        if z in (34, 36, 37, 39, 40, 42, 44):
            park.box(-57, y+1, z, -23, y+1, z, 'snow')
    for x in (-54, -46, -38, -30, -24):
        park.put(x, 5, 37, 'sea_lantern')
    park.box(-54, 0, 42, -26, 0, 42, 'cyan_concrete')


def caves(park):
    for x, z in CAVE_WALK:
        park.box(x-3, -1, z-3, x+3, -1, z+3, 'tuff_bricks')
        park.box(x-3, 0, z-3, x+3, 4, z+3, 'air')
        park.box(x-1, 5, z-1, x+1, 5, z+1, 'packed_ice')
    for x, z in ((89, 132), (103, 182)):
        for offset in (-4, -3, 3, 4):
            park.box(x+offset, 0, z-2, x+offset, 5, z+2, 'packed_ice')
        park.box(x-4, 6, z-2, x+4, 6, z+2, 'blue_ice')
        park.box(x-2, 7, z-1, x+2, 7, z+1, 'packed_ice')
    for x, z in ((92, 142), (86, 147), (92, 153), (98, 163), (100, 171), (106, 175)):
        park.put(x, 0, z, 'sea_lantern')
        park.box(x, 1, z, x, 3, z, 'light_blue_stained_glass')
        park.put(x, 2, z+1, 'blue_ice')
        park.put(x, 4, z, 'packed_ice')


def observatory(park):
    x, z = 31, 188
    # Radial base, glazed drum, stepped copper dome, and inclined telescope.
    for dx in range(-13, 14):
        for dz in range(-13, 14):
            r = hypot(dx, dz)
            if r > 13:
                continue
            xx, zz = x+dx, z+dz
            park.box(xx, 67, zz, xx, 71, zz, 'stone_bricks')
            if r <= 11:
                park.box(xx, 72, zz, xx, 78, zz, 'air')
            if 9.5 <= r <= 11:
                pier = abs(dx) <= 1 or abs(dz) <= 1 or abs(abs(dx)-abs(dz)) <= 1
                park.box(xx, 72, zz, xx, 75, zz, 'quartz_block' if pier else 'light_blue_stained_glass')
                park.put(xx, 76, zz, 'cut_copper')
            if r <= 11:
                y = 77 + int(7*(1-(r/11)**2)**.5)
                park.put(xx, y, zz, 'oxidized_cut_copper' if dx < 2 else 'waxed_weathered_cut_copper')
    for step in range(11):
        xx, yy, zz = 31+step, 81+step//2, 186-step
        park.box(xx-1, yy-1, zz-1, xx+1, yy+1, zz+1, 'cut_copper')
    park.box(40, 85, 174, 43, 88, 177, 'quartz_block')
    park.box(41, 86, 174, 42, 87, 174, 'light_blue_stained_glass')
    park.box(20, 71, 174, 42, 71, 179, 'stone_bricks')
    for xx in (19, 43):
        lamp(park, xx, 71, 177)


def forest(park, height, path, course, curbs):
    rng = Random(22)
    rail_columns = {(x+dx, z+dz) for x,z,_ in path for dx in range(-3,4) for dz in range(-3,4)}
    trees = []
    leaves = state_block('minecraft:spruce_leaves', persistent_bit=True, update_bit=False)
    for x0, x1, z0, z1, attempts in [(-105,-53,62,143,135), (-103,-49,178,205,65),
                                      (64,103,88,119,50), (64,101,188,207,45),
                                      (-102,-71,28,55,25), (52,78,30,53,21)]:
        for _ in range(attempts):
            x, z = rng.randint(x0,x1), rng.randint(z0,z1)
            if (x,z) in rail_columns or (x,z) in course or (x,z) in curbs or x in range(82, 94) and z in range(77, 131):
                continue
            if any((x-a)**2+(z-b)**2 < 49 for a,b in trees):
                continue
            y = int(height[x-X0,z-Z0])+1
            if park.get(x,y-1,z) not in (park.material('snow'), park.material('andesite'), park.material('stone')):
                continue
            trees.append((x,z))
            top = y+rng.randint(7,14)
            park.box(x,y,z,x,top,z,'spruce_log')
            for yy in range(top-7,top+2):
                radius = (top+2-yy)//3
                if yy in (top-5,top-2):
                    radius += 1
                for dx in range(-radius,radius+1):
                    for dz in range(-radius,radius+1):
                        if abs(dx)+abs(dz) > radius+1 or (x+dx,z+dz) in rail_columns:
                            continue
                        xx,zz = x+dx,z+dz
                        if park.get(xx,yy,zz) < 0:
                            park.put(xx,yy,zz,leaves)
                            if (yy in (top-5,top-2) and park.get(xx,yy+1,zz) < 0
                                    and (abs(dx)==radius or abs(dz)==radius)):
                                park.put(xx,yy+1,zz,'snow')
    return len(trees)


def track(park, path, height, course, curbs):
    blocked = course | curbs
    for x,z,y in path:
        if x == -32 and 133 <= z <= 157:
            for xx in (x-2, x+2):
                park.box(xx, y, z, xx, y+4, z, 'blue_ice' if (xx+z)%5 < 2 else 'packed_ice')
            park.box(x-1, y+5, z, x+1, y+5, z, 'packed_ice')
            if z % 5 == 0:
                park.put(x,y+5,z,'sea_lantern')
        if (y == 5 and x == 26 and 78 <= z <= 92) or (y == 5 and z == 78 and 26 <= x <= 67):
            if x == 26 and z > 78:
                park.box(x-1, y-1, z, x+1, y-1, z, 'spruce_planks')
            else:
                park.box(x, y-1, z-1, x, y-1, z+1, 'spruce_planks')
            if (x+z) % 8 == 0 and (x,z) not in blocked:
                park.box(x, 0, z, x, y-2, z, 'dark_oak_log')
    for x,z,y in path:
        # Keep the boat-lane airspace below the crossing, and the pedestrian
        # overpass above the station return. The rest gets a full rider bore.
        roof = 2 if z == 40 and abs(x) <= 6 else 3
        park.box(x-1, y, z-1, x+1, y+roof, z+1, 'air')
    for i,(x,z,y) in enumerate(path):
        rail, curve = rail_state(path,i)
        below = max(-1, int(height[x-X0,z-Z0]))
        if y-2 >= 0 and (x,z) not in blocked and y-2 > below and (i % 9 == 0 or curve):
            park.box(x, below+1, z, x, y-2, z, 'dark_oak_log' if y < 19 else 'stone_bricks')
            prev = path[i-1]
            dx,dz = z-prev[1], x-prev[0]
            for sign in (-1, 1):
                xx,zz=x+sign*dx,z+sign*dz
                if (xx,zz) not in blocked:
                    park.put(xx,y-2,zz,'spruce_planks')
                    wall = max(-1,int(height[xx-X0,zz-Z0]))
                    if y-wall >= 16 and not curve:
                        park.box(xx,wall+1,zz,xx,y-5,zz,'stone_bricks')
                        park.put(xx,y-3,zz,'spruce_planks')
        park.put(x,y-1,z,'redstone_block' if not curve else 'spruce_planks')
        park.put(x,y,z,rail)
        if i % 11 == 0 and y >= 4 and (x,z) not in blocked and x != -32:
            park.put(x,y-2,z,'sea_lantern')


def build():
    park = Park()
    path = coaster_route()
    height = terrain(park)
    course, curbs = lake(park)
    village(park)
    caves(park)
    observatory(park)
    trees = forest(park, height, path, course, curbs)
    track(park, path, height, course, curbs)
    return park, path, course, curbs, trees
