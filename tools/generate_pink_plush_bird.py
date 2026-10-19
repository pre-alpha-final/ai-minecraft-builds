#!/usr/bin/env python3
"""Convert pink_plush_bird.glb into a softly lit, fleece-like Bedrock plush.

Requires NumPy, SciPy and Pillow. --check regenerates and compares output bytes.
Shared NBT codec and pinned official block-color measurements come from the
existing A.D. 2044 converter; the source GLB is read only.
"""

from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import io
import json
import math
from pathlib import Path
import struct

import numpy as np
from PIL import Image, ImageDraw, ImageFont
from scipy import ndimage

import cardinal_snap as snap
from generate_ad2044 import lab, write, compress_count
import generate_skyline_cyclone as nbt

ROOT = Path(__file__).resolve().parents[1]
DOCS = ROOT / 'docs/pink_plush_bird'
NAME = 'pink_plush_bird'
PUBLIC = '20_pink_plush_bird'
LOADED = f'_{NAME}_tickingarea_loaded'
CLEANUP = f'_{NAME}_remove_tickingarea'
OBJECTIVE = 'ppb_install'
ANCHOR = '@e[type=minecraft:armor_stand,tag=ppb_origin]'
OWNER = '@a[tag=ppb_builder]'
LIGHT = 'minecraft:light_block_15'
PREVIEW_BACKGROUND = (193,210,223)
FACING = [(0, '@s[ry=0,rym=0]'), (90, '@s[ry=90,rym=90]'),
          (180, '@s[rym=135,ry=180]'), (180, '@s[rym=-180,ry=-135]'),
          (270, '@s[ry=-90,rym=-90]')]


def srgb_to_linear(value):
    return np.where(value <= .04045, value / 12.92, ((value + .055) / 1.055) ** 2.4)


def linear_to_srgb(value):
    value = np.maximum(value, 0)
    return np.where(value <= .0031308, value * 12.92, 1.055 * value ** (1/2.4) - .055)


def read_glb(path):
    with path.open('rb') as stream:
        magic, version, length = struct.unpack('<4sII', stream.read(12))
        assert magic == b'glTF' and version == 2 and length == path.stat().st_size
        size, kind = struct.unpack('<I4s', stream.read(8))
        assert kind == b'JSON'
        g = json.loads(stream.read(size))  # Inspect scene before decoding payload.
        assert not g.get('extensionsRequired'), 'Unsupported required extension'
        size, kind = struct.unpack('<I4s', stream.read(8))
        assert kind == b'BIN\0'
        blob = stream.read(size)
        assert stream.tell() == length

    def accessor(index):
        a = g['accessors'][index]
        assert 'sparse' not in a
        view = g['bufferViews'][a['bufferView']]
        assert view['buffer'] == 0
        dtype = np.dtype({5120:'i1', 5121:'u1', 5122:'<i2', 5123:'<u2',
                          5125:'<u4', 5126:'<f4'}[a['componentType']])
        columns = {'SCALAR':1, 'VEC2':2, 'VEC3':3, 'VEC4':4}[a['type']]
        offset = view.get('byteOffset', 0) + a.get('byteOffset', 0)
        stride = view.get('byteStride', columns * dtype.itemsize)
        assert offset + (a['count']-1)*stride + columns*dtype.itemsize <= view.get('byteOffset', 0)+view['byteLength']
        result = np.ndarray((a['count'], columns), dtype=dtype, buffer=blob,
                            offset=offset, strides=(stride, dtype.itemsize)).astype(np.float64)
        if a.get('normalized') and dtype.kind != 'f':
            result = np.maximum(result / np.iinfo(dtype).max, -1)
        return result

    textures = {}
    for i, image in enumerate(g.get('images', [])):
        view = g['bufferViews'][image['bufferView']]
        start = view.get('byteOffset', 0)
        textures[i] = np.asarray(Image.open(io.BytesIO(blob[start:start+view['byteLength']])).convert('RGBA'))
    primitives = []

    def visit(index, parent):
        node = g['nodes'][index]
        if 'matrix' in node:
            matrix = np.asarray(node['matrix']).reshape((4,4), order='F')
        else:
            x,y,z,w = node.get('rotation', [0,0,0,1])
            rotation = np.array([[1-2*(y*y+z*z), 2*(x*y-z*w), 2*(x*z+y*w)],
                                 [2*(x*y+z*w), 1-2*(x*x+z*z), 2*(y*z-x*w)],
                                 [2*(x*z-y*w), 2*(y*z+x*w), 1-2*(x*x+y*y)]])
            matrix = np.eye(4)
            matrix[:3,:3] = rotation @ np.diag(node.get('scale',[1,1,1]))
            matrix[:3,3] = node.get('translation',[0,0,0])
        transform = parent @ matrix
        if 'mesh' in node:
            for primitive in g['meshes'][node['mesh']]['primitives']:
                assert primitive.get('mode',4) == 4, 'Source must explicitly use TRIANGLES'
                attributes = primitive['attributes']
                positions = accessor(attributes['POSITION'])
                positions = (np.c_[positions,np.ones(len(positions))] @ transform.T)[:,:3]
                indices = accessor(primitive['indices']).astype(np.int32).reshape(-1,3)
                assert indices.min() >= 0 and indices.max() < len(positions)
                material = g['materials'][primitive['material']]
                assert material.get('alphaMode','OPAQUE') == 'OPAQUE'
                pbr = material['pbrMetallicRoughness']
                factor = np.asarray(pbr.get('baseColorFactor',[1,1,1,1]),dtype=float)
                assert factor[3] == 1
                colors = accessor(attributes['COLOR_0']) if 'COLOR_0' in attributes else None
                if colors is not None and colors.shape[1] == 4:
                    assert np.all(colors[:,3] == 1)
                texture, uv, sampler = None, None, None
                if 'baseColorTexture' in pbr:
                    info = pbr['baseColorTexture']
                    assert info.get('texCoord',0) == 0 and not info.get('extensions')
                    descriptor = g['textures'][info['index']]
                    sampler = g['samplers'][descriptor['sampler']]
                    assert sampler['wrapS'] == sampler['wrapT'] == 10497
                    texture = textures[descriptor['source']]
                    assert np.all(texture[:,:,3] == 255)
                    uv = accessor(attributes['TEXCOORD_0'])
                primitives.append(dict(name=node['name'], positions=positions, indices=indices,
                    colors=colors, factor=factor[:3], uv=uv, texture=texture,
                    material=primitive['material'], extras=node.get('extras',{})))
        for child in node.get('children',[]):
            visit(child, transform)

    for index in g['scenes'][g.get('scene',0)]['nodes']:
        visit(index, np.eye(4))
    metadata = dict(source=path.name, sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
        format='glTF 2.0 GLB, little-endian', bytes=length,
        vertices=sum(len(p['positions']) for p in primitives),
        triangles=sum(len(p['indices']) for p in primitives), primitive_modes=['TRIANGLES'],
        scene=g['scenes'][g.get('scene',0)], nodes=g['nodes'], materials=g['materials'],
        texture_dimensions={g['images'][i]['name']:list(t.shape[1::-1]) for i,t in textures.items()},
        excluded_geometry=[], transforms_applied=True,
        material_limitations='Base color textures, vertex colors and factors retained; normal maps, sheen, clearcoat and metallic lighting cannot be encoded as full vanilla blocks.')
    return primitives, metadata


