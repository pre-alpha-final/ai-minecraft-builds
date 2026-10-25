#!/usr/bin/env python3
"""Test the sign utility in a NEW disposable copy of a supplied Bedrock flat world.

Requires --server PATH/bedrock_server.exe and --flat-world PATH/TO/WORLD.
Test entry/script player guards and message transport are relaxed for an armor
stand. Fixture code audits before area cleanup and can move the driver after
acceptance. Production startup/poll/release timers are retained.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import threading
import time
import zipfile

ROOT = Path(__file__).resolve().parents[1]
PUBLIC = '0_clear_sides_forward_up'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--server', type=Path, required=True)
    parser.add_argument('--flat-world', type=Path, required=True)
    args = parser.parse_args()
    runtime = Path(tempfile.mkdtemp(prefix='sign-clear-bedrock-'))
    print('Disposable server:', runtime, flush=True)
    source = args.server.resolve().parent
    os.link(args.server.resolve(), runtime/'bedrock_server.exe')
    for name in ('definitions','data','resource_packs','behavior_packs','config'):
        if (source/name).exists(): shutil.copytree(source/name, runtime/name)
    world = runtime/'worlds/clear_validation'
    shutil.copytree(args.flat_world, world, ignore=shutil.ignore_patterns('behavior_packs','resource_packs','world_behavior_packs.json','world_resource_packs.json'))
    pack = world/'behavior_packs/clear_area'
    with zipfile.ZipFile(ROOT/'packs'/f'{PUBLIC}.mcpack') as archive:
        archive.extractall(pack)
        manifest = json.loads(archive.read('manifest.json'))
        hashes = {name: hashlib.sha256(archive.read(name)).hexdigest() for name in archive.namelist() if name != 'manifest.json'}
    (world/'world_behavior_packs.json').write_text(json.dumps([dict(pack_id=manifest['header']['uuid'],version=manifest['header']['version'])]))
    (world/'world_resource_packs.json').write_text('[]')
    public = (pack/'functions'/f'{PUBLIC}.mcfunction').read_bytes()
    (pack/'functions/_clear_area_test.mcfunction').write_bytes(public.replace(b'type=minecraft:player',b'type=minecraft:armor_stand'))
    (pack/'functions/_clear_area_test_double.mcfunction').write_text('function _clear_area_test\nfunction _clear_area_test\n', newline='\n')
    script = pack/'scripts/clear_area.js'
    instrumented = script.read_text().replace('player.typeId !== "minecraft:player"','player.typeId !== "minecraft:armor_stand"').replace('player.sendMessage(', 'console.warn(')
    instrumented = instrumented.replace('controller.start(player);', '''const accepted = controller.start(player);
        if (accepted && moveNext) {
            moveNext = false;
            player.teleport({x:60.3,y:-60,z:-50.8},{rotation:{x:17,y:97}});
            world.getDimension("overworld").getBlock({x:0,y:-60,z:0}).getComponent("minecraft:sign").setText("0 1 1",SignSide.Front);
            console.warn("CLEAR_TEST_MOVED_BEFORE_LOAD");
        }
        console.warn("CLEAR_TEST_STARTED " + JSON.stringify({accepted,phase:controller.phase}));''')
    instrumented += '''
import { BlockPermutation, SignSide } from "@minecraft/server";
let moveNext = false;
let lastAudit;
globalThis.__clearTestAudit = job => {
    const b = job.bounds;
    let cells = 0, tiles = 0;
    for (let x=b.minX;x<=b.maxX;x+=32) for (let y=b.minY;y<=b.maxY;y+=32) for (let z=b.minZ;z<=b.maxZ;z+=32) {
        const end=[Math.min(x+31,b.maxX),Math.min(y+31,b.maxY),Math.min(z+31,b.maxZ)];
        const result=job.dimension.runCommand(`execute if blocks ${x} ${y} ${z} ${end.join(" ")} ${x} ${y+40} ${z} all run scoreboard players add test_air_tiles clear_area 1`);
        if (!result.successCount) throw new Error("Full voxel audit failed before area cleanup");
        cells+=(end[0]-x+1)*(end[1]-y+1)*(end[2]-z+1);tiles++;
    }
    lastAudit={cells,tiles,bounds:b};
    console.warn("CLEAR_TEST_AUDIT " + JSON.stringify(lastAudit));
};
system.afterEvents.scriptEventReceive.subscribe(event => {
    if (event.id === "clear_test:move_next") {moveNext=true;console.warn("CLEAR_TEST_MOVE_READY");}
    if (event.id === "clear_test:state") {
        const o=world.scoreboard.getObjective("clear_area"),player=world.getDimension("overworld").getEntities({name:"clear_test_driver"})[0];
        console.warn("CLEAR_TEST_STATE "+JSON.stringify({phase:controller.phase,location:player?.location,rotation:player?.getRotation(),heightRange:world.getDimension("overworld").heightRange,audit:lastAudit,scores:Object.fromEntries(["sides","forward","up","ca_status","ca_cost","ca_ready","ca_tiles"].map(k=>[k,o?.getScore(k)]))}));
    }
    if (event.id === "clear_test:probe") {
        const r=JSON.parse(event.message),d=world.getDimension("overworld");let loaded=0,total=0;
        for(let x=r.x0;x<=r.x1;x++)for(let z=r.z0;z<=r.z1;z++){
            total++;try{if(d.getBlock({x:x*16,y:-60,z:z*16})?.typeId)loaded++;}catch{}
        }
        console.warn("CLEAR_TEST_PROBE "+JSON.stringify({loaded,total}));
    }
});
system.afterEvents.scriptEventReceive.subscribe(event => {
    if (event.id !== "clear_test:sign") return;
    try {
        const request = JSON.parse(event.message);
        const block = world.getDimension("overworld").getBlock({x:0,y:request.y ?? -60,z:0});
        block.setPermutation(BlockPermutation.resolve(request.remove ? "minecraft:air" : "minecraft:standing_sign"));
        if (!request.remove) {
            const sign = block.getComponent("minecraft:sign");
            sign.setText(request.raw ? {rawtext:[{text:request.text}]} : request.text, SignSide.Front);
            sign.setText(request.back ?? "", SignSide.Back);
        }
        console.warn("CLEAR_TEST_SIGN_READY");
    } catch(error) { console.warn("CLEAR_TEST_SIGN_ERROR " + error); }
});
'''
    script.write_text(instrumented, newline='\n')
    loader = pack/'scripts/clear_area_loader.js'
    test_loader = loader.read_text().replace('player.sendMessage(text);', 'console.warn("CLEAR_TEST_MESSAGE " + text);')
    test_loader = test_loader.replace('const [sides, forward, up] = job.values;', 'globalThis.__clearTestAudit?.(job);\n                const [sides, forward, up] = job.values;')
    loader.write_text(test_loader, newline='\n')
    (runtime/'server.properties').write_text('server-name=Sign clear validation\ngamemode=creative\nallow-cheats=true\nonline-mode=false\ntransport=nethernet\nserver-port=49350\nserver-portv6=49351\nmax-players=1\nview-distance=4\ntick-distance=4\nlevel-name=clear_validation\ncontent-log-file-enabled=true\ncontent-log-console-output-enabled=true\n')
    (runtime/'allowlist.json').write_text('[]'); (runtime/'permissions.json').write_text('[]')
    proc = subprocess.Popen([str(runtime/'bedrock_server.exe')],cwd=runtime,stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,encoding='utf-8',errors='replace',creationflags=subprocess.CREATE_NO_WINDOW)
    lines = []; lock = threading.Condition(); results = []

    def reader():
        for line in proc.stdout:
            with lock: lines.append(line); lock.notify_all()
            if any(part in line for part in ('Version:','Server started.','failed to parse','[Scripting][error]')):
                print(line,end='',flush=True)

    threading.Thread(target=reader,daemon=True).start()

    def wait(pattern,start=0,timeout=30):
        deadline=time.monotonic()+timeout
        with lock:
            while time.monotonic()<deadline:
                output=''.join(lines[start:]); match=re.search(pattern,output,re.I)
                if match:return match,output
                if proc.poll() is not None:raise RuntimeError(output)
                lock.wait(.1)
        raise TimeoutError((pattern,''.join(lines[start:])))

    def command(text,pattern=r'.+'):
        with lock:start=len(lines)
        proc.stdin.write(text+'\n');proc.stdin.flush()
        match,output=wait(pattern,start)
        return match,output,start

    def local(text,yaw=0,y=-60):
        return command(f'execute positioned 0.5 {y} 0.5 rotated {yaw} 0 run {text}',r"blocks filled|block placed|couldn't be placed|Cannot place")

    def audit(point,material,label,yaw=0,y=-60):
        coords=' '.join(f'^{v}' for v in point)
        command(f'execute positioned 0.5 {y} 0.5 rotated {yaw} 0 if block {coords} {material} run scoreboard players set audit_{label} clear_area 1',re.escape(f'for audit_{label} to 1'))

    def sign(text='10 50 30',**extra):
        command('scriptevent clear_test:sign '+json.dumps(dict(text=text,**extra),separators=(',',':')),'CLEAR_TEST_SIGN_READY')

    def snapshot():
        match,_,_=command('scriptevent clear_test:state {}',r'CLEAR_TEST_STATE (\{[^\n]+\})')
        return json.loads(match[1])

    def probe():
        match,_,_=command('scriptevent clear_test:probe {"x0":-8,"x1":8,"z0":0,"z1":32}',r'CLEAR_TEST_PROBE (\{[^\n]+\})')
        return json.loads(match[1])

    def until(predicate,timeout=25):
        deadline=time.monotonic()+timeout
        while time.monotonic()<deadline:
            result=predicate()
            if result:return result
            time.sleep(.1)
        raise TimeoutError('Engine state did not arrive')

    def clean_areas(expected=()):
        with lock:start=len(lines)
        proc.stdin.write('tickingarea list all-dimensions\nscoreboard players set audit_area_barrier clear_area 1\n');proc.stdin.flush()
        _,output=wait('for audit_area_barrier to 1',start)
        assert 'ai_clear_area_' not in output,output
        for name in expected:assert name in output,(name,output)

    def invoke(error=False):
        _,_,start=command('execute as @e[name=clear_test_driver] at @s run function _clear_area_test','Successfully executed')
        _,output=wait(r'Clear aborted: [^\n]+' if error else r'CLEAR_TEST_MESSAGE Clear complete:',start)
        result=snapshot()
        assert result['phase']=='idle',result
        clean_areas(('sign_clear_test',))
        return output if error else result

    def transform(point,yaw):
        x,y,z=point
        return {0:(x,y,z),90:(-z,y,x),180:(-x,y,-z),-90:(z,y,-x)}[yaw]

    try:
        wait('Server started.')
        command('gamerule functioncommandlimit 10000','updated')
        command('tickingarea add -64 -60 -64 64 -60 64 sign_clear_test true','Added ticking area')
        time.sleep(3)
        command('summon minecraft:armor_stand "clear_test_driver" 0.3 -60 0.8','successfully summoned')
        sign()
        for yaw in (0,90,180,-90):
            command(f'tp @e[name=clear_test_driver] 0.3 -60 0.8 {yaw+7} 13','Teleported')
            for start,end in ((1,32),(33,50)):
                local(f'fill ^-10 ^0 ^{start} ^10 ^29 ^{end} minecraft:stone',yaw)
                local(f'fill ^-10 ^40 ^{start} ^10 ^69 ^{end} minecraft:air',yaw)
            sentinels=[((-11,0,1),'minecraft:gold_block'),((11,0,50),'minecraft:diamond_block'),((0,0,51),'minecraft:emerald_block'),((0,30,1),'minecraft:glass'),((0,-1,1),'minecraft:stone')]
            for point,material in sentinels: local('setblock '+' '.join(f'^{v}' for v in point)+' '+material,yaw)
            state=invoke()
            assert state['location']['x']==.5 and state['location']['z']==.5 and state['rotation']['x']==0,state
            assert round(state['rotation']['y'])%360==yaw%360,state
            assert [state['scores'][key] for key in ('sides','forward','up')]==[10,50,30],state
            assert state['scores']['ca_ready']==state['scores']['ca_tiles']==36,state
            assert state['audit']['cells']==31500,state
            for start,end in ((1,32),(33,50)):
                a,b=transform((-10,0,start),yaw),transform((10,29,end),yaw)
                low=tuple(min(x,y) for x,y in zip(a,b));high=tuple(max(x,y) for x,y in zip(a,b))
                command(f'execute if blocks {low[0]} {low[1]-60} {low[2]} {high[0]} {high[1]-60} {high[2]} {low[0]} {low[1]-20} {low[2]} all run scoreboard players set audit_clear_{yaw}_{start} clear_area 1',re.escape(f'for audit_clear_{yaw}_{start} to 1'))
            for index,(point,material) in enumerate(sentinels):audit(point,material,f'boundary_{yaw}_{index}',yaw)
            audit((0,0,0),'minecraft:standing_sign',f'sign_{yaw}')
            results.append(dict(case='sign_input_all_cells_air_reset_and_boundaries',yaw=yaw,cells=31500,feet_y=-60,state=state))
            print(f'PASS: yaw {yaw}, all cells air, sign/ground intact, position/view reset',flush=True)
        command('tp @e[name=clear_test_driver] 0.3 -60 0.8 0 0','Teleported')
        local('setblock ^0 ^0 ^1 minecraft:gold_block')
        for label,request in [('missing',dict(remove=True)),('malformed',dict(text='10 50')),('range',dict(text='129 50 30')),('conflict',dict(back='20 50 30'))]:
            sign(**request);invoke(error=True)
            audit((0,0,1),'minecraft:gold_block',label)
            results.append(dict(case=label+'_sign_rejected_without_clearing',passed=True))
        for label,request in [('back',dict(text='',back='0 1 1')),('raw',dict(text='0 1 1',raw=True))]:
            local('setblock ^0 ^0 ^1 minecraft:gold_block');sign(**request)
            state=invoke();audit((0,0,1),'minecraft:air',label)
            assert state['scores']['sides']==0 and state['scores']['forward']==state['scores']['up']==1
            results.append(dict(case=label+'_sign_text_zero_sides',passed=True))
        local('setblock ^0 ^0 ^1 minecraft:gold_block');sign('128 511 383')
        invoke(error=True)
        audit((0,0,1),'minecraft:gold_block','budget')
        results.append(dict(case='command_budget_guard',passed=True))
        # Prepare 131,584 known solids plus an air reference, then unload the
        # far chunks. The production clear must itself preload six rectangles.
        baselines=[]
        for x0,x1 in ((-8,0),(1,8)):
            for z0,z1 in ((0,10),(11,21),(22,32)):
                name=f'clear_test_baseline_{len(baselines)}';baselines.append(name)
                command(f'tickingarea add {x0*16} -60 {z0*16} {x1*16+15} -60 {z1*16+15} {name} true','Added ticking area')
        until(lambda: probe()['loaded']==561)
        for start in range(1,513,64):
            end=min(start+63,512)
            local(f'fill ^-128 ^0 ^{start} ^128 ^0 ^{end} minecraft:stone')
            local(f'fill ^-128 ^40 ^{start} ^128 ^40 ^{end} minecraft:air')
        for name in baselines:command(f'tickingarea remove {name}','Removed')
        before=until(lambda: (p if (p:=probe())['loaded']<p['total'] else None))
        # Recreate two owned stale names; the real engine must release them
        # before the new request creates the same names two ticks later.
        for index in range(2):command(f'tickingarea add 0 -60 0 0 -60 0 ai_clear_area_{index} true','Added ticking area')
        sign('128 512 1');command('scriptevent clear_test:move_next {}','CLEAR_TEST_MOVE_READY')
        _,_,start=command('execute as @e[name=clear_test_driver] at @s run function _clear_area_test_double','Successfully executed')
        wait(r'CLEAR_TEST_STARTED \{"accepted":false',start)
        wait(r'CLEAR_TEST_MESSAGE Clear complete:',start,timeout=65)
        state_after=snapshot();clean_areas(('sign_clear_test',))
        assert state_after['phase']=='idle' and state_after['audit']['cells']==131584,state_after
        assert [state_after['scores'][key] for key in ('sides','forward','up')]==[128,512,1],state_after
        assert abs(state_after['location']['x']-60.3)<.01 and abs(state_after['location']['z']+50.8)<.01,state_after
        # Armor stands retain yaw but the engine normalizes their pitch to zero.
        # Player pitch reset is checked at startup; do not infer player flight/
        # look behavior from an armor-stand driver's post-movement pitch.
        assert round(state_after['rotation']['y'])==97,state_after
        results.append(dict(case='automatic_six_area_preload_of_unloaded_chunks',before=before,cells=131584,state=state_after,stale_name_recovery=True,busy_reentry=True,movement_and_sign_edit_after_capture=True))
        command('tp @e[name=clear_test_driver] 0.3 -60 0.8 0 0','Teleported')
        # Force partial startup failure with only two free slots. All unrelated
        # areas must survive and the first two owned areas must be removed.
        others=[]
        for index in range(7):
            name=f'clear_test_other_{index}';others.append(name)
            command(f'tickingarea add {1000+16*index} -60 1000 {1000+16*index} -60 1000 {name} true','Added ticking area')
        local('setblock ^0 ^0 ^1 minecraft:gold_block');sign('128 512 1');invoke(error=True)
        audit((0,0,1),'minecraft:gold_block','capacity');clean_areas(('sign_clear_test',*others))
        for name in others:command(f'tickingarea remove {name}','Removed')
        results.append(dict(case='partial_ticking_area_capacity_failure_cleanup',passed=True,unrelated_areas_preserved=8))
        local('fill ^-1 ^-1 ^-1 ^1 ^-1 ^1 minecraft:stone',y=300)
        sign(y=300);command('tp @e[name=clear_test_driver] 0.3 300 0.8 0 0','Teleported')
        local('setblock ^0 ^0 ^1 minecraft:gold_block',y=300)
        invoke(error=True);audit((0,0,1),'minecraft:gold_block','height',y=300)
        results.append(dict(case='out_of_world_height_aborts_entire_clear',passed=True))
        command(f'execute as @e[name=clear_test_driver] at @s run function {PUBLIC}','Successfully executed')
        audit((0,0,1),'minecraft:gold_block','nonplayer',y=300)
        results.append(dict(case='production_nonplayer_guard',passed=True))
        assert not any('failed to parse' in line.lower() or '[scripting][error]' in line.lower() for line in lines),''.join(lines)
    finally:
        if proc.poll() is None:
            proc.stdin.write('stop\n');proc.stdin.flush();proc.wait(timeout=30)
        (runtime/'validation.log').write_text(''.join(lines),encoding='utf-8')
        report=dict(engine='Bedrock Dedicated Server 1.26.52.3',pack_version=manifest['header']['version'],source_sha256=hashes,
                    harness='Disposable Classic Flat copy. Entry/script accept armor_stand instead of player; messages use console output. Fixture creates signs, probes chunks, audits all cells against air before area release, and moves/turns the driver plus edits the sign immediately after acceptance. A test-only double-call function exercises busy reentry. Production startup/poll/release timers, preload plan, sign parser, saved context, helper arithmetic and fills retained. No interactive player test.',results=results)
        (runtime/'report.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
        print(json.dumps({'report':str(runtime/'report.json'),'cases':len(results)},indent=2),flush=True)


if __name__=='__main__':main()
