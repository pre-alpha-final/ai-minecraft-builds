"""Generate the single-stage native installer for Glacier Run."""

import json
from math import ceil

import cardinal_snap as snap
from glacier_run_geometry import X0, X1, Y0, Z0, Z1

NAME = 'theme_park_glacier_run_alpine_park'
PUBLIC = f'22_{NAME}'
LOADED = f'_{NAME}_tickingarea_loaded'
CLEANUP = f'_{NAME}_remove_tickingarea'
OBJECTIVE = 'gr_install'
ORIGIN = 'glacier_run_origin'
OWNER = '@a[tag=gr_builder]'
ANCHOR = '@e[type=minecraft:armor_stand,tag=gr_origin]'
AREAS = [(f'glacier_run_plot_{i}', z, min(z+63, Z1)) for i, z in enumerate(range(Z0, Z1+1, 64), 1)]
FACING = [(0, 0, 0), (90, 90, 90), (180, 135, 180), (180, -180, -135), (270, -90, -90)]
SETTLE_TICKS = 120
WATCHDOG_TICKS = 1800


def setscore(key, value):
    return f'scoreboard players set gr_{key} {OBJECTIVE} {value}'


def match(key, value):
    return f'if score gr_{key} {OBJECTIVE} matches {value}'


def branch(action, command):
    return f'execute {match("action", action)} run {command}'


def tell(target, message):
    return f'tellraw {target} '+json.dumps({'rawtext': [{'text': message}]}, separators=(',', ':'))


def saved(command):
    return (f'execute in overworld as {ANCHOR} if score @s {OBJECTIVE} = gr_generation {OBJECTIVE}'
            f' at @s rotated as @s run {command}')


def anchor(asset, angle):
    x0,y0,z0 = asset['low']
    x1,_,z1 = asset['high']
    return x1 if angle in (180,270) else x0, y0, z1 if angle in (90,180) else z0


def load_commands(assets):
    for angle, low, high in FACING:
        yaw = f'if entity @s[rym={low},ry={high}]'
        for asset in assets:
            x, y, z = anchor(asset, angle)
            yield saved(f'execute {yaw} run structure load ai_minecraft_builds:{asset["name"]}'
                        f' ^{x} ^{y} ^{z} {angle}_degrees none')


