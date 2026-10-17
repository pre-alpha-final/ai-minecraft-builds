#!/usr/bin/env python3
"""Generate, replay, validate and render Tidal Kingdom's complete Bedrock park.

python tools/generate_tidal_kingdom.py --verify-bedrock
python tools/generate_tidal_kingdom.py --check
Requires numpy and Pillow. The block catalog is pinned to the pack's minimum
engine release, rather than assuming that current vanilla names work in 1.21.50.
"""

import argparse
from collections import Counter, deque
import json
from pathlib import Path
import urllib.request
import numpy as np
from PIL import Image, ImageDraw, ImageFont
import tidal_kingdom_geometry as g
import tidal_kingdom_loading as loading
from generate_skyline_cyclone import rail_state

ROOT=Path(__file__).resolve().parents[1]
DOCS=ROOT/'docs/tidal_kingdom'
CATALOG='https://raw.githubusercontent.com/Mojang/bedrock-samples/v1.21.50.7/metadata/vanilladata_modules/mojang-blocks.json'


def write(path,text,check):
    data=(text.rstrip()+'\n').encode('utf-8')
    if path.exists():
        old=path.read_bytes()
        assert old.count(b'\r\n') in (0,old.count(b'\n')),path
        if b'\r\n' in old:data=data.replace(b'\n',b'\r\n')
    if check:assert path.read_bytes()==data,f'stale generated text {path}'
    else:path.write_bytes(data)


def verify_catalog(b):
    with urllib.request.urlopen(CATALOG,timeout=30) as response:data=json.load(response)
    known={item['name']:{p['name'] for p in item['properties']} for item in data['data_items']}
    values={s['name']:[v['value'] for v in s['values']] for s in data['block_properties']}
    for block in b.blocks:
        assert block.name in known,block.name
        for key,value in block.states:
            assert key in known[block.name] and value in values[key],(block,key,value)
    return len(b.blocks)


def walking(b):
    # Flood all walkable half-block surfaces, including stairs, ship and towers.
    # Passable cells require two full clear cells above each tread. Fences and
    # rails cannot masquerade as full-cube floors in this walking model.
    air=b.material('air')
    ignored={i for i,m in enumerate(b.blocks) if m.name.endswith(('_fence','rail','water','air'))}
    solid=np.isin(b.a,list(ignored),invert=True)&(b.a>=0)
    clear=(b.a<0)|(b.a==air)
    floor=solid[:,:-2,:]&clear[:,1:-1,:]&clear[:,2:,:]
    surfaces={}
    for ix,iy,iz in zip(*np.nonzero(floor)):
        block=b.blocks[int(b.a[ix,iy,iz])]
        half=1 if block.name.endswith('_slab') and dict(block.states).get('minecraft:vertical_half')=='bottom' else 2
        surfaces.setdefault((int(ix)+g.X0,int(iz)+g.Z0),[]).append(2*(int(iy)+g.Y0)+half)
    start=(0,32,0)
    assert 0 in surfaces[0,32]
    queue=deque([start]);seen={start}
    while queue:
        x,z,h=queue.popleft()
        for xx,zz in ((x-1,z),(x+1,z),(x,z-1),(x,z+1)):
            for hh in surfaces.get((xx,zz),()):
                p=(xx,zz,hh)
                if -2<=hh-h<=1 and p not in seen:
                    seen.add(p);queue.append(p)
    failed=[(name,x,z,h) for name,x,z,h in b.destinations if (x,z,2*h) not in seen]
    assert not failed,('unreachable guest destinations',failed,
                       'highest lighthouse walk',max((h/2,x,z) for x,z,h in seen if -260<=x<=-230 and 440<=z<=470))
    return len(seen)


def compressed_count(b,order):
    """Exact cuboids only: grow a run, then a rectangle, then a box.

    Never fills a cavity or changes a material. Air is included because the
    guest routes, slide channels and coaster corridor must actually be cleared.
    """
    data=np.transpose(b.a,order).copy(order='C')
    flat=data.ravel();starts=np.flatnonzero(flat>=0)
    n0,n1,n2=data.shape
    count=0
    for index in starts:
        value=flat[index]
        if value<0:continue
        a,rem=divmod(int(index),n1*n2);c,d=divmod(rem,n2)
        mismatch=np.flatnonzero(data[a,c,d:]!=value)
        d1=d+int(mismatch[0]) if len(mismatch) else n2
        c1=c+1
        while c1<n1 and np.all(data[a,c1,d:d1]==value):c1+=1
        a1=a+1
        while a1<n0 and np.all(data[a1,c:c1,d:d1]==value):a1+=1
        pending=[(a1-a,c1-c,d1-d)]
        while pending:
            size=list(pending.pop())
            if int(np.prod(size))<=32768:count+=1
            else:
                axis=max(range(3),key=lambda k:size[k]);left=size.copy();right=size.copy()
                left[axis]=size[axis]//2;right[axis]-=left[axis];pending.extend((left,right))
        data[a:a1,c:c1,d:d1]=-1
    assert np.all(data==-1)
    return count


