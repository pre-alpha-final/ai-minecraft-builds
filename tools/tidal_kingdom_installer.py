"""One-call installer with a saved anchor, readiness barriers and a watchdog.

The user's automatic-staging request extends the normal cleanup callback: it
releases stage one, restores the saved origin/rotation and places stage two.
There are still exactly three lifecycle functions and one public entry point.
"""

import json
import re
import shlex
import cardinal_snap as snap

NAME='theme_park_tidal_kingdom'
PUBLIC=f'18_{NAME}'
LOADED=f'_{NAME}_tickingarea_loaded'
CLEANUP=f'_{NAME}_remove_tickingarea'
# Persistent installer IDs stay independent of the public entry-point number.
OBJECTIVE='tk19_install'
ANCHOR_TAG='tk19_origin'
ANCHOR_NAME='tk31_origin_anchor'
ANCHOR=f'@e[type=minecraft:armor_stand,tag={ANCHOR_TAG}]'
OWNER='tk19_builder'
BUSY='tk19_busy'
ORIGIN_AREA='tidal_kingdom_origin'
TIMEOUT=3600
SETTLE=600
RELEASE_TICKS=2
# Raise the native assets one block: Classic Flat feet are at -60, so the
# original -5 load offset fell below the Overworld's -64 structure boundary.
PLACEMENT_LIFT=1
INSTALLER_REVISION=31
FACING=(('@s[rym=-44,ry=44]',0),('@s[rym=45,ry=134]',90),
        ('@s[rym=135,ry=180]',180),('@s[rym=-180,ry=-135]',180),
        ('@s[rym=-134,ry=-45]',270))


def specs():
    return [(f'{NAME}_x{i+1}_z{j+1}',x,min(x+63,320),z,min(z+63,481),int(i>=5))
            for j,z in enumerate(range(32,482,64)) for i,x in enumerate(range(-319,321,64))]


def areas(phase):
    x0=-319+320*phase
    return [(f'tidal_kingdom_{j*2+i+1}',x0+160*i,x0+160*(i+1)-1,z,min(z+112,481))
            for j,z in enumerate((32,145,258,371)) for i in range(2)]


def score(key):
    assert re.fullmatch(r'tki_[a-z]+',key), f'unsafe installer score holder: {key}'
    return f'{key} {OBJECTIVE}'


def set_score(key,value):
    return f'scoreboard players set {score(key)} {value}'


def condition(key,value,command,unless=False):
    return f'execute {"unless" if unless else "if"} score {score(key)} matches {value} run {command}'


def tell(message,target='@s'):
    return f'tellraw {target} '+json.dumps({'rawtext':[{'text':message}]},separators=(',',':'))


def saved(command):
    # Explicitly recover dimension, executor, position and rotation. Scheduled
    # functions never depend on their implicit world-spawn execution context.
    return f'execute in overworld as {ANCHOR} if score @s {OBJECTIVE} = tki_generation {OBJECTIVE} at @s rotated as @s run {command}'


def stage_commands(phase):
    commands=[f'tickingarea add ^{x0} ^0 ^{z0} ^{x1} ^0 ^{z1} {name} true'
              for name,x0,x1,z0,z1 in areas(phase)]
    # Register readiness before issuing placements; all eight callbacks must
    # arrive before the settle timer replaces this stage's watchdog.
    commands += [f'schedule on_area_loaded add tickingarea {name} {LOADED}' for name,*_ in areas(phase)]
    for selector,angle in FACING:
        for name,x0,x1,z0,z1,p in specs():
            if p!=phase:continue
            ax=x1 if angle in (180,270) else x0
            az=z1 if angle in (90,180) else z0
            commands.append(f'execute if entity {selector} run structure load ai_minecraft_builds:{name} '
                            f'^{ax} ^{-5+PLACEMENT_LIFT} ^{az} {angle}_degrees none')
    return commands


