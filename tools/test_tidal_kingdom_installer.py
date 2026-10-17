"""Execute emitted installer commands in a bounded Bedrock command simulator.

This checks scheduling/state/context behavior. It is not a Minecraft emulator
and cannot replace an in-game test of the engine's loading implementation.
"""

import copy
import json
import math
from pathlib import Path
import re
import shlex
import unittest
import tidal_kingdom_installer as ins


class Simulator:
    def __init__(self,texts,yaw=0,slots=10):
        ins.validate_score_syntax(texts)
        self.texts=texts
        self.player=dict(kind='player',name='Builder',tags=set(),position=(12.5,70,90.5),
                         yaw=-90 if yaw==270 else yaw,score=None)
        self.anchors=[];self.scores={};self.ticking={};self.scheduled={};self.loaded={}
        self.loads=[];self.messages=[];self.peak_areas=0;self.slots=slots
        self.pending_removals=set()

    def select(self,selector,context):
        if not selector.startswith('@'):return []
        match=re.fullmatch(r'(@[sea])(?:\[(.*)\])?',selector);assert match,selector
        base,args=match.groups();values=[] if not args else [p.split('=',1) for p in args.split(',')]
        entities=[context['entity']] if base=='@s' else [self.player] if base=='@a' else self.anchors
        entities=[e for e in entities if e is not None]
        for key,value in values:
            if key=='tag':entities=[e for e in entities if (value.lstrip('!') in e['tags'])!=(value.startswith('!'))]
            elif key=='type':entities=[e for e in entities if value=='minecraft:'+e['kind']]
            elif key=='name':entities=[e for e in entities if e['name']==value]
            elif key=='r':entities=[e for e in entities if math.dist(e['position'],context['position'])<=float(value)]
            elif key=='rym':entities=[e for e in entities if e['yaw']>=float(value)]
            elif key=='ry':entities=[e for e in entities if e['yaw']<=float(value)]
            elif key=='c':entities=sorted(entities,key=lambda e:math.dist(e['position'],context['position']))[:int(value)]
            else:raise AssertionError(('unsupported selector',key))
        return entities

    def number(self,target,context):
        if target.startswith('@'):
            entities=self.select(target,context)
            return entities[0]['score'] if entities else None
        return self.scores.get(target)

    def assign(self,target,value,context):
        if target.startswith('@'):
            for entity in self.select(target,context):entity['score']=value
        else:self.scores[target]=value

    def coords(self,tokens,context):
        assert len(tokens)==3
        if all(t.startswith('^') for t in tokens):
            x,y,z=[float(t[1:] or 0) for t in tokens]
            yaw=context['yaw']%360
            x,z=(x,z) if yaw==0 else (-z,x) if yaw==90 else (-x,-z) if yaw==180 else (z,-x)
            return tuple(a+b for a,b in zip(context['position'],(x,y,z)))
        return tuple(context['position'][i]+float(t[1:] or 0) if t.startswith('~') else float(t)
                     for i,t in enumerate(tokens))

    def command(self,command,context):
        if command.startswith('execute '):
            prefix,body=command.split(' run ',1);tokens=shlex.split(prefix)[1:]
            contexts=[dict(context)];i=0
            while i<len(tokens):
                op=tokens[i];i+=1
                if op=='in':
                    assert tokens[i]=='overworld';i+=1
                elif op=='as':
                    selector=tokens[i];i+=1
                    contexts=[dict(ctx,entity=e) for ctx in contexts for e in self.select(selector,ctx)]
                elif op=='at':
                    selector=tokens[i];i+=1
                    contexts=[dict(ctx,position=e['position'],yaw=e['yaw']) for ctx in contexts for e in self.select(selector,ctx)]
                elif op=='rotated':
                    assert tokens[i]=='as';selector=tokens[i+1];i+=2
                    contexts=[dict(ctx,yaw=e['yaw']) for ctx in contexts for e in self.select(selector,ctx)]
                elif op=='align':
                    axes=tokens[i];i+=1
                    contexts=[dict(ctx,position=tuple(math.floor(v) if axis in axes else v
                        for axis,v in zip('xyz',ctx['position']))) for ctx in contexts]
                elif op in ('if','unless'):
                    kind=tokens[i];i+=1
                    if kind=='entity':
                        selector=tokens[i];i+=1
                        contexts=[ctx for ctx in contexts if bool(self.select(selector,ctx))==(op=='if')]
                    elif kind=='score':
                        target,objective,compare=tokens[i:i+3];assert objective==ins.OBJECTIVE;i+=3
                        if compare=='matches':
                            bounds=tokens[i];i+=1
                            a,_,c=bounds.partition('..');lo=int(a);hi=int(c) if c else lo
                            contexts=[ctx for ctx in contexts if (v:=self.number(target,ctx)) is not None and (lo<=v<=hi)==(op=='if')]
                        else:
                            assert compare=='='
                            other,objective=tokens[i:i+2];assert objective==ins.OBJECTIVE;i+=2
                            contexts=[ctx for ctx in contexts if (v:=self.number(target,ctx)) is not None and (rhs:=self.number(other,ctx)) is not None and (v==rhs)==(op=='if')]
                    else:raise AssertionError(('unsupported condition',kind))
                else:raise AssertionError(('unsupported execute',op,command))
            for ctx in contexts:self.command(body,ctx)
            return
        tokens=shlex.split(command)
        verb=tokens[0]
        if verb=='tellraw':
            json.loads(command.split(' ',2)[2]);self.messages.append(command)
        elif verb=='scoreboard':
            if tokens[1]=='objectives':assert tokens==['scoreboard','objectives','add',ins.OBJECTIVE,'dummy'];return
            assert tokens[1]=='players'
            operation,target,objective=tokens[2:5];assert objective==ins.OBJECTIVE
            if operation=='set':self.assign(target,int(tokens[5]),context)
            elif operation=='add':self.assign(target,(self.number(target,context) or 0)+int(tokens[5]),context)
            elif operation=='operation':
                assert tokens[5]=='=' and tokens[7]==ins.OBJECTIVE
                self.assign(target,self.number(tokens[6],context),context)
            else:raise AssertionError(command)
        elif verb=='tag':
            for e in self.select(tokens[1],context):
                if tokens[2]=='add':e['tags'].add(tokens[3])
                else:assert tokens[2]=='remove';e['tags'].discard(tokens[3])
        elif verb=='summon':
            assert tokens[1]=='minecraft:armor_stand'
            self.anchors.append(dict(kind='armor_stand',name=tokens[2],tags=set(),position=self.coords(tokens[3:6],context),yaw=0,score=None))
        elif verb=='tp':
            for entity in self.select(tokens[1],context):
                entity['position']=self.coords(tokens[2:5],context)
                if len(tokens)>5:entity['yaw']=context['yaw'] if tokens[5]=='~' else float(tokens[5])
        elif verb=='kill':
            for entity in self.select(tokens[1],context):
                assert entity['kind']=='armor_stand' and ins.ANCHOR_TAG in entity['tags']
                self.anchors.remove(entity)
        elif verb=='effect':
            assert tokens[2] in ('invisibility','resistance')
        elif verb=='tickingarea':
            if tokens[1]=='remove':
                if tokens[2] in self.ticking:self.pending_removals.add(tokens[2])
            else:
                assert tokens[1]=='add' and tokens[-1]=='true'
                name=tokens[-2]
                if name in self.ticking:return
                if len(self.ticking)<self.slots:
                    if tokens[2]=='circle':
                        assert tokens[6]=='1'
                        center=self.coords(tokens[3:6],context)
                        self.ticking[name]=(tuple(v+d for v,d in zip(center,(-16,0,-16))),
                                            tuple(v+d for v,d in zip(center,(16,0,16))))
                    else:self.ticking[name]=(self.coords(tokens[2:5],context),self.coords(tokens[5:8],context))
                    self.peak_areas=max(self.peak_areas,len(self.ticking))
        elif verb=='schedule':
            if tokens[1]=='delay':
                if tokens[2]=='clear':self.scheduled.pop(tokens[3],None)
                else:
                    assert tokens[2]=='add' and tokens[5]=='replace'
                    self.scheduled[tokens[3]]=int(tokens[4])
            else:
                assert tokens[1]=='on_area_loaded'
                if tokens[2]=='clear':
                    assert tokens[3]=='function'
                    self.loaded={a:f for a,f in self.loaded.items() if f!=tokens[4]}
                else:
                    assert tokens[2:4]==['add','tickingarea']
                    if tokens[4] in self.ticking:self.loaded[tokens[4]]=tokens[5]
        elif verb=='structure':
            assert tokens[1]=='load' and tokens[-1]=='none'
            position=self.coords(tokens[3:6],context)
            # Native structure requests are rejected as a whole below -64,
            # including when their lowest palette cells happen to be void.
            assert position[1]>=-64,('structure starts below world floor',position)
            self.loads.append((tokens[2],context['position'],context['yaw']%360))
        else:raise AssertionError(('unsupported command',command))

    def call(self,name,player_context=None):
        # Scheduled callbacks deliberately start at an unrelated server origin
        # with no player executor, rather than inheriting the public context.
        if player_context is None:player_context=name==ins.PUBLIC
        context=dict(entity=self.player,position=self.player['position'],yaw=self.player['yaw']) if player_context else dict(entity=None,position=(0,0,0),yaw=0)
        for line in self.texts[f'{name}.mcfunction'].splitlines():
            if line and not line.startswith('#'):self.command(line,context)
        for name in self.pending_removals:self.ticking.pop(name,None)
        self.pending_removals.clear()