def validate(b,path):
    # Replay every authored operation independently, preserving overwrite order.
    replay=np.full_like(b.a,-1)
    max_fill=0;commands=0
    for x0,y0,z0,x1,y1,z1,index in b.operations:
        volume=(x1-x0+1)*(y1-y0+1)*(z1-z0+1)
        # Count recursive exact cuboid splits, never an oversized fill.
        pending=[(x1-x0+1,y1-y0+1,z1-z0+1)]
        while pending:
            size=list(pending.pop());v=int(np.prod(size))
            if v<=32768:commands+=1;max_fill=max(max_fill,v)
            else:
                axis=max(range(3),key=lambda k:size[k]);a=size.copy();c=size.copy()
                a[axis]=size[axis]//2;c[axis]-=a[axis];pending.extend((a,c))
        replay[x0-g.X0:x1-g.X0+1,y0-g.Y0:y1-g.Y0+1,z0-g.Z0:z1-g.Z0+1]=index
    assert np.array_equal(replay,b.a)
    del replay
    assert commands>10000
    rail_positions={(x,z,y):i for i,(x,z,y) in enumerate(path)}
    assert len(rail_positions)==len(path)
    curves=0;changes=[];current=0
    for i,(x,z,y) in enumerate(path):
        nx,nz,ny=path[(i+1)%len(path)]
        assert abs(nx-x)+abs(nz-z)==1 and abs(ny-y)<=1
        rail,curve=rail_state(path,i);curves+=int(curve)
        assert b.blocks[b.get(x,y+1,z)]==rail
        assert b.blocks[b.get(x,y,z)].name=='minecraft:redstone_block'
        for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)):
            for dy in (-1,0,1):
                j=rail_positions.get((x+dx,z+dz,y+dy))
                assert j is None or j in ((i-1)%len(path),(i+1)%len(path)),('unintended rail junction',i,j)
        for dx in (-1,0,1):
            for dz in (-1,0,1):
                for dy in (2,3,4):
                    material=b.blocks[b.get(x+dx,y+dy,z+dz)].name
                    if material!='minecraft:air':
                        j=rail_positions.get((x+dx,z+dz,y+dy))
                        if j is None:j=rail_positions.get((x+dx,z+dz,y+dy-1))
                        assert j is not None and min((j-i)%len(path),(i-j)%len(path))<=2, ('obstructed rider corridor',i,j)
        dy=ny-y
        if dy and current*dy>=0:current+=dy
        else:
            if current:changes.append(current)
            current=dy
    if current:changes.append(current)
    # Slides have continuous, descending, contained channels and a shared pool.
    for bed in b.slides:
        for i,(x,y,z) in enumerate(bed):
            assert b.blocks[b.get(x,y,z)].name.endswith('_concrete')
            assert b.blocks[b.get(x,y+1,z)].name=='minecraft:water'
            assert b.blocks[b.get(x,y+2,z)].name=='minecraft:air'
            for xx in (x-3,x+3):
                for h in range(y,y+5):
                    assert b.blocks[b.get(xx,h,z)].name.endswith('_concrete')
            if i:
                assert z-bed[i-1][2]==1 and -1<=y-bed[i-1][1]<=0
    # Every below-deck pool cell has a floor and no unbounded side opening.
    water=b.material('water',liquid_depth=0)
    flumes={(x+dx,z) for bed in b.slides for x,_,z in bed for dx in range(-2,3)}
    water_positions=np.column_stack(np.nonzero(b.a==water))
    for ix,iy,iz in water_positions:
        if iy+g.Y0>0:continue
        for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)):
            v=int(b.a[ix+dx,iy,iz+dz])
            assert (v>=0 and b.blocks[v].name!='minecraft:air') or (int(ix)+g.X0+dx,int(iz)+g.Z0+dz) in flumes,('uncontained basin',ix,iy,iz)
        below=int(b.a[ix,iy-1,iz])
        assert below>=0 and b.blocks[below].name!='minecraft:air'
    # Falling fountain water can spread seven blocks from a source. Keep that
    # complete horizontal catchment above the basin, including the outer jets.
    for x,z in b.fountains:
        for dx in range(-7,8):
            for dz in range(-7,8):
                if abs(dx)+abs(dz)<=7:
                    assert b.get(x+dx,0,z+dz)==water,('fountain catchment',x,z,dx,dz)
    # A full loop of water with two clear cells over the surface connects all
    # four river bridge approaches, allowing manually propelled boats as well.
    airy=(b.a<0)|(b.a==b.material('air'))
    river=(b.a[:,-g.Y0,:]==water)&airy[:,1-g.Y0,:]&airy[:,2-g.Y0,:]
    xx,zz=np.indices(river.shape)
    radius=((xx+g.X0)/156)**2+((zz+g.Z0-277)/114)**2
    river &= (radius>.82)&(radius<1.2)
    start=(156-g.X0,277-g.Z0);queue=deque([start]);wet_seen={start}
    while queue:
        x,z=queue.popleft()
        for a,c in ((x-1,z),(x+1,z),(x,z-1),(x,z+1)):
            if 0<=a<640 and 0<=c<450 and river[a,c] and (a,c) not in wet_seen:
                wet_seen.add((a,c));queue.append((a,c))
    assert all((x-g.X0,z-g.Z0) in wet_seen for x,z in ((156,277),(-156,277),(0,163),(0,391)))
    values,counts=np.unique(b.a,return_counts=True)
    # Several rail states share names; aggregate names rather than overwrite.
    materials=Counter()
    for v,c in zip(values,counts):
        if v>=0:materials[b.blocks[int(v)].name]+=int(c)
    air=materials['minecraft:air'];placed=b.a>=0
    bounds=[]
    for axis,offset in enumerate((g.X0,g.Y0,g.Z0)):
        used=np.nonzero(np.any(placed,axis=tuple(k for k in range(3) if k!=axis)))[0]
        bounds.append((int(used.min())+offset,int(used.max())+offset))
    minimum=[v[0] for v in bounds];maximum=[v[1] for v in bounds]
    assert minimum==[g.X0,g.Y0,g.Z0] and maximum[0]==g.X1 and maximum[2]==g.Z1
    columns={}
    for x,z,y in path:columns.setdefault((x,z),[]).append(y+1)
    crossings=[dict(left=x,forward=z,rail_heights=sorted(ys),separation=min(c-a for a,c in zip(sorted(ys),sorted(ys)[1:])))
               for (x,z),ys in sorted(columns.items()) if len(ys)>1]
    assert crossings and all(c['separation']>=6 for c in crossings)
    reachable=walking(b)
    compression={''.join('XYZ'[k] for k in order):compressed_count(b,order)
                 for order in ((0,1,2),(1,2,0),(2,0,1))}
    assert min(compression.values())>10000,compression
    return dict(name='Tidal Kingdom',public_function=loading.PUBLIC,bounds=[minimum,maximum],
                dimensions=dict(width=640,depth=450,height=maximum[1]-minimum[1]+1),
                plot_area=640*450,infernal_rift_plot_area=460*313,plot_area_ratio=640*450/(460*313),
                roller_coasters=1,water_slides=4,rails=len(path),powered_rails=len(path)-curves,
                curves=curves,major_climbs=sum(v>=20 for v in changes),major_drops=sum(v<=-20 for v in changes),
                elevation_changes=changes,largest_drop=-min(changes),rail_height=[min(y+1 for _,_,y in path),max(y+1 for _,_,y in path)],
                crossings=crossings,non_air_blocks=sum(materials.values())-air,air_cells=air,
                authored_placement_commands=commands,maximum_fill_volume=max_fill,
                exact_cuboid_command_counts=compression,best_tested_exact_cuboids=min(compression.values()),
                material_counts=dict(sorted(materials.items())),reachable_walking_surfaces=reachable,
                walking_destinations=[dict(name=n,left=x,forward=z,feet_height=h) for n,x,z,h in b.destinations],
                landmarks=[label for label,_,_ in g.LANDMARKS])


