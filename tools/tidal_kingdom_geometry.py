"""Deterministic, actual-block geometry for the Tidal Kingdom water park.

Coordinates are (left, up, forward). One broad coaster frames the rear lagoon;
all other attractions are swimming, boating, slides, or walk-through scenery.
"""

import math
import numpy as np
from generate_skyline_cyclone import Block, rail_state
from generate_jungle_leviathan import add_segment

X0, X1, Z0, Z1, Y0, Y1 = -319, 320, 32, 481, -5, 114
LANDMARKS = [
    ("Entrance / guest services", 0, 69),
    ("Tidal Plaza / fountain", 0, 118),
    ("Crescent Beach / wave-pool basin", -247, 168),
    ("Four Falls / water slides", 232, 166),
    ("Coral Current / lazy river", -166, 255),
    ("Poseidon's Court / aquarium", 0, 286),
    ("Buccaneer Bay / pirate ship", -252, 342),
    ("Reef Rangers / splash fort", 241, 298),
    ("Tidebreaker / coaster station", 208, 408),
    ("Beacon Point / lighthouse", -245, 457),
    ("Harbor Market / food court", -113, 80),
    ("Cabana Gardens / changing rooms", 116, 80),
]
WAYPOINTS = [(170,408,7),(270,408,7),(270,460,47),(100,460,109),
             (100,354,24),(-70,354,55),(-70,438,80),(-290,438,19),
             (-290,300,32),(-200,300,62),(-200,400,18),(40,400,38),
             (40,420,38),(170,420,7)]


class Park:
    def __init__(self):
        self.blocks = []
        self.lookup = {}
        self.a = np.full((640,120,450), -1, dtype=np.int16)
        self.operations = []
        self.fountains = []
        self.destinations = []
        self.slides = []

    def material(self, name, **states):
        if isinstance(name, Block):
            block = name
        else:
            block = Block('minecraft:'+name, tuple(sorted((k.replace('__', ':'),v) for k,v in states.items())))
        if block not in self.lookup:
            self.lookup[block] = len(self.blocks)
            self.blocks.append(block)
        return self.lookup[block]

    def box(self, x0,y0,z0,x1,y1,z1,name,**states):
        assert X0<=x0<=x1<=X1 and Y0<=y0<=y1<=Y1 and Z0<=z0<=z1<=Z1, (x0,y0,z0,x1,y1,z1)
        index = self.material(name, **states)
        self.a[x0-X0:x1-X0+1,y0-Y0:y1-Y0+1,z0-Z0:z1-Z0+1] = index
        self.operations.append((x0,y0,z0,x1,y1,z1,index))

    def put(self,x,y,z,name,**states):
        self.box(x,y,z,x,y,z,name,**states)

    def get(self,x,y,z):
        if not (X0<=x<=X1 and Y0<=y<=Y1 and Z0<=z<=Z1):
            return -1
        return int(self.a[x-X0,y-Y0,z-Z0])

    def ellipse(self,cx,cz,rx,rz,y0,y1,name,inner=0,**states):
        for x in range(cx-rx,cx+rx+1):
            for z in range(cz-rz,cz+rz+1):
                r=((x-cx)/rx)**2+((z-cz)/rz)**2
                if inner*inner<=r<=1:
                    self.box(x,y0,z,x,y1,z,name,**states)

    def line(self,a,b,name,**states):
        n=max(abs(a[k]-b[k]) for k in range(3))
        for i in range(n+1):
            p=tuple(round(a[k]+(b[k]-a[k])*i/max(1,n)) for k in range(3))
            self.put(*p,name,**states)

    def path(self,x0,z0,x1,z1,width=4):
        assert x0==x1 or z0==z1
        self.box(min(x0,x1)-width,0,min(z0,z1)-width,
                 max(x0,x1)+width,0,max(z0,z1)+width,'smooth_sandstone')

    def pool(self,x0,z0,x1,z1,depth=3):
        self.box(x0-2,-depth-1,z0-2,x1+2,0,z1+2,'quartz_bricks')
        self.box(x0,-depth,z0,x1,0,z1,'water',liquid_depth=0)
        self.box(x0,-depth-1,z0,x1,-depth-1,z1,'light_blue_concrete')
        for x in range(x0+3,x1,9):
            self.put(x,-depth-1,z0+2,'sea_lantern')