class InstallerTests(unittest.TestCase):
    def setUp(self):
        metrics=json.loads((Path(__file__).resolve().parents[1]/'docs/tidal_kingdom/metrics.json').read_text())
        self.texts=ins.functions(metrics)

    def start(self,yaw=0,slots=10):
        sim=Simulator(self.texts,yaw,slots);sim.call(ins.PUBLIC);sim.call(ins.CLEANUP);return sim

    def ready(self,sim,count=8):
        for _ in range(count):sim.call(ins.LOADED)

    def advance(self,sim):
        sim.call(ins.CLEANUP)
        self.assertEqual(sim.scores['tki_stage'],3)
        self.assertEqual(sim.scheduled[ins.CLEANUP],ins.RELEASE_TICKS)
        self.assertEqual(len(sim.ticking),1)
        sim.call(ins.CLEANUP)

    def test_automatic_completion_after_player_moves_in_every_facing(self):
        for yaw in (0,90,180,-180,270):
            with self.subTest(yaw=yaw):
                sim=self.start(yaw);self.assertEqual(len(sim.loads),40)
                sim.player['position']=(900.5,170,-410.5);sim.player['yaw']=43
                self.ready(sim,7);self.assertEqual(sim.scheduled[ins.CLEANUP],ins.TIMEOUT)
                self.ready(sim,1);self.assertEqual(sim.scheduled[ins.CLEANUP],ins.SETTLE)
                self.advance(sim)
                self.assertEqual(sim.scores['tki_stage'],2)
                self.assertEqual(sim.scores['tki_ready'],0)
                self.assertEqual(len(sim.loads),80)
                self.assertEqual(sim.scheduled[ins.CLEANUP],ins.TIMEOUT)
                self.ready(sim);sim.call(ins.CLEANUP)
                self.assertEqual(sim.scores['tki_active'],0)
                self.assertFalse(sim.ticking);self.assertFalse(sim.anchors);self.assertFalse(sim.loaded)
                self.assertFalse(sim.scheduled);self.assertNotIn(ins.OWNER,sim.player['tags'])
                self.assertEqual(sim.peak_areas,9)
                self.assertEqual(len({name for name,_,_ in sim.loads}),80)
                self.assertTrue(all(pos==(12.5,70,90.5) and angle==yaw%360 for _,pos,angle in sim.loads))

    def test_reentry_cannot_reset_the_saved_origin_or_active_stage(self):
        sim=self.start();self.ready(sim,3)
        before=copy.deepcopy((sim.scores,sim.ticking,sim.anchors,sim.loads,sim.scheduled))
        sim.player['position']=(800.5,64,800.5);sim.player['yaw']=90
        sim.call(ins.PUBLIC)
        self.assertEqual(before,(sim.scores,sim.ticking,sim.anchors,sim.loads,sim.scheduled))
        self.assertTrue(any('already installing' in text for text in sim.messages))

    def test_classic_flat_ground_places_both_stages_above_world_floor(self):
        sim=Simulator(self.texts)
        sim.player['position']=(.5,-60,.5)
        sim.call(ins.PUBLIC)
        sim.call(ins.CLEANUP)
        self.ready(sim);self.advance(sim)
        self.ready(sim);sim.call(ins.CLEANUP)
        self.assertEqual(len(sim.loads),80)
        self.assertEqual(sim.scores['tki_active'],0)

    def test_fixed_revision_recovers_an_old_failed_busy_installation(self):
        sim=Simulator(self.texts)
        sim.scores.update(tki_active=1,tki_stage=1,tki_ready=8)
        sim.call(ins.PUBLIC)
        self.assertEqual(len(sim.loads),0)
        self.assertEqual(sim.scheduled[ins.CLEANUP],ins.RELEASE_TICKS)
        sim.call(ins.CLEANUP)
        self.assertEqual(len(sim.loads),40)
        self.assertEqual(sim.scores['tki_revision'],ins.INSTALLER_REVISION)
        self.assertFalse(any('already installing' in text for text in sim.messages))
        sim.call(ins.PUBLIC)
        self.assertEqual(len(sim.loads),40)
        self.assertTrue(any('already installing' in text for text in sim.messages))

    def test_missing_score_cannot_satisfy_an_unless_condition(self):
        sim=Simulator(self.texts)
        context=dict(entity=sim.player,position=sim.player['position'],yaw=0)
        sim.command(f'execute unless score tki_revision {ins.OBJECTIVE} matches 31 run scoreboard players set tki_active {ins.OBJECTIVE} 0',context)
        self.assertNotIn('tki_active',sim.scores)

    def test_partial_readiness_aborts_instead_of_placing_the_next_stage(self):
        sim=self.start();self.ready(sim,7);sim.call(ins.CLEANUP)
        self.assertEqual(len(sim.loads),40)
        self.assertEqual(sim.scores['tki_active'],0)
        self.assertFalse(sim.anchors);self.assertFalse(sim.ticking)
        self.assertTrue(any('installation stopped' in text for text in sim.messages))

    def test_missing_area_slot_times_out_and_cleans_up(self):
        sim=self.start(slots=8)
        self.assertEqual(len(sim.loaded),7)
        self.ready(sim,7);sim.call(ins.CLEANUP)
        self.assertEqual(len(sim.loads),40)
        self.assertFalse(sim.ticking);self.assertFalse(sim.anchors)
        self.assertEqual(sim.scores['tki_active'],0)

    def test_missing_anchor_cannot_place_stage_two_at_world_origin(self):
        sim=self.start();self.ready(sim);sim.anchors.clear();sim.call(ins.CLEANUP)
        self.assertEqual(len(sim.loads),40)
        self.assertFalse(sim.ticking)
        self.assertEqual(sim.scores['tki_active'],0)

    def test_old_generation_cannot_supply_a_wrong_origin(self):
        sim=self.start()
        old=copy.deepcopy(sim.anchors[0]);old.update(position=(0,0,0),score=-1)
        sim.anchors.append(old)
        self.ready(sim);self.advance(sim)
        self.assertEqual(len(sim.loads),80)
        self.assertTrue(all(pos==(12.5,70,90.5) for _,pos,_ in sim.loads))

    def test_failure_in_stage_two_is_not_reported_as_completion(self):
        sim=self.start();self.ready(sim);self.advance(sim)
        self.ready(sim,6);sim.call(ins.CLEANUP)
        self.assertFalse(sim.ticking);self.assertFalse(sim.anchors)
        self.assertFalse(any('is complete.' in text for text in sim.messages))

    def test_console_context_cannot_start_a_build_at_server_origin(self):
        sim=Simulator(self.texts);sim.call(ins.PUBLIC,player_context=False)
        self.assertFalse(sim.loads);self.assertFalse(sim.anchors);self.assertFalse(sim.ticking)

    def test_area_reuse_in_one_function_loses_the_replacement(self):
        sim=Simulator(self.texts)
        sim.ticking['probe']=((0,0,0),(15,0,15))
        sim.texts['_reuse.mcfunction']='tickingarea remove probe\ntickingarea add circle 0 0 0 1 probe true'
        sim.call('_reuse')
        self.assertNotIn('probe',sim.ticking)

    def test_rejects_the_reported_hash_score_syntax_in_all_holder_positions(self):
        for command in (
            f'execute if score #active {ins.OBJECTIVE} matches 1 run say broken',
            f'execute unless score #next {ins.OBJECTIVE} matches 2 run say broken',
            f'execute as {ins.ANCHOR} if score @s {ins.OBJECTIVE} = #generation {ins.OBJECTIVE} run say broken',
        ):
            with self.subTest(command=command),self.assertRaisesRegex(AssertionError,'unsafe score holder'):
                Simulator({'_regression.mcfunction':command})

    def test_rejects_bad_syntax_even_in_an_unselected_nested_branch(self):
        command=f'execute if entity @s[tag=never_selected] run execute if score #ready {ins.OBJECTIVE} matches 8 run say broken'
        with self.assertRaisesRegex(AssertionError,'unsafe score holder'):
            Simulator({'_regression.mcfunction':command})


if __name__=='__main__':unittest.main()