def validate_score_syntax(texts):
    """Lint the conservative score-holder syntax used by THIS installer.

    Bedrock's execute target parser rejects the original unquoted #active
    form, even though scoreboard string arguments can accept hash names.
    Keep generated literals to plain identifiers and inspect every nested
    command independently of whether its runtime condition is selected.
    This is a focused regression check, not a replacement for the game parser.
    """
    def holder(token):
        assert re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*|@[sea](?:\[[^\]\s]*\])?',token), f'unsafe score holder: {token}'
    for filename,text in texts.items():
        for line in text.splitlines():
            if not line or line.startswith('#'):continue
            command=line
            while command.startswith('execute '):
                prefix,command=command.split(' run ',1)
                tokens=shlex.split(prefix)
                for i in range(len(tokens)-1):
                    if tokens[i] not in ('if','unless') or tokens[i+1]!='score':continue
                    holder(tokens[i+2])
                    assert tokens[i+3]==OBJECTIVE,filename
                    if tokens[i+4]=='matches':
                        assert re.fullmatch(r'-?\d+(?:\.\.-?\d+)?',tokens[i+5]),line
                    else:
                        assert tokens[i+4]=='=',line
                        holder(tokens[i+5]);assert tokens[i+6]==OBJECTIVE,line
            tokens=shlex.split(command)
            if tokens[:2]==['scoreboard','players']:
                holder(tokens[3]);assert tokens[4]==OBJECTIVE,line
                if tokens[2]=='operation':
                    holder(tokens[6]);assert tokens[7]==OBJECTIVE,line