def palm(b,x,z,h=14):
    for y in range(1,h+1):
        b.put(x+y//7,y,z,'jungle_log',pillar_axis='y')
    x+=h//7
    for dx,dz in ((1,0),(-1,0),(0,1),(0,-1),(1,1),(-1,-1),(1,-1),(-1,1)):
        for n in range(1,9):
            y=h+2-n//3
            b.box(x+dx*n-1,y,z+dz*n-1,x+dx*n+1,y,z+dz*n+1,
                  'jungle_leaves',persistent_bit=True,update_bit=False)
    b.box(x-1,h,z-1,x+1,h+2,z+1,'jungle_leaves',persistent_bit=True,update_bit=False)


def umbrella(b,x,z,color):
    b.box(x,1,z,x,5,z,'birch_fence')
    for dx in range(-5,6):
        for dz in range(-5,6):
            if dx*dx+dz*dz<=27:
                b.put(x+dx,6+(4-max(abs(dx),abs(dz)))//2,z+dz,
                      color if (dx+dz)%4<2 else 'white_concrete')
    b.box(x-4,1,z+6,x-2,1,z+10,'smooth_quartz')
    b.box(x+2,1,z+6,x+4,1,z+10,'smooth_quartz')


def pavilion(b,x,z,w=20,d=17,label='pavilion',roof='cyan_concrete'):
    x0,x1=x-w//2,x+w//2
    z0,z1=z-d//2,z+d//2
    b.box(x0,0,z0,x1,0,z1,'smooth_quartz')
    for a in (x0,x1):
        for c in (z0,z1):
            b.box(a,1,c,a,9,c,'quartz_bricks')
    b.box(x0,1,z1,x1,7,z1,'prismarine_bricks')
    b.box(x0,1,z0,x0,7,z1,'smooth_quartz')
    b.box(x1,1,z0,x1,7,z1,'smooth_quartz')
    b.box(x0+2,3,z1,x1-2,6,z1,'light_blue_stained_glass')
    b.box(x0+2,1,z0+4,x1-2,2,z0+5,'birch_planks')
    for y in range(5):
        b.box(x0-2+y,9+y,z0-2+y,x1+2-y,9+y,z1+2-y,roof)
    b.put(x,8,z0,'sea_lantern')
    b.destinations.append((label,x,z0+2,1))


def base_and_paths(b):
    b.box(X0,-2,Z0,X1,0,Z1,'sandstone')
    b.box(X0,1,Z0,X1,9,Z1,'air')
    b.box(X0,0,Z0,X1,0,Z1,'grass_block')
    b.box(X0,0,Z0,X1,0,Z0+2,'smooth_sandstone')
    b.box(X0,0,Z1-2,X1,0,Z1,'smooth_sandstone')
    b.box(X0,0,Z0,X0+2,0,Z1,'smooth_sandstone')
    b.box(X1-2,0,Z0,X1,0,Z1,'smooth_sandstone')
    b.path(0,42,0,173,10)
    b.path(-301,82,301,82,6)
    b.path(-301,258,301,258,6)
    b.path(-301,398,301,398,6)
    b.path(-301,82,-301,463,6)
    b.path(301,82,301,463,6)
    b.path(-301,463,301,463,6)
    for x in (-185,178):
        b.path(x,82,x,398,5)
    b.path(-301,106,-185,106)
    b.path(-301,278,-185,278)
    b.path(178,258,301,258)
    # Deliberate open beaches and lagoon occupy most of the center.
    b.ellipse(0,277,183,139,0,0,'smooth_sandstone',inner=.91)
    b.ellipse(0,277,167,123,-4,0,'quartz_bricks',inner=.85)
    b.ellipse(0,277,164,120,-3,0,'water',inner=.91,liquid_depth=0)
    b.ellipse(0,279,129,94,-4,0,'sandstone')
    b.ellipse(0,279,126,91,-3,0,'water',liquid_depth=0)
    # Four bridges cross the swimming river; half-block approaches are walkable.
    for z in (154,400):
        b.box(-8,3,z-17,8,3,z+17,'birch_planks')
        for n in range(6):
            y=1+n//2
            block='birch_planks' if n%2 else 'birch_slab'
            states={'minecraft__vertical_half':'bottom'} if n%2==0 else {}
            b.box(-8,y,z-23+n,8,y,z-23+n,block,**states)
            b.box(-8,y,z+23-n,8,y,z+23-n,block,**states)
        for x in (-9,9):
            b.box(x,4,z-17,x,4,z+17,'birch_fence')
    for x in (-164,164):
        b.box(x-17,3,271,x+17,3,283,'birch_planks')
        for n in range(6):
            y=1+n//2
            block='birch_planks' if n%2 else 'birch_slab'
            states={'minecraft__vertical_half':'bottom'} if n%2==0 else {}
            b.box(x-23+n,y,271,x-23+n,y,283,block,**states)
            b.box(x+23-n,y,271,x+23-n,y,283,block,**states)
        for z in (270,284):
            b.box(x-17,4,z,x+17,4,z,'birch_fence')
    # Causeway from the arrival plaza to the temple island.
    b.box(-6,0,178,6,0,256,'smooth_quartz')
    for z in range(182,240,10):
        b.put(-7,1,z,'sea_lantern');b.put(7,1,z,'sea_lantern')
    b.ellipse(0,280,56,48,-3,0,'smooth_sandstone')
    # Entrance steps down to the builder's ground level.
    b.box(-8,-1,32,8,0,33,'air')
    b.box(-8,-1,32,8,-1,33,'smooth_quartz')
    b.box(-8,0,33,8,0,33,'smooth_quartz_slab',minecraft__vertical_half='bottom')
    b.destinations.append(('Entrance',0,34,1))


def arrival(b):
    for x in (-20,20):
        b.box(x-3,1,47,x+3,20,53,'quartz_bricks')
        b.box(x-5,21,45,x+5,23,55,'cyan_concrete')
        b.ellipse(x,50,4,4,24,27,'sea_lantern')
    b.box(-24,19,47,24,21,53,'prismarine_bricks')
    # Block-built wave crest and trident identify the water theme without text.
    for x in range(-18,19):
        h=25+round(4*math.sin(x/7))
        b.box(x,21,49,x,h,51,'light_blue_concrete')
        b.put(x,h+1,50,'white_concrete')
    for x,label in ((-43,'Guest services'),(43,'First aid')):
        pavilion(b,x,62,24,22,label,roof='blue_concrete')
    b.box(41,9,49,45,9,49,'red_concrete')
    b.box(43,7,49,43,11,49,'red_concrete')
    b.ellipse(0,114,30,26,0,0,'smooth_quartz')
    b.pool(-19,104,19,124,depth=1)
    for x in (-8,0,8):
        b.box(x,1,114,x,6 if x else 10,114,'water',liquid_depth=0)
        b.fountains.append((x,114))
    for x in (-145,-112,-79):
        pavilion(b,x,64,25,20,'Harbor market stall',roof='orange_concrete')
    for x in (80,116,152):
        pavilion(b,x,64,25,20,'Changing / locker pavilion',roof='light_blue_concrete')
        for dx in (-7,-3,1,5):
            b.box(x+dx,1,64,x+dx+1,4,65,'blue_concrete')
    for x in (-145,-111,-77,78,112,146):
        umbrella(b,x,101,'orange_concrete' if x<0 else 'cyan_concrete')
    for x in range(-280,281,35):
        if abs(x)>35:
            palm(b,x,48,12+(abs(x)//35)%5)
    b.destinations.append(('Fountain plaza',0,95,1))


def beach(b):
    b.box(-292,0,113,-199,0,246,'sandstone')
    b.pool(-286,149,-204,232,depth=3)
    # Beach stair shelf; static water basin, no wave machinery is claimed.
    b.box(-284,-1,149,-206,-1,155,'sandstone')
    b.box(-284,-2,156,-206,-2,162,'sandstone')
    for x in range(-278,-205,18):
        umbrella(b,x,120,'blue_concrete')
    for x in (-292,-197):
        b.box(x-2,0,205,x+2,7,209,'birch_planks')
        b.box(x-4,8,203,x+4,8,211,'white_concrete')
        b.box(x-5,11,202,x+5,11,212,'cyan_concrete')
    b.destinations.append(('Crescent Beach',-246,140,1))


def slides(b):
    for x in (194,257):
        for z in (126,141):
            b.box(x,0,z,x+1,38,z+1,'quartz_bricks')
    b.box(183,38,131,260,38,143,'smooth_quartz')
    b.box(193,44,125,260,44,143,'cyan_concrete')
    # Long broad staircase with half-block treads; no ladders or flying needed.
    for n in range(76):
        y=1+n//2
        material='smooth_quartz' if n%2 else 'smooth_quartz_slab'
        b.box(183,y,55+n,190,y,55+n,material,
              **({'minecraft__vertical_half':'bottom'} if n%2==0 else {}))
        if n%10==0:
            b.box(182,0,55+n,182,y+1,55+n,'cyan_concrete')
    b.path(186,82,186,54,3)
    b.pool(199,238,256,250,depth=3)
    colors=('blue_concrete','cyan_concrete','orange_concrete','lime_concrete')
    for x,color in zip((205,220,235,250),colors):
        bed=[]
        for n in range(94):
            z=144+n
            h=38-round(40*n/93)
            b.box(x-2,h,z,x+2,h,z,color)
            for xx in (x-3,x+3):
                b.box(xx,h,z,xx,h+4,z,color)
            b.box(x-2,h+1,z,x+2,h+1,z,'water',liquid_depth=0)
            b.box(x-2,h+2,z,x+2,h+4,z,'air')
            bed.append((x,h,z))
            if n%14==0 and h>1:
                for xx in (x-3,x+3):
                    b.box(xx,0,z,xx,h-1,z,'quartz_bricks')
        # Raised side walls also close the top ends, preventing reverse spills.
        b.box(x-2,39,142,x+2,39,142,'smooth_quartz_slab',minecraft__vertical_half='bottom')
        b.box(x-3,39,143,x+3,39,143,color)
        b.slides.append(bed)
    for x in (196,260):
        b.path(x,237,x,258,2)
    b.destinations.append(('Four Falls stairs',186,54,1))
    b.destinations.append(('Slide launch deck',198,136,39))


def temple(b):
    b.box(-45,0,252,45,0,315,'smooth_quartz')
    b.box(-39,1,258,39,1,311,'smooth_quartz')
    b.box(-10,1,250,10,1,251,'smooth_quartz_slab',minecraft__vertical_half='bottom')
    b.box(-10,1,257,10,1,257,'smooth_quartz_slab',minecraft__vertical_half='bottom')
    # Aquarium gallery: enclosed side tanks and dry central promenade.
    for x0,x1 in ((-37,-13),(13,37)):
        b.box(x0,2,263,x1,15,303,'light_blue_stained_glass')
        b.box(x0+1,3,264,x1-1,14,302,'water',liquid_depth=0)
        for x in range(x0+3,x1-2,5):
            for z in (269,279,291,299):
                b.box(x,3,z,x,6+(x+z)%5,z,'prismarine')
                b.put(x,7+(x+z)%5,z,'orange_concrete')
        # Static fish silhouettes, kept inside the water-filled glass tanks.
        for x,z in ((x0+7,275),(x0+16,291)):
            b.box(x,10,z,x+3,11,z,'yellow_concrete')
            b.put(x+4,12,z,'yellow_concrete');b.put(x,11,z,'black_concrete')
    for x in (-44,-24,24,44):
        for z in (253,311):
            b.box(x-2,2,z-2,x+2,3,z+2,'prismarine_bricks')
            b.box(x-1,4,z-1,x+1,23,z+1,'quartz_bricks')
            b.box(x-3,24,z-3,x+3,25,z+3,'smooth_quartz')
    b.box(-48,26,249,48,28,315,'prismarine_bricks')
    for n in range(10):
        b.box(-47+n*4,29+n,250+n*2,47-n*4,29+n,260+n*2,'cyan_concrete')
    # Curved blue dome over the rear court; open aquarium underneath.
    for y in range(29,61):
        r=round(31*math.sqrt(max(0,1-((y-29)/32)**2)))
        if r:
            b.ellipse(0,289,r,r,y,y,'blue_concrete',inner=max(0,(r-2)/r))
    b.box(-1,60,288,1,69,290,'gold_block')
    b.box(-8,66,289,8,67,289,'gold_block')
    for x in (-8,0,8):
        b.box(x,66,289,x,73 if x==0 else 71,289,'gold_block')
    b.destinations.append(("Poseidon aquarium",0,272,2))


def pirate_cove(b):
    b.pool(-285,303,-213,378,depth=4)
    # Walkable timber galleon with stepped bow/stern, cabins and static sails.
    for z in range(311,372):
        half=min(11,3+(min(z-311,371-z)//2))
        b.box(-250-half,0,z,-250+half,4,z,'dark_oak_planks')
        b.box(-250-half,5,z,-250-half,7,z,'oak_fence')
        b.box(-250+half,5,z,-250+half,7,z,'oak_fence')
    for z in (327,352):
        b.box(-250,5,z,-250,45,z,'jungle_log',pillar_axis='y')
        b.box(-263,39,z,-237,39,z,'jungle_log',pillar_axis='x')
        for y in range(21,39):
            half=12-(abs(y-29)//4)
            b.box(-250-half,y,z-1,-250+half,y,z-1,'white_concrete')
        b.box(-249,44,z,-240,48,z,'black_concrete')
    b.box(-258,5,359,-242,12,369,'dark_oak_planks')
    b.box(-256,8,358,-244,10,358,'yellow_stained_glass')
    b.box(-260,13,357,-240,13,371,'birch_planks')
    b.box(-274,4,329,-261,4,335,'birch_planks')
    # Boardwalk stairs connect the gangway to the public promenade.
    for n in range(8):
        x=-282+n
        b.box(x,n//2+1,329,x,n//2+1,335,
              'birch_planks' if n%2 else 'birch_slab',
              **({'minecraft__vertical_half':'bottom'} if n%2==0 else {}))
    b.path(-301,332,-283,332,3)
    b.box(-261,5,330,-261,7,334,'air')
    b.destinations.append(('Pirate gangway',-271,332,5))


def splash_fort(b):
    b.pool(200,278,285,345,depth=1)
    for x in (216,265):
        for z in (291,328):
            b.box(x-5,1,z-5,x+5,7,z+5,'quartz_bricks')
            b.box(x-3,1,z-3,x+3,6,z+3,'air')
            b.box(x-2,1,z-5,x+2,4,z-4,'air')
            b.box(x-7,8,z-7,x+7,8,z+7,'orange_concrete')
            for n in range(6):
                b.box(x-7+n,9+n,z-7+n,x+7-n,9+n,z+7-n,'cyan_concrete')
    b.box(217,7,307,264,7,313,'birch_planks')
    for x in range(217,265,6):
        b.box(x,1,309,x,6,309,'quartz_bricks')
    for n in range(14):
        b.box(235,n//2+1,278+n,242,n//2+1,278+n,
              'birch_planks' if n%2 else 'birch_slab',
              **({'minecraft__vertical_half':'bottom'} if n%2==0 else {}))
    b.box(235,7,292,242,7,307,'birch_planks')
    # Contained bubble fountains in the paddling basin.
    for x,z in ((210,300),(275,300),(242,336)):
        b.box(x,1,z,x,3,z,'water',liquid_depth=0)
        b.fountains.append((x,z))
    b.destinations.append(('Reef Rangers beach',241,275,1))
    b.destinations.append(('Splash fort bridge',239,308,8))


def lighthouse(b):
    cx,cz=-245,457
    b.ellipse(cx,cz,19,18,0,3,'stone_bricks')
    for y in range(4,85):
        r=12-(y//24)
        b.ellipse(cx,cz,r,r,y,y,'white_concrete' if y//10%2==0 else 'cyan_concrete',inner=(r-2)/r)
        b.ellipse(cx,cz,r-3,r-3,y,y,'air')
    b.ellipse(cx,cz,14,14,85,87,'quartz_bricks',inner=.75)
    b.ellipse(cx,cz,10,10,88,94,'light_blue_stained_glass',inner=.7)
    b.box(cx-2,88,cz-2,cx+2,94,cz+2,'sea_lantern')
    for y in range(95,103):
        r=13-(y-95)
        b.ellipse(cx,cz,r,r,y,y,'dark_prismarine')
    # Spiral half-block stairs inside the hollow shaft.
    ring=[(x,-4) for x in range(-4,5)]+[(4,z) for z in range(-3,5)]+\
         [(x,4) for x in range(3,-5,-1)]+[(-4,z) for z in range(3,-4,-1)]
    b.box(cx-2,1,cz-20,cx+2,8,cz-5,'air')
    for n in range(164):
        x,z=ring[n%len(ring)];y=4+n//2
        b.put(cx+x,y,cz+z,'smooth_quartz' if n%2 else 'smooth_quartz_slab',
              **({'minecraft__vertical_half':'bottom'} if n%2==0 else {}))
    b.box(cx-2,4,cz-12,cx+2,8,cz-8,'air')
    for n in range(8):
        b.box(cx-2,1+n//2,cz-20+n,cx+2,1+n//2,cz-20+n,
              'smooth_quartz' if n%2 else 'smooth_quartz_slab',
              **({'minecraft__vertical_half':'bottom'} if n%2==0 else {}))
    b.box(cx-2,4,cz-12,cx+2,4,cz-5,'smooth_quartz')
    b.box(cx-3,85,cz-3,cx+3,85,cz+3,'smooth_quartz')
    b.box(cx-1,85,cz-4,cx-1,85,cz-3,'smooth_quartz')
    b.path(cx,398,cx,436,4)
    b.destinations.append(('Beacon Point steps',cx,436,1))
    b.destinations.append(('Lighthouse observation room',cx,cz,86))


def scenery(b):
    base_and_paths(b);arrival(b);beach(b);slides(b);temple(b);pirate_cove(b);splash_fort(b);lighthouse(b)
    for x,z in [(-185,118),(-185,228),(-303,287),(-302,381),(-146,426),(-110,440),
                (172,115),(287,116),(289,239),(289,359),(177,351),(117,429),
                (-105,202),(97,207),(-93,343),(91,342)]:
        if (x,z) in ((-105,202),(97,207),(-93,343),(91,342)):
            b.ellipse(x,z,7,7,-3,0,'sandstone')
        palm(b,x,z,15+(x+z)%6)
    # Marina, picnic shade, benches, changing rooms and small garden pools.
    for x in (-150,-110,105,145):
        pavilion(b,x,441,24,21,'Garden cabana',roof='light_blue_concrete')
    b.path(-170,425,170,425,4)
    for x in (-130,-95,92,127):
        umbrella(b,x,128,'cyan_concrete')
    for x in (-306,306):
        for z in range(95,463,28):
            b.box(x,1,z,x,5,z,'birch_fence')
            b.put(x,6,z,'sea_lantern')
    for x in range(-270,281,30):
        for z in (86,393):
            b.box(x-3,1,z,x+3,1,z+1,'birch_planks')
            b.box(x-3,2,z+1,x+3,2,z+1,'birch_planks')


def route():
    path=[WAYPOINTS[0]]
    for p in WAYPOINTS[1:]:
        add_segment(path,p)
    add_segment(path,WAYPOINTS[0],include_final=False)
    return path


def coaster(b,path):
    # Wide station at grade, stairs, covered platform and one connected loop.
    b.box(177,6,394,250,6,407,'prismarine_bricks')
    for n in range(14):
        b.box(180,n//2,380+n,187,n//2,380+n,
              'smooth_quartz' if n%2 else 'smooth_quartz_slab',
              **({'minecraft__vertical_half':'bottom'} if n%2==0 else {}))
    for x in (180,215,248):
        b.box(x,0,395,x,17,395,'quartz_bricks')
    b.box(176,18,393,252,18,409,'cyan_concrete')
    b.box(176,19,393,252,19,394,'white_concrete')
    for i,(x,z,y) in enumerate(path):
        px,pz,_=path[i-1];nx,nz,_=path[(i+1)%len(path)]
        dx,dz=(0,1) if px!=nx else (1,0)
        b.box(x-dx,y,z-dz,x+dx,y,z+dz,'cyan_concrete')
        b.put(x,y,z,'redstone_block')
        if i%12==0 and y>8:
            for sign in (-2,2):
                b.box(x+dx*sign,0,z+dz*sign,x+dx*sign,y-1,z+dz*sign,'quartz_bricks')
            b.line((x-2*dx,y-5,z-2*dz),(x+2*dx,y-1,z+2*dz),'blue_concrete')
    # Reserve rider clearance, protecting the bed of every separated crossing.
    beds={(x,y,z) for x,z,y in path};rails={(x,y+1,z) for x,z,y in path}
    protected=beds|rails
    for x,z,y in path:
        for dx in (-1,0,1):
            for dz in (-1,0,1):
                for dy in (2,3,4):
                    p=(x+dx,y+dy,z+dz)
                    if p not in protected:
                        b.put(*p,'air')
    for i,(x,z,y) in enumerate(path):
        b.put(x,y,z,'redstone_block')
        b.put(x,y+1,z,rail_state(path,i)[0])
    # Boarding platform is level with the rail base; it is not a second track.
    b.box(177,7,401,249,7,407,'smooth_quartz')
    b.box(180,7,400,187,7,400,'smooth_quartz_slab',minecraft__vertical_half='bottom')
    b.destinations.append(('Tidebreaker boarding platform',194,406,8))