COLORS={'grass_block':(83,149,76),'sandstone':(221,205,151),'smooth_sandstone':(239,224,178),
        'smooth_quartz':(237,239,226),'quartz_bricks':(215,228,221),'smooth_quartz_slab':(237,239,226),
        'water':(43,162,202),'cyan_concrete':(23,166,180),'blue_concrete':(41,83,185),
        'light_blue_concrete':(72,183,219),'orange_concrete':(244,146,58),'lime_concrete':(156,205,56),
        'white_concrete':(245,247,234),'yellow_concrete':(246,211,74),'gold_block':(247,207,68),
        'redstone_block':(179,68,59),'golden_rail':(248,195,74),'rail':(189,191,184),
        'jungle_leaves':(42,123,66),'jungle_log':(130,102,65),'birch_planks':(220,194,137),
        'birch_slab':(220,194,137),'birch_fence':(195,168,112),'oak_fence':(155,112,64),
        'dark_oak_planks':(106,70,44),'light_blue_stained_glass':(114,216,226),
        'yellow_stained_glass':(239,220,96),'sea_lantern':(185,248,217),'stone_bricks':(137,157,158),
        'prismarine_bricks':(88,181,159),'prismarine':(84,157,139),'dark_prismarine':(34,103,105),
        'black_concrete':(42,45,51),'red_concrete':(186,48,53)}


