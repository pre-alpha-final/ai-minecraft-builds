#!/usr/bin/env python3
"""Generate the sign-configured Bedrock clearing utility and its helpers."""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import re
import subprocess
import cardinal_snap

ROOT = Path(__file__).resolve().parents[1]
PUBLIC_NAME = '0_clear_sides_forward_up'
OBJECTIVE = 'clear_area'
PREFIX = '_clear_area/'
SIZES = (1, 2, 4, 8, 16, 32)
WORK_BUDGET = 9000  # Reserve 1,000 commands for setup, estimation and messages.


def setscore(name, value):
    return f'scoreboard players set {name} {OBJECTIVE} {value}'


def operation(target, operator, source):
    return f'scoreboard players operation {target} {OBJECTIVE} {operator} {source} {OBJECTIVE}'


def condition(name, value, command):
    return f'execute if score {name} {OBJECTIVE} matches {value} run {command}'


def call(name):
    return f'function {PREFIX}_{name}'


def message(text):
    return 'tellraw @s ' + json.dumps({'rawtext': [{'text': text}]}, separators=(',', ':'))


def pieces(value):
    return value // 32 + (value % 32).bit_count()


def work_cost(sides, forward, up):
    """Conservative executed-line bound for both geometry passes, all facings."""
    pw, pf, ph = (pieces(value) for value in (2 * sides + 1, forward, up))
    return 2 * (2 + 11 * max(pw, pf) * (1 + ph) + 26 * pw * pf * ph
                + 10 * pieces(sides) + 9 * pieces(forward - 1) + 14 + 30)