def voxelize(primitives, metrics, palette):
    lower = np.min([p['positions'].min(axis=0) for p in primitives],axis=0)
    upper = np.max([p['positions'].max(axis=0) for p in primitives],axis=0)
    scale = 359 / (upper[1]-lower[1])
    origin = np.array([(lower[0]+upper[0])*scale/2, 1-lower[1]*scale, 32+upper[2]*scale])
    lo = np.floor(lower*[-1,1,-1]*scale+origin+.5).astype(int)
    hi = np.floor(upper*[-1,1,-1]*scale+origin+.5).astype(int)
    lo,hi = np.minimum(lo,hi),np.maximum(lo,hi)
    shape = tuple(hi-lo+1)
    best = np.full(math.prod(shape), np.inf)
    blocks = np.full(math.prod(shape), -1, dtype=np.int16)
    references = lab([e['rgb'] for e in palette['entries']])
    grids, sample_count, primitive_metrics = {},0,[]
    for primitive in primitives:
        points = primitive['positions']*[-1,1,-1]*scale+origin
        triangles = points[primitive['indices']]
        lengths = np.maximum.reduce([np.linalg.norm(triangles[:,a]-triangles[:,b],axis=1)
                                     for a,b in ((0,1),(0,2),(1,2))])
        steps = np.maximum(1,np.ceil(lengths*3)).astype(int)
        primitive_samples = 0
        for step in np.unique(steps):
            if step not in grids:
                weights = np.array([(i/step,j/step) for i in range(step+1) for j in range(step+1-i)])
                grids[step] = np.c_[1-weights.sum(axis=1),weights]
            weights = grids[step]
            selected_triangles = np.flatnonzero(steps == step)
            batch_size = max(1,200000//len(weights))
            for start in range(0,len(selected_triangles),batch_size):
                ids = selected_triangles[start:start+batch_size]
                samples = np.einsum('wk,bkc->bwc',weights,triangles[ids]).reshape(-1,3)
                cells = np.floor(samples+.5).astype(int)
                keys = np.ravel_multi_index((cells-lo).T,shape)
                distances = ((samples-cells)**2).sum(axis=1)
                order = np.lexsort((np.arange(len(keys)),distances,keys))
                winners = order[np.r_[True,keys[order][1:] != keys[order][:-1]]]
                winners = winners[distances[winners] < best[keys[winners]]]
                sample_count += len(samples)
                primitive_samples += len(samples)
                if not len(winners):
                    continue
                tri_ids, weight_ids = np.divmod(winners,len(weights))
                vertex_ids = primitive['indices'][ids[tri_ids]]
                selected_weights = weights[weight_ids]
                color = np.broadcast_to(primitive['factor'],(len(winners),3)).copy()
                if primitive['colors'] is not None:
                    color *= np.einsum('bk,bkc->bc',selected_weights,primitive['colors'][vertex_ids,:3])
                if primitive['texture'] is not None:
                    uv = np.einsum('bk,bkc->bc',selected_weights,primitive['uv'][vertex_ids])
                    texture = primitive['texture'][:,:,:3]
                    h,w = texture.shape[:2]
                    coords = uv*[w,h]-.5
                    x,y = np.floor(coords).astype(int).T
                    dx,dy = (coords-np.floor(coords)).T
                    # REPEAT wrapping includes samples crossing the texture seam.
                    linear = [srgb_to_linear(texture[yy%h,xx%w]/255) for xx,yy in
                              ((x,y),(x+1,y),(x,y+1),(x+1,y+1))]
                    color *= (linear[0]*(1-dx)[:,None]*(1-dy)[:,None]
                              +linear[1]*dx[:,None]*(1-dy)[:,None]
                              +linear[2]*(1-dx)[:,None]*dy[:,None]
                              +linear[3]*dx[:,None]*dy[:,None])
                rgb = np.clip(linear_to_srgb(color)*255,0,255)
                mapped = np.empty(len(rgb),dtype=np.int16)
                for offset in range(0,len(rgb),10000):
                    values = lab(rgb[offset:offset+10000])
                    mapped[offset:offset+10000] = ((values[:,None]-references[None])**2).sum(axis=2).argmin(axis=1)
                best[keys[winners]] = distances[winners]
                blocks[keys[winners]] = mapped
        primitive_metrics.append(dict(name=primitive['name'],vertices=len(points),
            triangles=len(triangles),samples=primitive_samples,material=primitive['material']))
        print('Sampled',primitive['name'],primitive_samples,flush=True)
    occupied = np.flatnonzero(blocks >= 0)
    cells = np.array(np.unravel_index(occupied,shape)).T+lo
    entries = palette['entries']
    scene = {tuple(map(int,p)):entries[int(i)]['block'] for p,i in zip(cells,blocks[occupied])}
    assert np.array_equal(cells.min(axis=0),lo) and np.array_equal(cells.max(axis=0),hi)
    metrics.update(source_bounds=[lower.tolist(),upper.tolist()], uniform_scale=scale,
        axis_mapping='caret left=-model X, up=model Y, forward=-model Z; source +Z front faces player, no mirroring',
        surface_sampling='All triangle faces sampled with barycentric spacing <=1/3 block. Nearest sample to cell center wins; ties use scene/step/triangle/barycentric order.',
        color_sampling='glTF linear vertex colors and factors multiplied by bilinear linearized sRGB textures; converted to sRGB then nearest Euclidean CIELAB official block mean, no dithering',
        sample_count=sample_count, primitive_metrics=primitive_metrics,
        bounds=[lo.tolist(),hi.tolist()],dimensions=dict(width=shape[0].item(),height=shape[1].item(),depth=shape[2].item()),
        non_air_blocks=len(scene),air_cells=0,interior='Unfilled; sparse -1 cells preserve external and internal voids',
        materials=dict(sorted(Counter(scene.values()).items())))
    return scene


def soften(scene, metrics):
    """Reduce the strand crevices, clean the color regions and light the surface.

    The source voxelization stays exact and independently measurable. This
    visual pass adapts fine yarn geometry into fleece at Minecraft block scale.
    """
    low,high = np.array(metrics['bounds'])
    shape = tuple(high-low+1)
    source_blocks = sorted(set(scene.values()))
    source_ids = {block:i for i,block in enumerate(source_blocks)}
    raw = np.full(shape,-1,dtype=np.int16)
    for p,block in scene.items():raw[tuple(np.array(p)-low)] = source_ids[block]
    present = raw >= 0
    # Close only short inter-strand gaps, round their needle-like tips, then
    # retain a two-block skin. Exterior space and the deep interior stay empty.
    padded = np.pad(present,6)
    closed = ndimage.binary_closing(padded,iterations=4)
    volume = ndimage.binary_fill_holes(closed)
    rounded = ndimage.gaussian_filter(volume.astype(np.float32),1.35) >= .5
    volume = rounded[6:-6,6:-6,6:-6]
    shell = volume & ~ndimage.binary_erosion(volume,iterations=2)
    points = np.argwhere(shell)
    # Preserve the closest source surface material on the smoothed skin.
    # Nearest indices are needed only for the newly bridged surface cells.
    nearest = ndimage.distance_transform_edt(~present,return_distances=False,return_indices=True)
    nearest_ids = raw[tuple(nearest[:,points[:,0],points[:,1],points[:,2]])]
    remap = {}
    for block in source_blocks:
        if block == 'minecraft:black_wool':target='minecraft:black_wool'
        elif block in ('minecraft:red_wool','minecraft:red_concrete'):target='minecraft:pink_concrete'
        elif block in ('minecraft:blue_terracotta','minecraft:light_blue_terracotta','minecraft:purple_terracotta'):
            target='minecraft:purple_wool'
        elif block in ('minecraft:pink_wool','minecraft:pink_concrete','minecraft:pink_terracotta','minecraft:magenta_terracotta'):
            target='minecraft:pink_wool'
        else:target='minecraft:white_wool'
        remap[block]=target
    result = {tuple(map(int,p+low)):remap[source_blocks[int(i)]] for p,i in zip(points,nearest_ids)}
    # Purple belongs to the sewn eye surrounds, rather than photographic
    # shadow patches on the cheek, neck or body.
    for (x,y,z),block in result.items():
        if block != 'minecraft:purple_wool':continue
        in_eye = z<65 and any(((x-cx)/24)**2+((y-278)/26)**2<=1.16 for cx in (34,-36))
        if not in_eye:result[x,y,z]='minecraft:pink_wool' if y>215 and z<90 else 'minecraft:white_wool'
    # Large white catchlights on the actual domed lens surfaces, with smaller
    # secondary glints. Both eyes use the same upper-left light direction.
    eye_pixels = {}
    for (x,y,z),block in result.items():
        if block == 'minecraft:black_wool':
            eye_pixels[x,y] = min(z,eye_pixels.get((x,y),1000))
    highlights = []
    for cx in (34,-36):
        for (x,y),z in eye_pixels.items():
            main = ((x-(cx+5))/4.8)**2+((y-286)/5.8)**2 <= 1
            small = ((x-(cx-6))/2.3)**2+((y-270)/2.8)**2 <= 1
            if main or small:
                for depth in (z,z+1):
                    if result.get((x,y,depth)) == 'minecraft:black_wool':
                        result[x,y,depth]='minecraft:white_concrete'
                        highlights.append((x,y,depth))
    assert len(highlights)>200, 'Both eyes must have visible catchlights'
    solid = set(result)
    # Six-sided light placement illuminates the neck, belly, underside, eye
    # domes and rear equally. Invisible lights stay within the source envelope.
    lights = set()
    for p in sorted(solid):
        for axis in range(3):
            other=[i for i in range(3) if i!=axis]
            if any(p[i]%4 for i in other):continue
            for sign in (-1,1):
                q=list(p);q[axis]+=sign;q=tuple(q)
                if not all(a<=v<=b for a,v,b in zip(low,q,high)):continue
                if volume[tuple(np.array(q)-low)]:continue
                lights.add(q)
    result.update({p:LIGHT for p in sorted(lights)})
    visible = {p:b for p,b in result.items() if b!=LIGHT}
    visible_points=np.asarray(list(visible))
    placement_points=np.asarray(list(result))
    placement_low,placement_high=placement_points.min(axis=0),placement_points.max(axis=0)
    placement_size=placement_high-placement_low+1
    # Test probes are air immediately in front of the under-head chest; they
    # let the engine harness measure actual light instead of trusting a render.
    probes=[]
    for x,y in [(0,190),(0,175),(0,150),(0,120),(-40,150),(40,150),(0,75)]:
        z=min(p[2] for p in visible if p[0]==x and p[1]==y)-1
        probes.append([x,y,z])
    metrics.update(sampled_source_surface_blocks=len(scene),non_air_blocks=len(result),
        visible_blocks=len(visible),hidden_light_blocks=len(lights),air_cells=0,
        bounds=[placement_low.tolist(),placement_high.tolist()],
        dimensions=dict(width=int(placement_size[0]),height=int(placement_size[1]),depth=int(placement_size[2])),
        visible_bounds=[visible_points.min(axis=0).tolist(),visible_points.max(axis=0).tolist()],
        materials=dict(sorted(Counter(result.values()).items())),
        interior='Two-block fleece skin; exterior voids and deep interior omitted with -1 indices. No explicit air cells.',
        release=1,
        art_direction=dict(style='Soft pastel plush with rounded fleece and bright eye catchlights',
            geometry='Four iterations of 6-neighbor closing, filled-mask Gaussian sigma 1.35, two-block surface skin; proportions and scene silhouette retained',
            palette=remap,eye_highlight_blocks=len(highlights),light_grid_spacing=4,
            illumination='Vanilla invisible level-15 light blocks immediately outside the plush skin; no global lighting settings changed'),
        lighting_probes=probes)
    assert all(block!='minecraft:air' for block in result.values())
    return result


def structures(scene, metrics, check):
    nbt.BLOCK_VERSION = 17_959_425
    low,high = metrics['bounds']
    palette = sorted(set(scene.values()))
    shape = tuple(b-a+1 for a,b in zip(low,high))
    grid = np.full(shape,-1,dtype='<i4')
    mapping = {block:i for i,block in enumerate(palette)}
    for p,block in scene.items():
        grid[tuple(v-a for v,a in zip(p,low))] = mapping[block]
    restored = np.full_like(grid,-1)
    specs = []
    for xi,x0 in enumerate(range(low[0],high[0]+1,64),1):
        for yi,y0 in enumerate(range(low[1],high[1]+1,257),1):
            for zi,z0 in enumerate(range(low[2],high[2]+1,64),1):
                base = np.array([x0,y0,z0])
                slices = tuple(slice(a-l,min(a-l+n,s)) for a,l,n,s in zip(base,low,(64,257,64),shape))
                layer = grid[slices].copy()
                if np.all(layer == -1):continue
                size = layer.shape
                volume = layer.size
                layers = (nbt.tag_header(9,'block_indices')+bytes([9])+struct.pack('<i',2)
                    +bytes([3])+struct.pack('<i',volume)+layer.tobytes()
                    +bytes([3])+struct.pack('<i',volume)+np.full(volume,-1,dtype='<i4').tobytes())
                payload = layers+nbt.tag_compound_list('entities',[])+nbt.tag_compound('palette',
                    nbt.tag_compound('default',nbt.tag_compound_list('block_palette',[nbt.palette_entry(nbt.Block(b)) for b in palette])
                    +nbt.tag_compound('block_position_data',b'')))
                data = (b'\x0a\x00\x00'+nbt.tag_int('format_version',1)+nbt.tag_int_list('size',list(size))
                    +nbt.tag_compound('structure',payload)+nbt.tag_int_list('structure_world_origin',[0,0,0])+b'\0')
                name = f'{NAME}_x{xi}_y{yi}_z{zi}'
                path = ROOT/'src/structures/ai_minecraft_builds'/f'{name}.mcstructure'
                write(path,data,check)
                assert data[:3] == b'\x0a\0\0'
                root,end = nbt.read_payload(path.read_bytes(),3,10)
                assert end == len(data) and root['format_version'] == 1
                assert root['size'] == list(size) and all(s<=m for s,m in zip(size,(64,257,64)))
                assert root['structure_world_origin'] == [0,0,0]
                structure = root['structure']
                assert structure['entities'] == []
                assert structure['palette']['default']['block_position_data'] == {}
                entries = structure['palette']['default']['block_palette']
                assert [e['name'] for e in entries] == palette
                assert all(e['states'] == {} and e['version'] == nbt.BLOCK_VERSION for e in entries)
                first,second = structure['block_indices']
                decoded = np.asarray(first).reshape(size)
                assert len(first) == len(second) == volume and set(second) == {-1}
                assert np.all((decoded >= -1)&(decoded < len(palette))) and np.array_equal(decoded,layer)
                restored[slices] = decoded
                coords = np.argwhere(decoded >= 0)
                # Simulate the rotated asset box and inverse caret transform for
                # every occupied cell, including material and adjacency.
                for angle in (0,90,180,270):
                    u,y,v = coords.T
                    ax = x0+size[0]-1 if angle in (180,270) else x0
                    az = z0+size[2]-1 if angle in (90,180) else z0
                    wx,wz = {0:(ax+u,az+v),90:(-az+size[2]-1-v,ax+u),
                        180:(-ax+size[0]-1-u,-az+size[2]-1-v),
                        270:(az+v,-ax+size[0]-1-u)}[angle]
                    cx,cz = {0:(wx,wz),90:(wz,-wx),180:(-wx,-wz),270:(-wz,wx)}[angle]
                    assert np.array_equal(cx,u+x0) and np.array_equal(cz,v+z0)
                    assert np.array_equal(grid[cx-low[0],y+y0-low[1],cz-low[2]],decoded[tuple(coords.T)])
                sample_coords = np.argwhere((decoded>=0)&(decoded!=mapping.get(LIGHT,-2)))
                assert len(sample_coords)>=3, name
                chosen = sample_coords[np.linspace(0,len(sample_coords)-1,3,dtype=int)]
                specs.append(dict(name=name,low=base.tolist(),high=(base+size-1).tolist(),size=list(size),
                    blocks=len(coords),bytes=len(data),sha256=hashlib.sha256(data).hexdigest(),
                    samples=[dict(position=(p+base).tolist(),block=palette[int(decoded[tuple(p)])]) for p in chosen]))
    assert np.array_equal(restored,grid)
    assert sum(s['blocks'] for s in specs) == len(scene)
    return specs


def preload_areas(metrics):
    x0,_,z0 = metrics['bounds'][0]
    x1,_,z1 = metrics['bounds'][1]
    # Find the fewest balanced rectangular partitions safe at any chunk offset.
    choices = []
    for nx in range(1,10):
        for nz in range(1,10):
            w,d = math.ceil((x1-x0+1)/nx),math.ceil((z1-z0+1)/nz)
            chunks = math.ceil((w+15)/16)*math.ceil((d+15)/16)
            if chunks <= 100:choices.append((nx*nz,chunks,nx,nz))
    count,maximum,nx,nz = min(choices)
    assert count+1 <= 10
    xs = np.linspace(x0,x1+1,nx+1,dtype=int)
    zs = np.linspace(z0,z1+1,nz+1,dtype=int)
    areas = [(f'ppb_plot_{i*nz+j+1}',int(xs[i]),int(xs[i+1]-1),int(zs[j]),int(zs[j+1]-1))
             for i in range(nx) for j in range(nz)]
    metrics.update(plot_areas=areas,plot_area_maximum_chunks=maximum,free_ticking_area_slots=count+1,
                   origin_area_maximum_chunks=9,expected_ready_areas=count+1)
    return areas


def functions(metrics):
    areas = preload_areas(metrics)
    ready = len(areas)+1
    slots = ready
    def setscore(key,value):return f'scoreboard players set ppb_{key} {OBJECTIVE} {value}'
    def cond(key,value,command):return f'execute if score ppb_{key} {OBJECTIVE} matches {value} run {command}'
    def tell(message,target=OWNER):return f'tellraw {target} '+json.dumps({'rawtext':[{'text':message}]},separators=(',',':'))
    def saved(command):return f'execute in overworld as {ANCHOR} if score @s {OBJECTIVE} = ppb_generation {OBJECTIVE} at @s rotated as @s run {command}'
    area_names = ['ppb_origin']+[a[0] for a in areas]
    low,high = metrics['bounds']
    legal = [-64-min(a['low'][1] for a in metrics['assets']),319-max(a['high'][1] for a in metrics['assets'])]
    feet = [max(-63,legal[0]),min(legal[1]-1,-42)]
    assert feet[0] <= -60 <= feet[1]
    dims = metrics['dimensions']
    manifest = json.loads((ROOT/'src/manifest.json').read_bytes())
    version = '.'.join(map(str,manifest['header']['version']))
    public = [
        '# PINK PLUSH BIRD - Minecraft Bedrock Edition 1.21.50+ / static imported sculpture',
        f'# Run /function {PUBLIC} ONCE as a player in the Overworld.',
        '# Stand at ground level, face a cardinal direction and look horizontally; facing snaps automatically.',
        '# Front-center observation origin; source +Z face points toward player without mirroring. Nearest blocks 32 ahead.',
        f"# Width {dims['width']}, depth {dims['depth']}, height {dims['height']}. Bounds ^{low[0]} ^{low[1]} ^{low[2]} through ^{high[0]} ^{high[1]} ^{high[2]}.",
        f'# Supported ground-level feet Y {feet[0]} through {feet[1]}, including Classic Flat Y -60 (build Y {-60+low[1]} through {-60+high[1]}).',
        '# Soft fleece surface, clean pastel wool, bright eye catchlights and hidden fill lighting; interior unfilled.',
        f"# Source glb/{metrics['source']}: GLB 2 little-endian, {metrics['vertices']:,} vertices, {metrics['triangles']:,} TRIANGLES, 68 meshes, 10 materials.",
        f"# Source SHA256 {metrics['sha256']}; all node transforms applied; no geometry excluded.",
        f"# Uniform scale {metrics['uniform_scale']:.9f} blocks/source unit; caret X/Z inverted, Y vertical.",
        f"# {metrics['visible_blocks']:,} visible blocks; {metrics['hidden_light_blocks']:,} invisible lights; no explicit air placement.",
        f"# {len(metrics['assets'])} sparse structures. {slots} free ticking-area slots including saved origin; plot areas <= {metrics['plot_area_maximum_chunks']} chunks each.",
        '# Saved marker retains position/facing if you move; keep its ground intact and the world running.',
        '# Startup release 2 ticks; all plot and origin areas must be ready; settle 600 ticks; watchdog 3600 ticks.',
        '# Completion checks three blocks per asset; sample verification, not a full engine voxel comparison.',
        '# WARNING: replaces existing blocks on the sculpture surface. Back up first or use a disposable world.',
        f'# Import and activate pack {version}, close/reopen world. Rebuild/reimport after packaged source changes.',
        '# Generator tools/generate_pink_plush_bird.py. PUBLIC_TOTAL public commands including snaps; CALLBACK_TOTAL callback commands.',
        '', '# === VALIDATE PLACEMENT AND PRESERVE ACTIVE INSTALLATION ===',
        f'scoreboard objectives add {OBJECTIVE} dummy',f'scoreboard players add ppb_active {OBJECTIVE} 0',
        'tag @s remove ppb_allowed','tag @s add ppb_candidate',
        'execute in overworld as @e[type=minecraft:player,tag=ppb_candidate] run tag @s add ppb_allowed',
        'tag @s remove ppb_candidate',
        f'execute unless entity @s[y={feet[0]},dy={feet[1]-feet[0]}] run tag @s remove ppb_allowed',
        'execute unless entity @s[type=minecraft:player] run tag @s remove ppb_allowed',
        'execute unless entity @s[tag=ppb_allowed] run '+tell(f'Pink plush bird needs an Overworld player at feet Y {feet[0]} through {feet[1]}. Classic Flat ground works.','@s'),
        cond('active',1,tell('Pink plush bird is already installing. Wait for completion or timeout.','@s')),
        'tag @s remove ppb_start',
        f'execute if entity @s[tag=ppb_allowed] if score ppb_active {OBJECTIVE} matches 0 run tag @s add ppb_start']
    start = [f'schedule on_area_loaded clear function {LOADED}',f'schedule delay clear {CLEANUP}']
    start += [f'execute in overworld run tickingarea remove {name}' for name in area_names]
    start += [f'execute in overworld run kill {ANCHOR}','tag @a[tag=ppb_builder] remove ppb_builder',
        'tag @s add ppb_builder',f'scoreboard players add ppb_generation {OBJECTIVE} 1',
        'summon minecraft:armor_stand "ppb_anchor" ^0 ^0 ^0',
        'tag @e[type=minecraft:armor_stand,name=ppb_anchor,r=2,c=1] add ppb_origin',
        f'scoreboard players operation {ANCHOR} {OBJECTIVE} = ppb_generation {OBJECTIVE}',
        f'tp {ANCHOR} ^0 ^0 ^0 ~ 0',f'effect {ANCHOR} invisibility 1000000 0 true',
        f'effect {ANCHOR} resistance 1000000 255 true',setscore('stage',0),setscore('ready',0),
        setscore('active',1),f'schedule delay add {CLEANUP} 2 replace',
        tell(f'Pink plush bird: preparing sculpture. Keep {slots} ticking-area slots free.','@s')]
    public += [f'execute if entity @s[tag=ppb_start] run {c}' for c in start]
    public += ['tag @s remove ppb_start','tag @s remove ppb_allowed']
    public = snap.transform_public_lines(public)
    loaded = ['# INTERNAL CALLBACK - do not run manually. Count readiness; never place structures.',
        f'execute if score ppb_active {OBJECTIVE} matches 1 if score ppb_stage {OBJECTIVE} matches 1 if score ppb_ready {OBJECTIVE} matches 0..{ready-1} run scoreboard players add ppb_ready {OBJECTIVE} 1',
        f'execute if score ppb_active {OBJECTIVE} matches 1 if score ppb_stage {OBJECTIVE} matches 1 if score ppb_ready {OBJECTIVE} matches {ready} run schedule delay add {CLEANUP} 600 replace']
    cleanup = ['# INTERNAL CALLBACK - do not run manually. Restore saved context, load, audit and clean up.',
        f'schedule on_area_loaded clear function {LOADED}',setscore('next',0),setscore('anchor',0),
        f'execute in overworld as {ANCHOR} if score @s {OBJECTIVE} = ppb_generation {OBJECTIVE} run '+setscore('anchor',1),
        f'execute if score ppb_active {OBJECTIVE} matches 1 if score ppb_stage {OBJECTIVE} matches 0 if score ppb_anchor {OBJECTIVE} matches 1 run '+setscore('next',1),
        f'execute if score ppb_active {OBJECTIVE} matches 1 if score ppb_stage {OBJECTIVE} matches 1 if score ppb_ready {OBJECTIVE} matches {ready} if score ppb_anchor {OBJECTIVE} matches 1 run '+setscore('next',2)]
    begin = [setscore('stage',1),setscore('ready',0),f'schedule delay add {CLEANUP} 3600 replace',
        saved('tickingarea add circle ^0 ^0 ^0 1 ppb_origin true')]
    begin += [saved(f'tickingarea add ^{x0} ^0 ^{z0} ^{x1} ^0 ^{z1} {name} true') for name,x0,x1,z0,z1 in areas]
    begin += [saved(f'schedule on_area_loaded add tickingarea {name} {LOADED}') for name in area_names]
    for angle,selector in FACING:
        for asset in metrics['assets']:
            x0,y0,z0=asset['low'];x1,_,z1=asset['high']
            ax=x1 if angle in (180,270) else x0
            az=z1 if angle in (90,180) else z0
            begin.append(saved(f'execute if entity {selector} run structure load ai_minecraft_builds:{asset["name"]} ^{ax} ^{y0} ^{az} {angle}_degrees none'))
    cleanup += [cond('next',1,c) for c in begin]
    cleanup += [cond('next',2,setscore('verified',0))]
    samples = [sample for asset in metrics['assets'] for sample in asset['samples']]
    for sample in samples:
        x,y,z=sample['position'];block=sample['block']
        cleanup.append(cond('next',2,saved(f'execute if block ^{x} ^{y} ^{z} {block} run scoreboard players add ppb_verified {OBJECTIVE} 1')))
    cleanup += [f'execute if score ppb_next {OBJECTIVE} matches 2 unless score ppb_verified {OBJECTIVE} matches {len(samples)} run '+setscore('next',0),
        cond('next',2,tell(f'Pink plush bird complete: {len(samples)} block samples across {len(metrics["assets"])} structures verified. Temporary areas and anchor removed.')),
        cond('next',0,tell(f'Pink plush bird stopped: missing loading area, anchor or placement samples. Free {slots} ticking-area slots and retry at original origin. Placed blocks remain.'))]
    end = [f'schedule delay clear {CLEANUP}']+[f'execute in overworld run tickingarea remove {name}' for name in area_names]
    end += [f'execute in overworld run kill {ANCHOR}','tag @a[tag=ppb_builder] remove ppb_builder',
        setscore('active',0),setscore('stage',0),setscore('ready',0)]
    for action in (0,2):cleanup += [cond('next',action,c) for c in end]
    counts = [sum(snap.is_command(line) for line in lines) for lines in (public,loaded,cleanup)]
    assert max(counts) <= 10000
    for asset in metrics['assets']:
        assert -60+asset['low'][1] >= -64 and -60+asset['high'][1] <= 319
    metrics.update(public_commands=counts[0],callback_commands=sum(counts[1:]),lifecycle_commands=sum(counts),
        structure_count=len(metrics['assets']),settle_ticks=600,timeout_ticks=3600,release_ticks=2,
        supported_feet_y=feet,asset_legal_feet_y=legal,classic_flat_absolute_bounds_y=[-60+low[1],-60+high[1]],
        placement_audit_samples=len(samples),pack_version=manifest['header']['version'])
    return {PUBLIC:'\n'.join(public).replace('PUBLIC_TOTAL',str(counts[0])).replace('CALLBACK_TOTAL',str(sum(counts[1:]))),
            LOADED:'\n'.join(loaded),CLEANUP:'\n'.join(cleanup)}


def previews(scene, metrics, colors, check):
    scene = {p:b for p,b in scene.items() if b!=LIGHT}
    lookup = {e['block']:np.array(e['rgb']) for e in colors['entries']}
    low,high = metrics['bounds']
    w,h,d = (metrics['dimensions'][k] for k in ('width','height','depth'))
    for name,axis in [('front',2),('back',2),('side',0)]:
        front = name != 'back'
        pixels = np.full((h,w if axis == 2 else d,3),PREVIEW_BACKGROUND,dtype=np.uint8)
        depths = {}
        for (x,y,z),block in scene.items():
            column = high[0]-x if axis == 2 else z-low[2]
            if name == 'back':column=x-low[0]
            depth = (z if front else -z) if axis == 2 else -x
            key = (column,y)
            if depth < depths.get(key,math.inf):
                pixels[high[1]-y,column] = lookup[block]
                depths[key] = depth
        image = Image.fromarray(pixels).resize((pixels.shape[1]*2,h*2),Image.Resampling.NEAREST)
        out=io.BytesIO();image.save(out,format='PNG');write(DOCS/f'{name}.png',out.getvalue(),check)
    image = Image.new('RGB',(1100,1130),PREVIEW_BACKGROUND);draw=ImageDraw.Draw(image)
    middle_z=(low[2]+high[2])/2
    def project(x,y,z):return (550-2.20*x+1.35*(z-middle_z),1000-2.20*y-.48*x-.64*(z-middle_z))
    visible=[]
    for (x,y,z),block in scene.items():
        for direction,vertices,shade in (
            ((0,0,-1),[(x,y,z),(x+1,y,z),(x+1,y+1,z),(x,y+1,z)],1),
            ((-1,0,0),[(x,y,z),(x,y,z+1),(x,y+1,z+1),(x,y+1,z)],.77),
            ((0,1,0),[(x,y+1,z),(x+1,y+1,z),(x+1,y+1,z+1),(x,y+1,z+1)],1.08)):
            if tuple(a+b for a,b in zip((x,y,z),direction)) in scene:continue
            visible.append((x*.63+z-y*.36,vertices,tuple(np.clip(lookup[block]*shade,0,255).astype(int))))
    for _,vertices,color in sorted(visible,key=lambda face:face[0],reverse=True):
        draw.polygon([project(*p) for p in vertices],fill=color)
    font=ImageFont.truetype('C:/Windows/Fonts/arial.ttf',22)
    draw.text((30,22),'Pink plush bird — generated Minecraft block preview',font=font,fill=(30,40,50))
    draw.text((30,1085),f'{w} wide × {d} deep × {h} high | soft fleece, catchlights and hidden lighting',font=font,fill=(30,40,50))
    out=io.BytesIO();image.save(out,format='PNG');write(DOCS/'overview.png',out.getvalue(),check)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check',action='store_true')
    args=parser.parse_args()
    primitives,metrics=read_glb(ROOT/'glb/pink_plush_bird.glb')
    write(DOCS/'source_metadata.json',json.dumps(metrics,indent=2),args.check)
    colors=json.loads((ROOT/'docs/ad2044/palette.json').read_bytes())
    write(DOCS/'palette.json',json.dumps(colors,indent=2),args.check)
    scene=voxelize(primitives,metrics,colors)
    print('Voxelized',len(scene),'surface blocks',flush=True)
    scene=soften(scene,metrics)
    print('Softened plush',metrics['visible_blocks'],'visible blocks,',metrics['hidden_light_blocks'],'lights',flush=True)
    metrics['exact_run_command_counts']=compress_count(scene)
    from generate_themed_haunted_house import compressed_cuboids
    metrics['exact_cuboid_command_counts']=compressed_cuboids(scene)
    assert min(metrics['exact_cuboid_command_counts'].values())+5 > 10000
    metrics['assets']=structures(scene,metrics,args.check)
    texts=functions(metrics)
    for name,text in texts.items():write(ROOT/'src/functions'/f'{name}.mcfunction',text,args.check)
    metrics['function_sha256']={name:hashlib.sha256((ROOT/'src/functions'/f'{name}.mcfunction').read_bytes()).hexdigest() for name in texts}
    metrics['validated']=dict(nbt_roundtrip_every_voxel=True,cardinal_material_maps=[0,90,180,270],
        full_asset_y_bounds=True,surface_only=True,all_source_meshes_sampled=True,
        explicit_soft_plush_art_direction=True,no_explicit_air=True)
    write(DOCS/'metrics.json',json.dumps(metrics,indent=2),args.check)
    previews(scene,metrics,colors,args.check)
    print(json.dumps({k:metrics[k] for k in ['dimensions','non_air_blocks','structure_count','public_commands','callback_commands','free_ticking_area_slots','exact_run_command_counts','exact_cuboid_command_counts']},indent=2))


if __name__ == '__main__':
    main()
