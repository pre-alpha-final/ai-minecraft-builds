"""Execute the emitted Bedrock commands to check geometry, guards and budgets."""
import json
import math
from pathlib import Path
import re
import sys
import tempfile
import unittest
import cardinal_snap
import generate_clear_area as clear

sys.setrecursionlimit(10000)


def offset(point, yaw):
    x, y, z = point
    return {0: (x,y,z), 90: (-z,y,x), 180: (-x,y,-z), -180: (-x,y,-z), -90: (z,y,-x)}[yaw]


class Simulator:
    def __init__(self, sizes=None, yaw=0, feet=-60, loaded=lambda low, high: True, player=True):
        self.scores = {} if sizes is None else dict(zip(('sides','forward','up'), sizes))
        self.scores['ca_yaw'] = 180 if yaw == -180 else yaw
        self.origin = ((.5, feet, .5), yaw)
        self.loaded = loaded
        self.player = player
        self.functions = clear.sources()
        self.commands = 0
        self.fills = []
        self.checks = []
        self.messages = []
        self.events = []

    def function(self, name=clear.PUBLIC_NAME, context=None):
        context = context or self.origin
        for line in self.functions[name]:
            if not cardinal_snap.is_command(line): continue
            self.commands += 1
            assert self.commands <= 10000, 'Bedrock function budget exceeded'
            if line in cardinal_snap.SNAP_COMMANDS: continue
            if line.startswith(cardinal_snap.REANCHOR_PREFIX):
                self.command(line.removeprefix(cardinal_snap.REANCHOR_PREFIX), self.origin)
            else:
                self.command(line, context)

    def coordinate(self, tokens, context):
        point = offset(tuple(float(token[1:] or 0) for token in tokens), context[1])
        return tuple(math.floor(a+b) for a,b in zip(context[0],point))

    def command(self, line, context):
        if line.startswith('tellraw '):
            self.messages.append(json.loads(line.split(' ',2)[2])['rawtext'][0]['text']); return
        t = line.split()
        if t[0] == 'execute':
            index = 1
            position, yaw = context
            while t[index] != 'run':
                verb = t[index]; index += 1
                if verb in ('if','unless'):
                    kind = t[index]; index += 1
                    if kind == 'score':
                        name = t[index]; operator = t[index+2]
                        if operator == 'matches':
                            value = self.scores.get(name)
                            limits = t[index+3].split('..')
                            if len(limits) == 1: low = high = int(limits[0])
                            else: low,high = (int(limits[0]) if limits[0] else -2**31, int(limits[1]) if limits[1] else 2**31-1)
                            result = value is not None and low <= value <= high
                            index += 4
                        else:
                            other = self.scores.get(t[index+3]); value = self.scores.get(name)
                            result = value is not None and other is not None and value == other
                            assert operator == '='
                            index += 5
                    elif kind == 'entity':
                        selector = t[index]; index += 1
                        if 'type=' in selector: result = self.player
                        else:
                            ranges = dict((key,int(value)) for key,value in re.findall(r'(rym|ry)=(-?\d+)',selector))
                            result = ranges['rym'] <= yaw <= ranges['ry']
                    elif kind == 'blocks':
                        a,b,destination = [self.coordinate(t[index+i:index+i+3],(position,yaw)) for i in (0,3,6)]
                        low = tuple(min(x,y) for x,y in zip(a,b)); high = tuple(max(x,y) for x,y in zip(a,b))
                        assert destination == low, (destination,low)
                        assert t[index+9] == 'all'
                        self.checks.append((low,high))
                        result = low[1] >= -64 and high[1] <= 319 and self.loaded(low,high)
                        index += 10
                    else: raise AssertionError(kind)
                    if result != (verb == 'if'): return
                elif verb == 'align':
                    assert t[index] == 'y'; index += 1
                    position = (position[0],math.floor(position[1]),position[2])
                elif verb == 'positioned':
                    change = offset(tuple(float(v[1:] or 0) for v in t[index:index+3]),yaw)
                    position = tuple(a+b for a,b in zip(position,change)); index += 3
                elif verb == 'rotated':
                    yaw = int(t[index]); assert t[index+1] == '0'; index += 2
                else: raise AssertionError(verb)
            self.command(' '.join(t[index+1:]),(position,yaw)); return
        if t[0] == 'scriptevent': self.events.append(t[1:]); return
        if t[0] == 'function': self.function(t[1],context); return
        if t[:2] == ['scoreboard','objectives']: return
        if t[:2] == ['scoreboard','players']:
            action,name = t[2:4]
            if action == 'operation':
                operator,source = t[5:7]
                a,b = self.scores.get(name,0),self.scores[source]
                if operator == '<>': self.scores[name],self.scores[source] = b,a
                else:
                    self.scores[name] = {'=':lambda:b,'+=':lambda:a+b,'*=':lambda:a*b,'/=':lambda:a//b,'%=':lambda:a%b,'>':lambda:max(a,b)}[operator]()
            else:
                value = int(t[5]); a = self.scores.get(name,0)
                self.scores[name] = {'set':value,'add':a+value,'remove':a-value}[action]
            return
        if t[0] == 'fill':
            a,b = [self.coordinate(t[i:i+3],context) for i in (1,4)]
            assert t[7:] == ['minecraft:air','replace']
            self.fills.append((tuple(min(x,y) for x,y in zip(a,b)),tuple(max(x,y) for x,y in zip(a,b))))
            return
        raise AssertionError(line)


class ClearAreaTests(unittest.TestCase):
    def test_exact_geometry_and_preflight_for_all_facings(self):
        for sizes in ((0,1,1),(2,5,3),(10,50,30),(17,34,33)):
            for yaw in (0,90,180,-180,-90):
                with self.subTest(sizes=sizes,yaw=yaw):
                    sim=Simulator(sizes,yaw,player=False); sim.function(clear.PREFIX + '_validate')
                    cells=set()
                    for low,high in sim.fills:
                        box={(x,y,z) for x in range(low[0],high[0]+1) for y in range(low[1],high[1]+1) for z in range(low[2],high[2]+1)}
                        self.assertLessEqual(len(box),32768)
                        self.assertFalse(cells & box)
                        cells.update(box)
                    s,f,u=sizes
                    expected={tuple(a+b for a,b in zip(offset((x,y,z),yaw),(0,-60,0))) for x in range(-s,s+1) for y in range(u) for z in range(1,f+1)}
                    self.assertEqual(cells,expected)
                    self.assertEqual(sim.checks,sim.fills)
                    self.assertEqual(sim.scores['ca_ready'],sim.scores['ca_tiles'])
                    self.assertEqual(sim.scores['ca_cost'],clear.work_cost(*sizes))
                    self.assertLessEqual(sim.commands,clear.work_cost(*sizes)+1000)

    def test_public_entry_requests_sign_input_without_using_stale_settings(self):
        sim=Simulator((10,50,30)); sim.function()
        self.assertEqual(sim.events, [['ai_minecraft_builds:clear','read_sign']])
        self.assertFalse(sim.fills); self.assertFalse(sim.checks)
        sim=Simulator((10,50,30),player=False); sim.function()
        self.assertFalse(sim.events); self.assertFalse(sim.fills)

    def test_unloaded_tile_or_invalid_height_aborts_entire_clear(self):
        for sim in (Simulator((10,50,30),loaded=lambda low,high: high[2]<=32),Simulator((10,50,30),feet=300)):
            sim.function(clear.PREFIX + '_validate')
            self.assertTrue(sim.checks); self.assertFalse(sim.fills)
            self.assertEqual(sim.scores['ca_status'],3)

    def test_budget_guard_nonplayer_guard_and_tall_world_bounds(self):
        sim=Simulator((128,511,383)); sim.function(clear.PREFIX + '_validate')
        self.assertFalse(sim.checks); self.assertFalse(sim.fills)
        self.assertEqual(sim.scores['ca_status'],2)
        sim=Simulator((10,50,30),player=False); sim.function()
        self.assertFalse(sim.scores.get('ca_valid')); self.assertFalse(sim.fills)
        for sizes,feet in (((0,1,384),-64),((64,64,32),-60),((31,32,64),-60)):
            sim=Simulator(sizes,feet=feet); sim.function(clear.PREFIX + '_validate')
            self.assertTrue(sim.fills)
            self.assertLessEqual(sim.commands,clear.work_cost(*sizes)+1000)

    def test_generated_files_are_current_and_clean(self):
        generated=clear.sources()
        cardinal_snap.validate_public_lines(generated[clear.PUBLIC_NAME])
        for name,lines in generated.items():
            data=(clear.ROOT/'src/functions'/f'{name}.mcfunction').read_bytes()
            self.assertEqual(data, ('\n'.join(lines)+'\n').encode())
            self.assertTrue(all(line==line.rstrip() and not line.startswith('/') for line in lines))
            self.assertFalse(any(' <> ' in line for line in lines))
        self.assertEqual(sum(cardinal_snap.is_command(line) for line in generated[clear.PUBLIC_NAME]),6)
        self.assertFalse((clear.ROOT/'src/functions/21_clear_area.mcfunction').exists())

    def test_version_increment_preserves_line_endings_and_identity(self):
        original=(clear.ROOT/'src/manifest.json').read_bytes()
        before=json.loads(original)
        with tempfile.TemporaryDirectory(prefix='clear-area-test-') as directory:
            root=Path(directory); path=root/'src/manifest.json'; path.parent.mkdir(); path.write_bytes(original)
            version=clear.bump_pack_version(root); updated=path.read_bytes()
        self.assertEqual(updated,original.replace(str(before['header']['version']).encode(),str(version).encode()))
        self.assertEqual(json.loads(updated)['modules'][0]['version'],version)


if __name__ == '__main__':
    unittest.main()
