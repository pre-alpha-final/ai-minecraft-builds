"""Render the actual voxel geometry and a plan of both ride circuits."""

from PIL import Image, ImageDraw, ImageFont
import numpy as np

import glacier_run_geometry as g

COLORS = {
    'snow': (232, 242, 249), 'stone': (109, 126, 143), 'andesite': (126, 146, 162),
    'packed_ice': (148, 205, 228), 'blue_ice': (67, 148, 201), 'light_blue_concrete': (119, 181, 208),
    'light_blue_stained_glass': (112, 197, 225), 'yellow_stained_glass': (250, 202, 103),
    'spruce_leaves': (51, 94, 80), 'spruce_log': (102, 80, 57), 'spruce_planks': (145, 105, 68),
    'dark_oak_log': (79, 57, 48), 'dark_oak_planks': (88, 63, 48), 'spruce_slab': (150, 108, 74),
    'spruce_fence': (129, 93, 60), 'dark_oak_fence': (86, 67, 51), 'stone_bricks': (128, 138, 152),
    'deepslate_tiles': (64, 76, 95), 'oxidized_copper': (75, 158, 137), 'cyan_concrete': (49, 133, 144),
    'red_concrete': (170, 62, 56), 'redstone_block': (97, 64, 63), 'rail': (168, 154, 142),
    'golden_rail': (233, 163, 65), 'sea_lantern': (244, 231, 170), 'brick_block': (164, 89, 73),
    'tuff_bricks': (109, 126, 118), 'quartz_block': (231, 224, 201), 'cut_copper': (175, 112, 71),
    'oxidized_cut_copper': (69, 157, 139), 'waxed_weathered_cut_copper': (98, 155, 125),
}


def colors_for(park):
    return [COLORS[b.name.split(':',1)[1]] if b.name != 'minecraft:air' else (0,0,0) for b in park.blocks]


def overview(park, solid, colors, destination):
    image = Image.new('RGB',(1520,1030),'#dbe9f1')
    draw = ImageDraw.Draw(image)
    raw = lambda x,y,z: (-x-.57*z, .23*x-.41*z-1.37*y)
    all_voxels = np.nonzero(solid)
    tx,ty = raw(*all_voxels)
    left, top = float(tx.min()), float(ty.min())
    scale = min(1360/(tx.max()-left), 870/(ty.max()-top))

    def transform(x,y,z):
        u,v = raw(x,y,z)
        return 80+(u-left)*scale, 73+(v-top)*scale
    seen = (
        (solid & ~np.pad(solid[1:,:,:],((0,1),(0,0),(0,0))), 'x', .87),
        (solid & ~np.pad(solid[:,1:,:],((0,0),(0,1),(0,0))), 'y', 1.04),
        (solid & ~np.pad(solid[:,:,:-1],((0,0),(0,0),(1,0))), 'z', .77),
    )
    faces = []
    for mask,axis,light in seen:
        for ix,iy,iz in zip(*np.nonzero(mask)):
            x,y,z = int(ix),int(iy),int(iz)
            block = int(park.a[x,y,z])
            name = park.blocks[block].name
            h = .13 if name.endswith(('rail','slab')) and name != 'minecraft:spruce_slab' else 1
            if name == 'minecraft:spruce_slab':
                h = .5
            if axis == 'x':
                face = [(x+1,y,z),(x+1,y,z+1),(x+1,y+h,z+1),(x+1,y+h,z)]
            elif axis == 'y':
                face = [(x,y+h,z),(x+1,y+h,z),(x+1,y+h,z+1),(x,y+h,z+1)]
            else:
                face = [(x,y,z),(x+1,y,z),(x+1,y+h,z),(x,y+h,z)]
            d = sum(.57*a+.43*b-c for a,b,c in face)/4
            varied = light * (1 + .012*((x*17 + z*7 + y*3)%7-3))
            color = tuple(min(255,int(c*varied)) for c in colors[block])
            faces.append((d,face,color))
    for _,face,color in sorted(faces,key=lambda f:f[0]):
        draw.polygon([transform(*p) for p in face],fill=color)
    image.save(destination,optimize=True)


def route_plan(park, path, solid, colors, destination):
    scale = 4
    width,depth = solid.shape[0]*scale,solid.shape[2]*scale
    image = Image.new('RGB',(width+110,depth+155),'#141f2e')
    draw = ImageDraw.Draw(image)
    title = ImageFont.truetype('arialbd.ttf',29)
    body = ImageFont.truetype('arial.ttf',18)
    small = ImageFont.truetype('arialbd.ttf',17)
    top = solid.shape[1]-1-np.argmax(solid[:,::-1,:],axis=1)
    point = lambda x,z: (55+(g.X1-x)*scale+2, 74+(g.Z1-z)*scale+2)
    for ix,iz in np.ndindex(top.shape):
        y = int(top[ix,iz])
        xx,zz = point(ix+g.X0,iz+g.Z0)
        base = colors[int(park.a[ix,y,iz])]
        shade = .68 + min(y,69)*.003
        draw.rectangle((xx-2,zz-2,xx+1,zz+1),fill=tuple(int(c*shade) for c in base))
    for i,(x,z,y) in enumerate(path):
        xx,zz,yy = path[(i+1)%len(path)]
        tint = (255, int(164+min(71,y)*1.05), int(64+min(71,y)*1.42))
        draw.line((*point(x,z), *point(xx,zz)),fill=tint,width=5)
        if i % 38 == 10:
            a,b = point(x,z)
            u,v = x-xx,z-zz
            draw.polygon([(a+u*11,b+v*11),(a-u*6+v*5,b-v*6-u*5),(a-u*6-v*5,b-v*6+u*5)],fill='#fff5d8')
    draw.line([point(x,z) for x,z in g.CAVE_WALK],fill='#72eec9',width=4)
    landmarks = [
        ('Station', -38, 40), ('Spruce climb', -66, 78), ('Ride tunnel', -32, 145),
        ('Summit observatory', 32, 188), ('Glacier drop', 26, 127), ('Ice-boat loop', -22, 115),
        ('Lake trestle', 43, 78), ('Walk-through cave', 89, 153),
    ]
    for i,(_,x,z) in enumerate(landmarks,1):
        a,b = point(x,z)
        draw.ellipse((a-11,b-11,a+11,b+11),fill='#162434',outline='#eef5ff',width=2)
        draw.text((a,b),str(i),font=small,fill='white',anchor='mm')
    draw.text((55,21),'Glacier Run Alpine Park',font=title,fill='#eef5ff')
    draw.text((width+54,34),'224 × 192 blocks',font=body,fill='#bcd1e7',anchor='rm')
    for i,(label,_,_) in enumerate(landmarks):
        x = 55+(i%4)*(width//4)
        y = depth+93+(i//4)*25
        draw.text((x,y),f'{i+1}  {label}',font=body,fill='#d4e4f6')
    draw.polygon([(point(0,g.Z0)[0],depth+84),(point(0,g.Z0)[0]-6,depth+92),
                  (point(0,g.Z0)[0]+6,depth+92)],fill='#142030')
    image.save(destination,optimize=True)


def render(park,path,directory):
    solid = (park.a >= 0) & (park.a != park.material('air'))
    colors = colors_for(park)
    overview(park,solid,colors,directory/'overview.png')
    route_plan(park,path,solid,colors,directory/'route.png')