def sources():
    output = {}

    def internal(name, lines):
        output[f'{PREFIX}_{name}'] = ['# INTERNAL HELPER - do not run manually', *lines]

    public = [
        '# CLEAR AREA FROM SIGN - Minecraft Bedrock Edition',
        f'# Run as a player: /function {PUBLIC_NAME}',
        '# Stand at ground level at a sign (at your feet or directly below), facing the area.',
        '# Write exactly three integers on the sign: 10 50 30 (sides forward up).',
        '# Your position centers on the current block; pitch levels and yaw snaps to a cardinal.',
        '# sides = blocks on EACH side; width = 2*sides+1. forward/up are block counts.',
        '# Front-center origin; exact local bounds: (-sides,0,1) through (sides,up-1,forward).',
        '# Leaves the sign/origin column and blocks below foot level intact.',
        '# Limits: sides 0..128, forward 1..512, up 1..384, plus a checked 10,000-command budget.',
        '# Overworld supported feet Y: -64 through 320-up; Classic Flat Y -60 allows up <= 380.',
        '# Temporary ticking areas automatically load the complete target box; keep the world running.',
        '# Script API 1.16.0 saves the sign context, preloads, checks every tile, clears and cleans up.',
        '# One active clear at a time; up to six temporary ticking areas. At most 32,768 cells per fill.',
        '# WARNING: permanently deletes blocks. Back up first or use a disposable world.',
        '',
        'execute if entity @s[type=minecraft:player] run scriptevent ai_minecraft_builds:clear read_sign',
    ]
    output[PUBLIC_NAME] = cardinal_snap.transform_public_lines(public)
    count = [operation('ca_parts', '=', 'ca_value'), operation('ca_parts', '/=', 'ca_32'), operation('ca_value', '%=', 'ca_32')]
    count += [condition('ca_value', str(value), f'scoreboard players add ca_parts {OBJECTIVE} {value.bit_count()}') for value in range(32)]
    internal('count_parts', count)

    validate = [setscore('ca_status', 0), setscore('ca_32', 32), setscore('ca_2', 2), setscore('ca_11', 11), setscore('ca_26', 26),
                setscore('ca_10', 10), setscore('ca_9', 9), operation('ca_width', '=', 'sides'),
                operation('ca_width', '+=', 'sides'), f'scoreboard players add ca_width {OBJECTIVE} 1']
    for source, target in (('ca_width', 'ca_pw'), ('forward', 'ca_pf'), ('up', 'ca_ph'), ('sides', 'ca_ps'), ('forward', 'ca_pz')):
        validate.append(operation('ca_value', '=', source))
        if target == 'ca_pz':
            validate.append(f'scoreboard players remove ca_value {OBJECTIVE} 1')
        validate += [call('count_parts'), operation(target, '=', 'ca_parts')]
    validate += [
        operation('ca_tiles', '=', 'ca_pw'), operation('ca_tiles', '*=', 'ca_ph'), operation('ca_tiles', '*=', 'ca_pf'),
        operation('ca_maxp', '=', 'ca_pw'), operation('ca_maxp', '>', 'ca_pf'),
        operation('ca_cost', '=', 'ca_ph'), f'scoreboard players add ca_cost {OBJECTIVE} 1',
        operation('ca_cost', '*=', 'ca_maxp'), operation('ca_cost', '*=', 'ca_11'),
        operation('ca_temp', '=', 'ca_tiles'), operation('ca_temp', '*=', 'ca_26'), operation('ca_cost', '+=', 'ca_temp'),
        operation('ca_temp', '=', 'ca_ps'), operation('ca_temp', '*=', 'ca_10'), operation('ca_cost', '+=', 'ca_temp'),
        operation('ca_temp', '=', 'ca_pz'), operation('ca_temp', '*=', 'ca_9'), operation('ca_cost', '+=', 'ca_temp'),
        f'scoreboard players add ca_cost {OBJECTIVE} 46', operation('ca_cost', '*=', 'ca_2'),
        condition('ca_cost', f'{WORK_BUDGET + 1}..', setscore('ca_status', 2)),
        condition('ca_cost', f'..{WORK_BUDGET}', call('perform')),
    ]
    internal('validate', validate)
    internal('perform', [
        setscore('ca_mode', 0), setscore('ca_ready', 0),
        f'execute align y positioned ^0 ^0 ^1 run {call("run")}',
        f'execute unless score ca_ready {OBJECTIVE} = ca_tiles {OBJECTIVE} run ' + setscore('ca_status', 3),
        setscore('ca_mode', 1),
        f'execute if score ca_ready {OBJECTIVE} = ca_tiles {OBJECTIVE} align y positioned ^0 ^0 ^1 run {call("run")}',
        f'execute if score ca_ready {OBJECTIVE} = ca_tiles {OBJECTIVE} run ' + setscore('ca_status', 1),
    ])
    # Start at the world's minimum corner, then traverse positive world X/Z.
    # This makes a tile start the correct self-comparison destination in all facings.
    west = f'if score ca_yaw {OBJECTIVE} matches 90'
    north = f'if score ca_yaw {OBJECTIVE} matches 180'
    east = f'if score ca_yaw {OBJECTIVE} matches -90'
    run = [operation('ca_world_w', '=', 'ca_width'), operation('ca_world_d', '=', 'forward'),
           setscore('ca_sign', -1), operation('ca_shiftx', '=', 'sides'), setscore('ca_shiftz', 0)]
    for facing in (west, east):
        run += [f'execute {facing} run {operation("ca_world_w", "=", "forward")}',
                f'execute {facing} run {operation("ca_world_d", "=", "ca_width")}']
    for facing in (north, east):
        run.append(f'execute {facing} run {setscore("ca_sign", 1)}')
    for facing in (west, north):
        run += [f'execute {facing} run {operation("ca_shiftz", "=", "forward")}',
                f'execute {facing} run scoreboard players remove ca_shiftz {OBJECTIVE} 1']
    run.append(call('shiftx'))
    assert len(run) <= 30
    internal('run', run)
    for axis in ('x', 'z'):
        next_command = call('shiftz') if axis == 'x' else f'execute rotated 0 0 run {call("walk")}'
        shift = [condition(f'ca_shift{axis}', '0', next_command)]
        for size in SIZES:
            interval = '32..' if size == 32 else f'{size}..{2 * size - 1}'
            shift.append(condition(f'ca_shift{axis}', interval, call(f'shift{axis}_{size}')))
            handler = [f'scoreboard players remove ca_shift{axis} {OBJECTIVE} {size}']
            if axis == 'x':
                for sign in (-1, 1):
                    handler.append(condition('ca_sign', str(sign), f'execute positioned ^{sign * size} ^0 ^0 run {call("shiftx")}'))
            else:
                handler.append(f'execute positioned ^0 ^0 ^{size} run {call("shiftz")}')
            internal(f'shift{axis}_{size}', handler)
        internal(f'shift{axis}', shift)
    internal('walk', [operation('ca_x', '=', 'ca_world_w'), call('x')])
    for axis in ('x', 'y', 'z'):
        dispatch = []
        for size in SIZES:
            interval = '32..' if size == 32 else f'{size}..{2 * size - 1}'
            dispatch.append(condition(f'ca_{axis}', interval, call(f'{axis}_{size}')))
            handler = [f'scoreboard players remove ca_{axis} {OBJECTIVE} {size}']
            if axis == 'x':
                handler += [setscore('ca_w', size), operation('ca_y', '=', 'up'), call('y')]
            elif axis == 'y':
                handler += [setscore('ca_h', size), operation('ca_z', '=', 'ca_world_d'), call('z')]
            else:
                handler += [condition('ca_w', str(width), call(f'box_{width}_{size}')) for width in SIZES]
            offset = {'x': (size, 0, 0), 'y': (0, size, 0), 'z': (0, 0, size)}[axis]
            position = ' '.join(f'^{value}' for value in offset)
            handler.append(condition(f'ca_{axis}', '1..', f'execute positioned {position} run {call(axis)}'))
            internal(f'{axis}_{size}', handler)
        internal(axis, dispatch)
    for width in SIZES:
        for depth in SIZES:
            box = []
            for height in SIZES:
                end = f'^{width - 1} ^{height - 1} ^{depth - 1}'
                guard = f'execute if score ca_h {OBJECTIVE} matches {height} if score ca_mode {OBJECTIVE} matches '
                box += [guard + f'0 if blocks ^0 ^0 ^0 {end} ^0 ^0 ^0 all run scoreboard players add ca_ready {OBJECTIVE} 1',
                        guard + f'1 run fill ^0 ^0 ^0 {end} minecraft:air replace']
            internal(f'box_{width}_{depth}', box)
    return output


