"""Native assets and full cardinal-map validation for the staged water park."""

import math
from pathlib import Path
import struct
import numpy as np
import cardinal_snap as snap
import generate_skyline_cyclone as nbt
import tidal_kingdom_geometry as g
from tidal_kingdom_installer import (NAME, PUBLIC, LOADED, CLEANUP, FACING, OBJECTIVE,
                                    ANCHOR, OWNER, ORIGIN_AREA, functions, areas,
                                    specs, saved, stage_commands, PLACEMENT_LIFT)

ROOT=Path(__file__).resolve().parents[1]


def validate_functions(texts,b,path):
    lines=texts[f'{PUBLIC}.mcfunction'].splitlines()
    snap.validate_public_lines(lines)
    all_commands=stage_commands(0)+stage_commands(1)
    for phase in (0,1):
        commands=stage_commands(phase)
        assert len(commands)==216
        source=texts[f'{CLEANUP}.mcfunction']
        for command in commands:
            placement=saved(command)
            count=source.count(' run '+placement+'\n')+int(source.endswith(' run '+placement))
            assert count==all_commands.count(command),command
        for selector,angle in FACING:
            loads=[c for c in commands if c.startswith(f'execute if entity {selector} run structure load ')]
            assert len(loads)==40
            covered=np.zeros((320,450),dtype=np.int8)
            for name,x0,x1,z0,z1,p in specs():
                if p!=phase:continue
                ax=x1 if angle in (180,270) else x0
                az=z1 if angle in (90,180) else z0
                expected=f'execute if entity {selector} run structure load ai_minecraft_builds:{name} ^{ax} ^{-5+PLACEMENT_LIFT} ^{az} {angle}_degrees none'
                assert loads.count(expected)==1
                # Simulate every written cell, including air, in all facings.
                data=b.a[x0-g.X0:x1-g.X0+1,:,z0-g.Z0:z1-g.Z0+1]
                u,h,v=np.nonzero(data>=0);sx,sz=x1-x0+1,z1-z0+1
                if angle==0:wx,wz=ax+u,az+v;lx,lz=wx,wz
                elif angle==90:wx,wz=-az+sz-1-v,ax+u;lx,lz=wz,-wx
                elif angle==180:wx,wz=-ax+sx-1-u,-az+sz-1-v;lx,lz=-wx,-wz
                else:wx,wz=az+v,-ax+sx-1-u;lx,lz=-wz,wx
                assert np.array_equal(lx,x0+u) and np.array_equal(lz,z0+v)
                assert np.array_equal(data[u,h,v],b.a[lx-g.X0,h,lz-g.Z0])
                covered[x0-(g.X0+320*phase):x1-(g.X0+320*phase)+1,z0-g.Z0:z1-g.Z0+1]+=1
            assert np.all(covered==1)
            area_cover=np.zeros((320,450),dtype=np.int8)
            for _,a,c,z,w in areas(phase):
                area_cover[a-(g.X0+320*phase):c-(g.X0+320*phase)+1,z-g.Z0:w-g.Z0+1]+=1
                assert math.ceil((c-a+16)/16)*math.ceil((w-z+16)/16)<=88
                for rx in range(16):
                    for rz in range(16):
                        turn=lambda x,z:(x,z) if angle==0 else (-z,x) if angle==90 else (-x,-z) if angle==180 else (z,-x)
                        corners=[turn(xx,zz) for xx in (a,c) for zz in (z,w)]
                        chunks=((max(xx for xx,_ in corners)+rx)//16-(min(xx for xx,_ in corners)+rx)//16+1)*\
                               ((max(zz for _,zz in corners)+rz)//16-(min(zz for _,zz in corners)+rz)//16+1)
                        assert chunks<=88
            assert np.all(area_cover==1)
    state_turn={0:1,1:0,2:5,5:3,3:4,4:2,6:7,7:8,8:9,9:6}
    for angle in (0,90,180,270):
        turn=lambda x,z:(x,z) if angle==0 else (-z,x) if angle==90 else (-x,-z) if angle==180 else (z,-x)
        world=[(*turn(x,z),y) for x,z,y in path]
        for i,(x,z,y) in enumerate(path):
            state=dict(b.blocks[b.get(x,y+1,z)].states)['rail_direction']
            for _ in range(angle//90):state=state_turn[state]
            expected,_=nbt.rail_state(world,i)
            assert state==dict(expected.states)['rail_direction']
    assert len(texts)==3
    for filename,text in texts.items():
        assert all(line==line.rstrip() and not line.startswith('/') for line in text.splitlines())
        if filename.startswith('_'):
            assert text.startswith('# INTERNAL CALLBACK - do not run manually')
            assert not any(c in text for c in snap.SNAP_COMMANDS)
        assert sum(snap.is_command(line) for line in text.splitlines())<10000
    # Interpret the actual emitted commands, rather than only the intended
    # state diagram. Unit tests exercise failure and reentry paths as well.
    from test_tidal_kingdom_installer import Simulator
    for angle in (0,90,180,270):
        sim=Simulator(texts,angle)
        sim.call(PUBLIC)
        sim.call(CLEANUP)
        sim.player['position']=(1300.5,180,-200.5);sim.player['yaw']=270
        for _ in range(8):sim.call(LOADED)
        assert sim.scheduled[CLEANUP]==600
        sim.call(CLEANUP)
        assert sim.scores['tki_stage']==3 and sim.scheduled[CLEANUP]==2
        sim.call(CLEANUP)
        for _ in range(8):sim.call(LOADED)
        sim.call(CLEANUP)
        assert len(sim.loads)==80 and sim.scores['tki_active']==0 and not sim.ticking
        assert not sim.anchors
        assert all(origin==(12.5,70,90.5) and yaw==angle for _,origin,yaw in sim.loads)


def int_list_payload(a):
    a=np.asarray(a,dtype='<i4').ravel()
    return b'\x03'+struct.pack('<i',a.size)+a.tobytes()


def structure_assets(b,check=False):
    nbt.BLOCK_VERSION=18_161_159
    output=ROOT/'src/structures/ai_minecraft_builds'
    output.mkdir(parents=True,exist_ok=True)
    assets=[]
    total=0
    for name,x0,x1,z0,z1,phase in specs():
        data=b.a[x0-g.X0:x1-g.X0+1,:,z0-g.Z0:z1-g.Z0+1]
        height=int(np.nonzero(np.any(data>=0,axis=(0,2)))[0].max())+1
        data=data[:,:height,:]
        values=sorted(int(v) for v in np.unique(data) if v>=0)
        table=np.full(len(b.blocks)+1,-1,dtype=np.int32)
        for i,v in enumerate(values):table[v]=i
        layer=table[data]
        indices=nbt.tag_header(9,'block_indices')+b'\x09'+struct.pack('<i',2)+\
                int_list_payload(layer)+int_list_payload(np.full(data.shape,-1,dtype=np.int32))
        structure=indices+nbt.tag_compound_list('entities',[])+nbt.tag_compound('palette',
            nbt.tag_compound('default',nbt.tag_compound_list('block_palette',[nbt.palette_entry(b.blocks[v]) for v in values])+nbt.tag_compound('block_position_data',b'')))
        encoded=b'\x0a\x00\x00'+nbt.tag_int('format_version',1)+nbt.tag_int_list('size',list(data.shape))+\
                nbt.tag_compound('structure',structure)+nbt.tag_int_list('structure_world_origin',[0,0,0])+b'\x00'
        # Independent full NBT decode, including both complete integer layers.
        root,end=nbt.read_payload(encoded,3,10)
        assert end==len(encoded) and root['format_version']==1 and root['size']==list(data.shape)
        assert root['structure_world_origin']==[0,0,0]
        assert data.shape[0]<=64 and data.shape[1]<=257 and data.shape[2]<=64
        st=root['structure'];assert st['entities']==[]
        first,second=st['block_indices'];assert len(first)==len(second)==data.size
        decoded=np.asarray(first,dtype=np.int32).reshape(data.shape)
        assert np.all(np.asarray(second)==-1) and np.all((decoded>=-1)&(decoded<len(values)))
        palette=st['palette']['default'];assert palette['block_position_data']=={}
        for entry,v in zip(palette['block_palette'],values):
            assert entry['name']==b.blocks[v].name and entry['states']==dict(b.blocks[v].states)
            assert entry['version']==nbt.BLOCK_VERSION
        assert len(palette['block_palette'])==len(values) and np.array_equal(decoded,layer)
        inverse=np.asarray(values+[-1],dtype=np.int16)
        assert np.array_equal(inverse[decoded],data),name
        count=int(np.count_nonzero(data>=0));total+=count
        path=output/f'{name}.mcstructure'
        if check:assert path.read_bytes()==encoded, f'stale asset {path}'
        else:path.write_bytes(encoded)
        assets.append(dict(file=path.name,size=list(data.shape),cells=count,bytes=len(encoded),stage_number=phase+1))
    assert total==np.count_nonzero(b.a>=0)
    return assets