def functions(metrics):
    metrics['placement_vertical_offset']=PLACEMENT_LIFT
    metrics['placement_bounds']=[[x,y+PLACEMENT_LIFT,z] for x,y,z in metrics['bounds']]
    low,high=metrics['placement_bounds']
    metrics['allowed_feet_y']=[-64-low[1],319-high[1]]
    header=[
        '# TIDAL KINGDOM - Minecraft Bedrock Edition 1.21.50+ / automatic staged installer',
        f'# Run /function {PUBLIC} ONCE as a player at ground level, facing a cardinal direction with a horizontal view.',
        '# Front-center observation origin; nearest build block is 32 ahead. Use a clear flat Overworld site.',
        f"# Bounds ^-319 ^{low[1]} ^32 through ^320 ^{high[1]} ^481; envelope 640 x 450 x {metrics['dimensions']['height']}.",
        f"# Feet Y {metrics['allowed_feet_y'][0]} through {metrics['allowed_feet_y'][1]}; foundation/basins reach four blocks below your feet.",
        '# Park deck is raised one block so the entire native structure fits above Y -64 on default Classic Flat ground.',
        '# Plot area 288,000 blocks = 2.00028x Infernal Rift area. Exactly one coaster, four slides and full water-park scenery.',
        '# A temporary persistent armor stand retains the centered origin and cardinal yaw; its original ground must remain intact.',
        '# You may move or turn after starting; keep the world running and do not disturb the temporary anchor.',
        '# Two stages advance automatically after ALL eight areas load, then settle for 600 game ticks (30 seconds at 20 TPS).',
        '# NINE free ticking-area slots are needed: eight plot rectangles (at most 88 chunks each) and one origin area.',
        '# Each stage has a 3600-tick loading watchdog. Missing readiness/anchor aborts and removes our temporary state.',
        '# Repeated calls during installation report busy without restarting, replacing the origin, or removing active areas.',
        f"# {metrics['non_air_blocks']:,} non-air blocks + {metrics['air_cells']:,} explicit air cells, 80 native assets / 40 per stage.",
        f"# Tidebreaker: {metrics['rails']:,} rails, {metrics['curves']} curves, six major climbs and four major drops.",
        '# Board beside ^194 ^9 ^406 and push toward +local left; water, aquarium fish, sails and scenery have no scripted animation.',
        '# Exactly three lifecycle functions; delayed placement restores the saved anchor context for both stages.',
        '# Area removals settle for two ticks before either stage recreates its preload areas.',
        '# WARNING: overwrites a huge volume. Back up or use a disposable world. In-game verification remains outstanding.',
        '# Rebuild/reimport after source changes. Generator: tools/generate_tidal_kingdom.py.',
        '# Public COMMAND_TOTAL executable lines including five snaps; callback total CALLBACK_TOTAL.',
        '', '# === GUARD AGAINST A SECOND INSTALLATION ===',
        f'scoreboard objectives add {OBJECTIVE} dummy',
        # An old failed installation may still be busy when this fixed pack is
        # imported. Reset it once; subsequent calls retain the busy guard.
        # Bedrock cannot evaluate even UNLESS score when the entry is absent.
        f'scoreboard players add {score("tki_revision")} 0',
        f'execute unless score {score("tki_revision")} matches {INSTALLER_REVISION} run '+set_score('tki_active',0),
        set_score('tki_revision',INSTALLER_REVISION),
        f'tag @s remove {BUSY}',
        condition('tki_active',1,f'tag @s add {BUSY}'),
        f'execute if entity @s[tag={BUSY}] run '+tell('Tidal Kingdom is already installing. Wait for its completion or timeout message.'),
    ]
    start=[f'schedule on_area_loaded clear function {LOADED}',f'schedule delay clear {CLEANUP}']
    start += [f'tickingarea remove {name}' for name,*_ in areas(0)]
    start += [f'tickingarea remove {ORIGIN_AREA}',
              # Kill only our marker; never target nearby dropped items.
              f'execute in overworld run kill {ANCHOR}',
              f'tag @a[tag={OWNER}] remove {OWNER}',f'tag @s add {OWNER}',
              'tag @s remove tidal_kingdom_next_half','tag @s remove tidal_kingdom_this_half',
              f'scoreboard players add {score("tki_generation")} 1',
              f'summon minecraft:armor_stand "{ANCHOR_NAME}" ^0 ^0 ^0',
              f'tag @e[type=minecraft:armor_stand,name={ANCHOR_NAME},r=2,c=1] add {ANCHOR_TAG}',
              f'scoreboard players operation {ANCHOR} {OBJECTIVE} = tki_generation {OBJECTIVE}',
              f'tp {ANCHOR} ^0 ^0 ^0 ~ 0',
              f'effect {ANCHOR} invisibility 1000000 0 true',
              f'effect {ANCHOR} resistance 1000000 255 true',
              set_score('tki_active',1),set_score('tki_stage',0),set_score('tki_ready',0),
              f'schedule delay add {CLEANUP} {RELEASE_TICKS} replace',
              tell('Tidal Kingdom: preparing stage 1/2. Both stages and cleanup are automatic; nine free ticking-area slots are required.')]
    public=snap.transform_public_lines(header+['', '# === SAVE ORIGIN AND START STAGE ONE ===']+
        [f'execute if entity @s[type=minecraft:player] unless entity @s[tag={BUSY}] run {c}' for c in start]+[f'tag @s remove {BUSY}'])

    loaded=['# INTERNAL CALLBACK - do not run manually. Readiness barrier for the current stage.',
            f'execute if score {score("tki_active")} matches 1 if score {score("tki_stage")} matches 1..2 if score {score("tki_ready")} matches 0..7 run scoreboard players add {score("tki_ready")} 1',
            condition('tki_ready',8,f'schedule delay add {CLEANUP} {SETTLE} replace')]

    # Snapshot the next action before changing tki_stage/tki_ready. This prevents a
    # stage-one transition from cascading into final cleanup in the same call.
    advance=['# INTERNAL CALLBACK - do not run manually. Advance safely or perform final/timeout cleanup.',
             f'schedule on_area_loaded clear function {LOADED}',
             set_score('tki_next',0),
             set_score('tki_anchor',0),
             f'execute in overworld as {ANCHOR} if score @s {OBJECTIVE} = tki_generation {OBJECTIVE} run '+set_score('tki_anchor',1),
             f'execute if score {score("tki_active")} matches 1 if score {score("tki_stage")} matches 0 if score {score("tki_anchor")} matches 1 run '+set_score('tki_next',1),
             f'execute if score {score("tki_active")} matches 1 if score {score("tki_ready")} matches 8 if score {score("tki_stage")} matches 1 if score {score("tki_anchor")} matches 1 run '+set_score('tki_next',2),
             f'execute if score {score("tki_active")} matches 1 if score {score("tki_stage")} matches 3 if score {score("tki_anchor")} matches 1 run '+set_score('tki_next',4),
             f'execute if score {score("tki_active")} matches 1 if score {score("tki_ready")} matches 8 if score {score("tki_stage")} matches 2 if score {score("tki_anchor")} matches 1 run '+set_score('tki_next',5)]
    # Bedrock finalizes area removal after the function returns. Re-adding the
    # same name in that call silently loses the replacement. Wait two ticks.
    for action in (0,2,5):
        advance += [condition('tki_next',action,f'execute in overworld run tickingarea remove {name}') for name,*_ in areas(0)]
    for phase,action in ((0,1),(1,4)):
        commands=[]
        if phase==0:commands.append(saved(f'tickingarea add circle ^0 ^0 ^0 1 {ORIGIN_AREA} true'))
        commands += [set_score('tki_stage',phase+1),set_score('tki_ready',0),
                     f'schedule delay add {CLEANUP} {TIMEOUT} replace',
                     tell(f'Tidal Kingdom: stage {phase+1}/2 started automatically.',f'@a[tag={OWNER}]')]
        commands += [saved(c) for c in stage_commands(phase)]
        advance += [condition('tki_next',action,c) for c in commands]
    advance += [condition('tki_next',2,c) for c in [set_score('tki_stage',3),set_score('tki_ready',0),
                f'schedule delay add {CLEANUP} {RELEASE_TICKS} replace']]
    advance += [condition('tki_next',5,tell('Tidal Kingdom is complete. Temporary loading areas and anchor are being removed.',f'@a[tag={OWNER}]')),
                condition('tki_next',0,tell('Tidal Kingdom installation stopped: a stage did not fully load or its anchor was lost. Temporary areas are removed. Free nine slots and restart at the original origin.',f'@a[tag={OWNER}]'))]
    terminal=[f'schedule delay clear {CLEANUP}',
              f'execute in overworld run kill {ANCHOR}',
              f'execute in overworld run tickingarea remove {ORIGIN_AREA}',
              f'tag @a[tag={OWNER}] remove {OWNER}',set_score('tki_active',0),set_score('tki_stage',0),set_score('tki_ready',0)]
    for action in (0,5):advance += [condition('tki_next',action,c) for c in terminal]
    count=sum(snap.is_command(line) for line in public)
    callbacks=sum(snap.is_command(line) for line in loaded+advance)
    metrics.update(public_commands=count,callback_commands=callbacks,lifecycle_commands=count+callbacks,
                   structures=80,stages=2,manual_invocations=1,automatic_staging=True,
                   ticking_areas_per_stage=8,origin_ticking_areas=1,maximum_active_ticking_areas=9,
                   maximum_preload_chunks=88,maximum_origin_preload_chunks=9,
                   settle_ticks=SETTLE,area_release_ticks=RELEASE_TICKS,stage_timeout_ticks=TIMEOUT)
    # Remove legacy manual-installer fields when invoked with older metrics.
    for key in ('passes','ticking_areas_per_pass'):metrics.pop(key,None)
    assert max(count,callbacks)<10000
    texts={f'{PUBLIC}.mcfunction':'\n'.join(line.replace('COMMAND_TOTAL',str(count)).replace('CALLBACK_TOTAL',str(callbacks)) for line in public),
           f'{LOADED}.mcfunction':'\n'.join(loaded),f'{CLEANUP}.mcfunction':'\n'.join(advance)}
    validate_score_syntax(texts)
    return texts
