"""Actual-block route, elevation and cutaway previews for the large Raven Manor."""

from pathlib import Path
from PIL import Image, ImageDraw, ImageFont
import haunted_coaster_geometry as geo

DOCS = Path(__file__).resolve().parents[1]/"docs/haunted_house_coaster"
COLORS = {
    "grass_block":(52,78,48), "stone_bricks":(128,128,136),
    "mossy_stone_bricks":(84,102,76), "dark_oak_planks":(79,49,40),
    "dark_oak_log":(48,34,29), "spruce_planks":(112,77,48),
    "deepslate_tiles":(45,47,60), "polished_blackstone_bricks":(64,52,77),
    "purple_stained_glass":(159,75,175), "lime_stained_glass":(143,204,66),
    "light_blue_stained_glass":(137,188,202), "soul_lantern":(74,213,222),
    "sea_lantern":(161,231,219), "redstone_block":(104,24,38),
    "golden_rail":(220,171,62), "rail":(161,154,147),
    "white_concrete":(219,218,214), "black_concrete":(27,26,34),
    "red_concrete":(143,35,40), "green_concrete":(68,95,42),
    "bookshelf":(136,95,61), "iron_bars":(111,121,126),
    "web":(179,187,189), "bone_block":(210,209,181),
    "water":(34,100,120), "coarse_dirt":(96,69,50),
    "polished_blackstone_slab":(64,52,77),
}


def font(size,bold=False):
    return ImageFont.truetype("C:/Windows/Fonts/arialbd.ttf" if bold else "C:/Windows/Fonts/arial.ttf",size)


def render(solid,destination,title,subtitle):
    im=Image.new("RGB",(1800,1350),"#111520");d=ImageDraw.Draw(im)
    raw=lambda x,y,z:(-2.6*x+1.8*z,-.85*x-1.28*z-3.4*y)
    points=[raw(*p) for p in solid]
    x0=min(x for x,_ in points);x1=max(x for x,_ in points)
    y0=min(y for _,y in points);y1=max(y for _,y in points)
    scale=min(1650/max(x1-x0,1),1110/max(y1-y0,1))
    project=lambda x,y,z:(75+(raw(x,y,z)[0]-x0)*scale,150+(raw(x,y,z)[1]-y0)*scale)
    faces=[]
    for (x,y,z),name in solid.items():
        base=COLORS.get(name,(91,88,75))
        polygons=[((0,0,-1),[(x,y,z),(x+1,y,z),(x+1,y+1,z),(x,y+1,z)],.7),
                  ((-1,0,0),[(x,y,z),(x,y,z+1),(x,y+1,z+1),(x,y+1,z)],.85),
                  ((0,1,0),[(x,y+1,z),(x+1,y+1,z),(x+1,y+1,z+1),(x,y+1,z+1)],1.15)]
        for (dx,dy,dz),vertices,shade in polygons:
            if (x+dx,y+dy,z+dz) not in solid:
                depth=sum(-.692*vx+.55*vy-vz for vx,vy,vz in vertices)/4
                faces.append((depth,vertices,tuple(min(255,int(c*shade)) for c in base)))
    for _,vertices,color in sorted(faces):
        d.polygon([project(*v) for v in vertices],fill=color)
    d.text((40,22),title,font=font(38,True),fill="#e8dfcf")
    d.text((40,76),subtitle,font=font(22),fill="#b6accb")
    d.text((40,1300),"Actual generated blocks / static haunted scenery / in-game verification outstanding",font=font(21),fill="#a298b0")
    im.save(destination)


def previews(b,path,metrics):
    solid={p:m.split(" ")[0] for p,m in b.cells.items() if m!="air"}
    im=Image.new("RGB",(1300,1250),"#10121d");d=ImageDraw.Draw(im)
    d.text((35,20),"RAVEN MANOR / THE WIDOW'S PLUNGE",font=font(34,True),fill="#e8dfcf")
    d.text((35,70),"352 x 272 BLOCKS / height 101 / Pharaoh's Curse physical scale",font=font(22),fill="#b6accb")
    scale=3
    point=lambda x,z:(650-x*scale,140+(303-z)*scale)
    top={}
    for (x,y,z),material in solid.items():
        if (x,z) not in top or y>top[x,z][0]:
            top[x,z]=(y,material)
    for (x,z),(y,material) in top.items():
        xx,yy=point(x,z);base=COLORS.get(material,(80,75,68))
        d.rectangle((xx-1,yy-1,xx+1,yy+1),fill=tuple(int(c*.65) for c in base))
    for i,(x,z,y) in enumerate(path):
        nx,nz,_=path[(i+1)%len(path)]
        color=(int(85+170*y/92),int(213-72*y/92),int(237-125*y/92))
        d.line((*point(x,z),*point(nx,nz)),fill=color,width=5)
        if i%70==15:
            xx,yy=point(x,z);dx,dz=nx-x,nz-z
            d.polygon([(xx-9*dx,yy-9*dz),(xx+5*dz,yy-5*dx),(xx-5*dz,yy+5*dx)],fill="white")
    for i,(_,x,z) in enumerate(geo.LANDMARKS,1):
        xx,yy=point(x,z)
        d.ellipse((xx-15,yy-15,xx+15,yy+15),fill="#111520",outline="#e7d0ee",width=2)
        d.text((xx-6,yy-11),str(i),font=font(20,True),fill="white")
    d.text((555,980),"PLAYER / FRONT",font=font(22),fill="#e8dfcf")
    for i,(label,_,_) in enumerate(geo.LANDMARKS):
        d.text((35+(i%2)*630,1025+(i//2)*39),label,font=font(19),fill="#bdb0d4")
    d.text((35,1200),f"{metrics['curves']} CURVES / 4 MAJOR CLIMBS / 3 MAJOR DROPS / RAIL HEIGHT 9-93 / CROSSING 18",font=font(19),fill="#e8dfcf")
    im.save(DOCS/"route.png")
    render(solid,DOCS/"overview.png","RAVEN MANOR: THE WIDOW'S PLUNGE",
           "Four clock towers, grand mansion, skull gate, mausoleum, spectral memorial, forest, and ghost lagoon")
    cut={p:m for p,m in solid.items() if -63<=p[0]<=63 and 200<=p[2]<=230 and p[1]<=20}
    render(cut,DOCS/"crypt_cutaway.png","ANCESTOR CRYPT / MIRROR HALL",
           "Actual voxel cutaway at height 20: supported ride corridor, coffins, ghost sculptures, and mirrors")
    im=Image.new("RGB",(1500,430),"#10121d");d=ImageDraw.Draw(im)
    d.text((35,20),"RIDE ELEVATION / CONTINUOUS CIRCUIT",font=font(30,True),fill="#e8dfcf")
    for y in (9,20,40,60,80,93):
        yy=350-y*2.7
        d.line((65,yy,1450,yy),fill="#35333f",width=1)
        d.text((25,yy-9),str(y),font=font(17),fill="#b6accb")
    d.line([(65+i/(len(path)-1)*1385,350-(y+1)*2.7) for i,(_,_,y) in enumerate(path)],fill="#ce9fdc",width=3)
    d.text((35,385),"HEIGHT ABOVE PLAYER / 80-BLOCK PLUNGE / 52-BLOCK FOREST DROP / 42-BLOCK ATTIC ESCAPE",font=font(20),fill="#b6accb")
    im.save(DOCS/"elevation.png")