def bump_pack_version(root):
    path = root / 'src/manifest.json'
    data = path.read_bytes()
    cardinal_snap.line_ending(data, path)
    manifest = json.loads(data)
    previous = manifest['header']['version']
    if any(module['version'] != previous for module in manifest['modules']):
        raise ValueError('manifest header and module versions must match')
    version = [previous[0], previous[1], previous[2] + 1]

    def replace(match):
        if json.loads(match[1]) != previous:
            raise ValueError('unexpected version array in manifest')
        numbers = iter(version)
        return match[0].replace(match[1], re.sub(r'\d+', lambda _: str(next(numbers)), match[1]), 1)

    updated, count = re.subn(r'"version"\s*:\s*(\[[^\]]+\])', replace, data.decode())
    if count != 1 + len(manifest['modules']):
        raise ValueError('unexpected manifest version layout')
    path.write_bytes(updated.encode())
    return version


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    parser.add_argument('--pack', action='store_true')
    args = parser.parse_args()
    if args.check and args.pack:
        parser.error('--check and --pack cannot be combined')
    changed = []
    generated = sources()
    for name, lines in generated.items():
        path = ROOT / 'src/functions' / f'{name}.mcfunction'
        previous = path.read_bytes() if path.exists() else b''
        newline = cardinal_snap.line_ending(previous, path) if previous else b'\n'
        data = newline.join(line.encode() for line in lines) + newline
        if data != previous:
            changed.append((path, data))
    if args.check and changed:
        parser.error('generated functions differ: ' + ', '.join(str(path) for path, _ in changed))
    if changed:
        version = bump_pack_version(ROOT)
        for path, data in changed:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(data)
        print(f'Generated {len(changed)} functions; pack version {".".join(map(str, version))}')
    else:
        print(f'Checked {len(generated)} functions; unchanged')
    if args.pack:
        subprocess.run(['powershell.exe', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', str(ROOT / 'tools/package_builds.ps1')], check=True)


if __name__ == '__main__':
    main()