def font(size,bold=False):
    return ImageFont.truetype('C:/Windows/Fonts/arialbd.ttf' if bold else 'C:/Windows/Fonts/arial.ttf',size)


def previews(b,path,m):
    colors=np.asarray([COLORS.get(block.name.removeprefix('minecraft:'),(165,163,150)) for block in b.blocks],dtype=np.uint8)
    air=b.material('air');solid=(b.a>=0)&(b.a!=air)
    heights=np.max(np.where(solid,np.arange(120)[None,:,None],-1),axis=1)
    xx,zz=np.indices(heights.shape)
    top=b.a[xx,np.maximum(0,heights),zz]
    rgb=colors[top]
    # Front at bottom; positive local left appears on the left of the plan.
    rgb=np.transpose(rgb[::-1,:, :],(1,0,2))[::-1,:,:]
    im=Image.new('RGB',(1660,1480),'#102c3b');d=ImageDraw.Draw(im)
    d.text((38,25),'TIDAL KINGDOM',font=font(46,True),fill='#edf6e9')
    d.text((38,83),'640 x 450 blocks  /  2x Infernal Rift plot area  /  one roller coaster',font=font(25),fill='#9edbe1')
    im.paste(Image.fromarray(rgb).resize((1536,1080),Image.Resampling.NEAREST),(62,145))
    point=lambda x,z:(62+(g.X1-x)*2.4,145+(g.Z1-z)*2.4)
    for i,(x,z,y) in enumerate(path):
        nx,nz,_=path[(i+1)%len(path)]
        color=(255,int(230-y*.8),int(140-y*.9))
        d.line((*point(x,z),*point(nx,nz)),fill=color,width=4)
    for i,(label,x,z) in enumerate(g.LANDMARKS,1):
        px,pz=point(x,z)
        d.ellipse((px-17,pz-17,px+17,pz+17),fill='#102c3b',outline='#fcf3cf',width=2)
        d.text((px-7 if i<10 else px-12,pz-12),str(i),font=font(20,True),fill='white')
    for i,(label,_,_) in enumerate(g.LANDMARKS):
        d.text((40+(i%3)*545,1265+(i//3)*42),f'{i+1}. {label}',font=font(20),fill='#d4e9dd')
    d.text((40,1440),'Actual generated blocks / front entrance at bottom / orange line is the single Tidebreaker circuit',font=font(21),fill='#9edbe1')
    im.save(DOCS/'route.png')
    # Surface-render true voxel faces from the dense map. Hidden faces are culled.
    # Preserve every block in the overview, including single-block trestles.
    render(b,DOCS/'overview.png',colors,1)
    elevation=Image.new('RGB',(1600,440),'#102c3b');d=ImageDraw.Draw(elevation)
    d.text((35,22),'TIDEBREAKER / ONE CONTINUOUS MINECART CIRCUIT',font=font(31,True),fill='#edf6e9')
    for y in (8,30,60,90,110):
        py=365-y*2.45;d.line((65,py,1550,py),fill='#355361')
        d.text((18,py-10),str(y),font=font(18),fill='#9edbe1')
    d.line([(65+i/(len(path)-1)*1485,365-(y+1)*2.45) for i,(_,_,y) in enumerate(path)],fill='#ffd467',width=4)
    d.text((35,390),f"{m['curves']} curves / {m['major_climbs']} major climbs / {m['major_drops']} major drops / largest drop {m['largest_drop']} blocks",font=font(23),fill='#9edbe1')
    elevation.save(DOCS/'elevation.png')


def render(b,destination,colors,step=2):
    a=b.a[::step,::step,::step];air=b.material('air')
    solid=(a>=0)&(a!=air)
    raw=lambda x,y,z:(-2.2*x+1.65*z,-.72*x-1.0*z-2.5*y)
    corners=[raw(x,y,z) for x in (g.X0,g.X1) for y in (0,114) for z in (g.Z0,g.Z1)]
    u0=min(u for u,v in corners);u1=max(u for u,v in corners)
    v0=min(v for u,v in corners);v1=max(v for u,v in corners)
    scale=min(2080/(u1-u0),1360/(v1-v0))
    project=lambda x,y,z:(60+(raw(x,y,z)[0]-u0)*scale,150+(raw(x,y,z)[1]-v0)*scale)
    faces=[]
    for axis,direction,shade in ((0,-1,.80),(2,-1,.65),(1,1,1.12)):
        exposed=solid.copy()
        if direction==-1:
            sl=[slice(None)]*3;sl[axis]=slice(1,None)
            before=[slice(None)]*3;before[axis]=slice(None,-1)
            exposed[tuple(sl)] &= ~solid[tuple(before)]
        else:
            sl=[slice(None)]*3;sl[axis]=slice(None,-1)
            after=[slice(None)]*3;after[axis]=slice(1,None)
            exposed[tuple(sl)] &= ~solid[tuple(after)]
        for ix,iy,iz in zip(*np.nonzero(exposed)):
            x,y,z=int(ix)*step+g.X0,int(iy)*step+g.Y0,int(iz)*step+g.Z0
            if axis==0:vertices=[(x,y,z),(x,y,z+step),(x,y+step,z+step),(x,y+step,z)]
            elif axis==2:vertices=[(x,y,z),(x+step,y,z),(x+step,y+step,z),(x,y+step,z)]
            else:vertices=[(x,y+step,z),(x+step,y+step,z),(x+step,y+step,z+step),(x,y+step,z+step)]
            c=tuple(min(255,int(v*shade)) for v in colors[a[ix,iy,iz]])
            depth=-.7*(x+step/2)-(z+step/2)+.55*(y+step/2)
            faces.append((depth,vertices,c))
    im=Image.new('RGB',(2200,1630),'#102c3b');d=ImageDraw.Draw(im)
    for _,vertices,c in sorted(faces,key=lambda f:f[0]):d.polygon([project(*v) for v in vertices],fill=c)
    d.text((40,25),'TIDAL KINGDOM / FULL WATER PARK',font=font(44,True),fill='#edf6e9')
    d.text((40,87),'Four Falls slides / Poseidon aquarium / lagoon and river / pirate cove / one Tidebreaker coaster',font=font(25),fill='#9edbe1')
    d.text((40,1570),'Actual generated voxel surfaces; not an in-game screenshot. Water and scenery are static.',font=font(23),fill='#9edbe1')
    im.save(destination)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check',action='store_true')
    parser.add_argument('--verify-bedrock',action='store_true')
    args=parser.parse_args()
    b=g.Park();g.scenery(b);path=g.route();g.coaster(b,path)
    print('Geometry complete; validating route, basins and guest access.',flush=True)
    metrics=validate(b,path)
    if args.verify_bedrock:print(f'Official 1.21.50 catalog: {verify_catalog(b)} block/state combinations verified.',flush=True)
    texts=loading.functions(metrics)
    loading.validate_functions(texts,b,path)
    print('All phases and cardinal voxel maps validated; writing/decoding 80 assets.',flush=True)
    metrics['assets']=loading.structure_assets(b,args.check)
    metrics['validation']=dict(complete_authored_replay=True,one_continuous_coaster=True,
                              supported_powered_rails=True,no_unintended_junctions=True,rider_clearance=True,
                              four_cardinal_voxel_and_material_maps=True,four_cardinal_rail_states=True,
                              all_chunk_alignments_preloaded=True,phase_transition_simulation=True,
                              automatic_staging=True,saved_origin_and_rotation=True,
                              readiness_barriers_and_timeout_cleanup=True,reentry_guard=True,
                              nbt_roundtrip=True,contained_below_deck_water=True,descending_slides=True,
                              fountain_catchments=True,connected_river_with_surface_headroom=True,
                              guest_destination_walks=True,exact_three_function_lifecycle=True,
                              in_game_tested=False)
    DOCS.mkdir(parents=True,exist_ok=True)
    for name,text in texts.items():write(ROOT/'src/functions'/name,text,args.check)
    write(DOCS/'metrics.json',json.dumps(metrics,indent=2),args.check)
    if not args.check:previews(b,path,metrics)
    print(json.dumps({k:v for k,v in metrics.items() if k not in ('assets','walking_destinations','material_counts','landmarks')},indent=2))


if __name__=='__main__':main()