def functions(metrics):
    assets = metrics['structures']
    min_y, max_y = metrics['relative_y']
    min_feet, max_feet = metrics['feet_y']
    ceiling = max_feet+1
    height_range = ceiling-min_feet
    area_names = [ORIGIN] + [name for name, *_ in AREAS]
    slots = len(area_names)
    sample_count = sum(len(asset['samples']) for asset in assets)
    max_chunks = max(ceil((X1-X0+16)/16)*ceil((z1-z0+16)/16) for _,z0,z1 in AREAS)
    assert max_chunks <= 100 and slots <= 10

    public = [
        '# GLACIER RUN ALPINE PARK - Minecraft Bedrock Edition 1.21.50+',
        f'# Run /function {PUBLIC} once as a player in the Overworld.',
        '# Stand at ground level at the front-center approach, face a cardinal direction and look horizontally.',
        f'# Bounds ^{X0} ^{min_y} ^{Z0} through ^{X1} ^{max_y} ^{Z1}. Nearest blocks start {Z0} ahead.',
        f'# Supported feet Y {min_feet} through {max_feet}, including Classic Flat Y -60.',
        '# Rideable powered minecart circuit and blue-ice boat loop. Supply your own plain minecart and boat.',
        '# Static alpine village, glacier and summit observatory. The low glacier cave is a walk-through.',
        f'# {metrics["non_air_blocks"]:,} non-air blocks, {len(assets)} structures. PUBLIC_COUNT public commands, CALLBACK_COUNT callback commands.',
        f'# Keep {slots} ticking-area slots free. Keep the world running and leave the starting ground intact until completion.',
        '# Use a disposable world or back up first. The park replaces surface blocks and clears ride and guest corridors.',
        '# Import and activate pack 1.0.42, then close/reopen the world. Generator tools/generate_glacier_run.py.',
        '',
        '# Validate world and height, then save the snapped context.',
        f'scoreboard objectives add {OBJECTIVE} dummy',
        f'scoreboard players add gr_phase {OBJECTIVE} 0',
        'tag @s remove gr_allowed',
        'tag @s add gr_candidate',
        'execute in overworld as @e[type=minecraft:player,tag=gr_candidate] run tag @s add gr_allowed',
        'tag @s remove gr_candidate',
        '# Intersect vertical distances at the same X/Z to check feet, including the lower bound.',
        f'execute positioned ~ {min_feet} ~ if entity @s[rm={height_range}] run tag @s remove gr_allowed',
        f'execute positioned ~ {ceiling} ~ unless entity @s[r={height_range}] run tag @s remove gr_allowed',
        'execute unless entity @s[type=minecraft:player] run tag @s remove gr_allowed',
        'execute unless entity @s[tag=gr_allowed] run '+tell('@s', f'Glacier Run needs an Overworld player at feet Y {min_feet} through {max_feet}.'),
        f'execute if entity @s[tag=gr_allowed] {match("phase","1..3")} run '+tell('@s', 'Glacier Run is already installing.'),
        'tag @s remove gr_start',
        f'execute if entity @s[tag=gr_allowed] {match("phase",0)} run tag @s add gr_start',
    ]
    clear_callbacks = [f'schedule on_area_loaded clear function {LOADED}', f'schedule delay clear {CLEANUP}']
    remove_areas = [f'execute in overworld run tickingarea remove {area}' for area in area_names]
    clear_anchor = f'execute in overworld run kill {ANCHOR}'
    clear_owner = f'tag {OWNER} remove gr_builder'
    startup = clear_callbacks + remove_areas + [
        clear_anchor, clear_owner, 'tag @s add gr_builder',
        f'scoreboard players add gr_generation {OBJECTIVE} 1',
        'summon minecraft:armor_stand "gr_saved_origin" ^0 ^0 ^0',
        'tag @e[type=minecraft:armor_stand,name=gr_saved_origin,r=2,c=1] add gr_origin',
        f'scoreboard players operation {ANCHOR} {OBJECTIVE} = gr_generation {OBJECTIVE}',
        f'tp {ANCHOR} ^0 ^0 ^0 ~ 0',
        f'effect {ANCHOR} invisibility 1000000 0 true',
        f'effect {ANCHOR} resistance 1000000 255 true',
        setscore('phase', 1), setscore('ready', 0),
        f'schedule delay add {CLEANUP} 2 replace',
        tell('@s', f'Glacier Run is preparing its plot. Keep {slots} ticking-area slots free.'),
    ]
    public.extend(f'execute if entity @s[tag=gr_start] run {line}' for line in startup)
    public.extend(['tag @s remove gr_start', 'tag @s remove gr_allowed'])
    public = snap.transform_public_lines(public)
    snap.validate_public_lines(public)

    loaded = [
        '# INTERNAL CALLBACK - do not run manually. Count plot readiness.',
        f'execute {match("phase",2)} {match("ready",f"0..{len(AREAS)-1}")} run scoreboard players add gr_ready {OBJECTIVE} 1',
        f'execute {match("phase",2)} {match("ready",len(AREAS))} run schedule delay add {CLEANUP} 2 replace',
    ]
    cleanup = [
        '# INTERNAL CALLBACK - do not run manually. Preload, place, audit and release.',
        setscore('action', 0), setscore('anchor', 0),
        saved(setscore('anchor', 1)),
        f'execute {match("anchor",1)} {match("phase",1)} run {setscore("action",1)}',
        f'execute {match("anchor",1)} {match("phase",2)} {match("ready",len(AREAS))} run {setscore("action",2)}',
        f'execute {match("anchor",1)} {match("phase",3)} run {setscore("action",3)}',
        '',
        '# Phase 1: creation occurs in a new tick after stale area removal.',
    ]
    prepare = [
        setscore('phase', 2),
        f'schedule delay add {CLEANUP} {WATCHDOG_TICKS} replace',
        saved(f'tickingarea add circle ^0 ^0 ^0 1 {ORIGIN} true'),
    ]
    prepare.extend(saved(f'tickingarea add ^{X0} ^0 ^{z0} ^{X1} ^0 ^{z1} {area} true') for area,z0,z1 in AREAS)
    prepare.extend(saved(f'schedule on_area_loaded add tickingarea {area} {LOADED}') for area,*_ in AREAS)
    cleanup.extend(branch(1, line) for line in prepare)
    cleanup.extend(['', '# Phase 2: issue placement only after all plot areas report ready.'])
    cleanup.extend(branch(2, line) for line in [
        clear_callbacks[0], setscore('phase', 3), *load_commands(assets),
        f'schedule delay add {CLEANUP} {SETTLE_TICKS} replace',
    ])
    cleanup.extend(['', '# Phase 3: confirm samples before releasing the plot.', branch(3, setscore('verified', 0))])
    for asset in assets:
        for sample in asset['samples']:
            x,y,z = sample['position']
            cleanup.append(branch(3, saved(f'execute if block ^{x} ^{y} ^{z} {sample["block"]}'
                                           f' run scoreboard players add gr_verified {OBJECTIVE} 1')))
    cleanup.extend([
        f'execute {match("action",3)} unless score gr_verified {OBJECTIVE} matches {sample_count} run {setscore("action",0)}',
        branch(3, tell(OWNER, f'Glacier Run is ready. Verified {sample_count} samples across {len(assets)} structures.')),
        f'execute {match("action",0)} {match("phase","1..3")} run '+tell(
            OWNER, 'Glacier Run stopped because a preload, saved origin, or placement check failed. Placed blocks remain.'),
        f'execute {match("action",3)} run {setscore("action",0)}',
    ])
    # Require active phase even on failure so stray callback calls do nothing.
    for line in clear_callbacks + remove_areas + [clear_anchor, clear_owner, setscore('ready', 0), setscore('phase', 0)]:
        cleanup.append(f'execute {match("action",0)} {match("phase","1..3")} run {line}')

    files = dict(zip((PUBLIC, LOADED, CLEANUP), (public, loaded, cleanup), strict=True))
    counts = [sum(snap.is_command(line) for line in lines) for lines in files.values()]
    assert max(counts) < 10000
    metrics.update(public_commands=counts[0], callback_commands=sum(counts[1:]),
                   placement_samples=sample_count, ticking_area_slots=slots, plot_area_max_chunks=max_chunks,
                   settle_ticks=SETTLE_TICKS, preload_timeout_ticks=WATCHDOG_TICKS)
    return {path: ('\n'.join(lines)+'\n').replace('PUBLIC_COUNT', str(counts[0]))
            .replace('CALLBACK_COUNT', str(sum(counts[1:]))) for path, lines in files.items()}
