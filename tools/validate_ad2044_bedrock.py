#!/usr/bin/env python3
"""Headless checks in a NEW disposable copy of a supplied Classic Flat world.

Usage: python tools/validate_ad2044_bedrock.py --server PATH/bedrock_server.exe
       --flat-world PATH/TO/CLASSIC_FLAT_WORLD

The source server and world are read only. An isolated server copy, copied world,
and test-only entity entry point are kept under the system temporary directory.
The production loader, timers, callbacks and structures are otherwise retained.
No interactive client or real-player behavior is established by this test.
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
OBJECTIVE = 'ad2044_install'
ENTRY = '_ad2044_test_entity'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--server',type=Path,required=True)
    parser.add_argument('--flat-world',type=Path,required=True)
    args = parser.parse_args()
    source = args.server.resolve().parent
    runtime = Path(tempfile.mkdtemp(prefix='ad2044-bedrock-'))
    print('Disposable server:',runtime,flush=True)
    os.link(args.server.resolve(),runtime/'bedrock_server.exe')
    for name in ('definitions','data','resource_packs','behavior_packs','config'):
        if (source/name).exists():shutil.copytree(source/name,runtime/name)
    world = runtime/'worlds/ad2044_validation'
    shutil.copytree(args.flat_world,world,ignore=shutil.ignore_patterns('behavior_packs','resource_packs','world_behavior_packs.json','world_resource_packs.json'))
    pack = world/'behavior_packs/ad2044'
    with zipfile.ZipFile(ROOT/'packs/19_ad2044.mcpack') as archive:
        archive.extractall(pack)
        manifest = json.loads(archive.read('manifest.json'))
    (world/'world_behavior_packs.json').write_text(json.dumps([dict(pack_id=manifest['header']['uuid'],version=manifest['header']['version'])]))
    (world/'world_resource_packs.json').write_text('[]')
    properties = ('server-name=AD2044 validation\ngamemode=creative\nallow-cheats=true\nonline-mode=false\n'
                  'transport=nethernet\nserver-port=49220\nserver-portv6=49221\nmax-players=1\nview-distance=8\ntick-distance=4\n'
                  'level-name=ad2044_validation\ncontent-log-file-enabled=true\ncontent-log-console-output-enabled=true\n')
    (runtime/'server.properties').write_text(properties)
    (runtime/'allowlist.json').write_text('[]')
    (runtime/'permissions.json').write_text('[]')
    functions = pack/'functions'
    public = (functions/'19_ad2044.mcfunction').read_text()
    # The only harness change to the entry point is replacing the player type
    # by armor_stand in both its dimension query and executor guard.
    (functions/f'{ENTRY}.mcfunction').write_text(public.replace('type=minecraft:player','type=minecraft:armor_stand'),newline='\n')
    metrics = json.loads((ROOT/'docs/ad2044/metrics.json').read_bytes())
    baseline = [f'scoreboard players set ad_test_empty {OBJECTIVE} 0']
    for asset in metrics['assets']:
        for sample in asset['samples']:
            x,y,z=sample['position']
            baseline.append(f'execute if block ^{x} ^{y} ^{z} minecraft:air run scoreboard players add ad_test_empty {OBJECTIVE} 1')
    (functions/'_ad2044_test_baseline.mcfunction').write_text('\n'.join(baseline)+'\n',newline='\n')
    proc = subprocess.Popen([str(runtime/'bedrock_server.exe')],cwd=runtime,stdin=subprocess.PIPE,
                            stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,encoding='utf-8',
                            errors='replace',creationflags=subprocess.CREATE_NO_WINDOW)
    lines = []
    lock = threading.Condition()

    def reader():
        for line in proc.stdout:
            with lock:lines.append(line);lock.notify_all()
            if any(x in line for x in ('Version:','Server started.','ERROR','failed to parse')):print(line,end='',flush=True)

    thread = threading.Thread(target=reader,daemon=True)
    thread.start()

    def wait(pattern,start=0,timeout=30):
        deadline=time.monotonic()+timeout
        with lock:
            while time.monotonic()<deadline:
                output=''.join(lines[start:]);match=re.search(pattern,output)
                if match:return match,output
                if proc.poll() is not None:raise RuntimeError('Server exited: '+output)
                lock.wait(min(.2,max(0,deadline-time.monotonic())))
        raise TimeoutError((pattern,''.join(lines[start:])))

    def command(text,pattern=r'.+',timeout=30):
        with lock:start=len(lines)
        proc.stdin.write(text+'\n');proc.stdin.flush()
        return wait(pattern,start,timeout)

    def score(key):
        match,_=command('scoreboard players list '+key,rf'(?:{OBJECTIVE}: (-?\d+)|has no scores recorded)')
        return int(match.group(1)) if match.group(1) is not None else None

    def call(name,entity=False):
        prefix='execute as @e[name=ad_test_driver] at @s run ' if entity else ''
        command(prefix+'function '+name,'Successfully executed')

    def until(predicate,timeout=50):
        deadline=time.monotonic()+timeout
        while time.monotonic()<deadline:
            if predicate():return
            time.sleep(.2)
        raise TimeoutError('Installer state did not arrive')

    def clear_evidence():
        _,areas=command('tickingarea list all-dimensions',r'(?:ticking areas in use|No ticking areas exist|No ticking areas have been added)')
        assert 'ad2044_' not in areas,areas
        _,marker=command('testfor @e[tag=ad2044_origin]',r'(?:No targets matched selector|Found .+)')
        assert 'No targets matched selector' in marker,marker
        assert score('ad_active')==0
        return dict(areas_removed=True,marker_removed_with_origin_loaded=True,inactive=True)

    results=[]
    try:
        wait('Server started.',timeout=60)
        assert not any('failed to parse' in line for line in lines)
        command(f'scoreboard objectives add {OBJECTIVE} dummy')
        for index,yaw in enumerate((0,90,180,-90)):
            x,z=4096+1024*index,4096
            command(f'tickingarea add circle {x} -60 {z} 1 ad_test_origin true','Added ticking area')
            time.sleep(1)
            command('kill @e[name=ad_test_driver]')
            command(f'summon minecraft:armor_stand "ad_test_driver" {x+.5} -60 {z+.5}','successfully summoned')
            command(f'execute as @e[name=ad_test_driver] at @s run tp @s ~ ~ ~ {yaw} 0','Teleported')
            for i,(a,c) in enumerate(((-147,0),(1,147))):
                command(f'execute as @e[name=ad_test_driver] at @s run tickingarea add ^{a} ^0 ^32 ^{c} ^0 ^118 ad_test_baseline_{i} true','Added ticking area')
            def baseline_ready():
                call('_ad2044_test_baseline',True)
                return score('ad_test_empty')==60
            until(baseline_ready,timeout=20)
            for i in range(2):command(f'tickingarea remove ad_test_baseline_{i}','Removed ticking area')
            time.sleep(.2)
            # Seed the three owned names before the first start to exercise
            # actual pending engine removal and the two-tick startup barrier.
            if index==0:
                for name in ('ad2044_origin','ad2044_plot_1','ad2044_plot_2'):
                    command(f'tickingarea add circle {x} -60 {z} 1 {name} true','Added ticking area')
            started=time.monotonic()
            call(ENTRY,True)
            until(lambda:score('ad_ready')==2)
            assert score('ad_stage')==1
            generation=score('ad_generation')
            call(ENTRY,True)
            assert score('ad_generation')==generation and score('ad_ready')==2
            command('execute as @e[name=ad_test_driver] at @s run tp @s ~12 ~ ~12 -45 0','Teleported')
            # Remove the independent test preload so production has to retain
            # its own saved origin while loading the complete plot.
            command('tickingarea remove ad_test_origin','Removed ticking area')
            until(lambda:score('ad_active')==0,timeout=65)
            assert score('ad_next')==2 and score('ad_verified')==60
            # Reload the origin before testing marker deletion.
            command(f'tickingarea add circle {x} -60 {z} 1 ad_test_origin true','Added ticking area')
            time.sleep(.5)
            cleanup=clear_evidence()
            command('tickingarea remove ad_test_origin','Removed ticking area')
            results.append(dict(yaw=yaw,origin=[x+.5,-60,z+.5],absolute_bounds_y=[-59,300],
                                baseline_air_samples=60,verified_samples=60,asset_regions=20,
                                stale_owned_areas_recovered=index==0,busy_reentry_preserved_generation=True,
                                driver_moved_and_turned=True,elapsed_seconds=round(time.monotonic()-started,2),**cleanup))
            print('Cardinal installation passed:',results[-1],flush=True)

        # Test failures through the production delayed dispatcher; invoking it
        # explicitly emulates its watchdog firing without waiting 180 seconds.
        x,z=8192,4096
        command(f'tickingarea add circle {x} -60 {z} 1 ad_test_origin true','Added ticking area')
        time.sleep(.5)
        command('kill @e[name=ad_test_driver]')
        command(f'summon minecraft:armor_stand "ad_test_driver" {x+.5} -60 {z+.5}','successfully summoned')
        command('execute as @e[name=ad_test_driver] at @s run tp @s ~ ~ ~ 0 0','Teleported')
        call(ENTRY,True)
        until(lambda:score('ad_ready')==2)
        command(f'scoreboard players add @e[tag=ad2044_origin] {OBJECTIVE} 1')
        call('_ad2044_remove_tickingarea')
        assert score('ad_next')==0
        generation_failure=clear_evidence()
        print('Old marker generation abort passed',flush=True)
        # Height guard: a supported block holds the test entity at Y 64.
        command(f'setblock {x} 63 {z} minecraft:stone')
        command(f'tp @e[name=ad_test_driver] {x+.5} 64 {z+.5} 0 0','Teleported')
        generation=score('ad_generation')
        call(ENTRY,True)
        assert score('ad_active')==0 and score('ad_generation')==generation
        height_guard=True
        command(f'tp @e[name=ad_test_driver] {x+.5} -60 {z+.5} 0 0','Teleported')
        # Ten total area slots: one fixture slot plus eight unrelated areas
        # leaves only one of the three slots needed by the installer.
        for i in range(8):command(f'tickingarea add circle {x} -60 {z} 1 ad_test_other_{i} true','Added ticking area')
        call(ENTRY,True)
        time.sleep(2)
        assert score('ad_stage')==1 and score('ad_ready')<2
        call('_ad2044_remove_tickingarea')
        assert score('ad_next')==0
        capacity_failure=clear_evidence()
        _,areas=command('tickingarea list all-dimensions','ticking areas in use')
        assert all(f'ad_test_other_{i}' in areas for i in range(8))
        for i in range(8):command(f'tickingarea remove ad_test_other_{i}')
        command('tickingarea remove ad_test_origin')
        report=dict(engine='Bedrock Dedicated Server '+next(line.split('Version: ',1)[1].strip() for line in lines if 'Version:' in line),pack_version=manifest['header']['version'],
                    tested_pack_sha256=hashlib.sha256((ROOT/'packs/19_ad2044.mcpack').read_bytes()).hexdigest(),
                    production_function_sha256={name:hashlib.sha256((functions/f'{name}.mcfunction').read_bytes()).hexdigest() for name in metrics['function_sha256']},
                    structure_sha256={asset['name']:hashlib.sha256((pack/'structures/ai_minecraft_builds'/f"{asset['name']}.mcstructure").read_bytes()).hexdigest() for asset in metrics['assets']},
                    harness='Only player type checks replaced by armor_stand in a separate test entry point; production callbacks, assets, timers and placement samples retained. Separate baseline fixture verifies samples were originally air.',
                    interactive_player_tested=False,comparison='60 samples, three in each of 20 assets; not every engine voxel',
                    cardinal_installations=results,generation_mismatch_abort=generation_failure,
                    insufficient_area_abort=capacity_failure,unrelated_areas_preserved=True,unsupported_height_rejected=height_guard,
                    failure_watchdog='Production dispatcher invoked explicitly after partial readiness or marker-generation mismatch; full 3600-tick timeout not elapsed.',
                    disposable_runtime=str(runtime))
        (ROOT/'docs/ad2044/bedrock_runtime_check.json').write_text(json.dumps(report,indent=2)+'\n',newline='\n')
        print('ALL BEDROCK CHECKS PASSED',flush=True)
    finally:
        if proc.poll() is None:
            proc.stdin.write('stop\n');proc.stdin.flush()
            try:proc.wait(timeout=20)
            except subprocess.TimeoutExpired:proc.kill()
        thread.join(timeout=2)
        (runtime/'validation.log').write_text(''.join(lines),encoding='utf-8')


if __name__=='__main__':main()
