# PINK PLUSH BIRD - Minecraft Bedrock Edition 1.21.50+ / static imported sculpture
# Run /function 20_pink_plush_bird ONCE as a player in the Overworld.
# Stand at ground level, face a cardinal direction and look horizontally; facing snaps automatically.
# Front-center observation origin; source +Z face points toward player without mirroring. Nearest blocks 32 ahead.
# Width 250, depth 178, height 359. Bounds ^-124 ^2 ^32 through ^125 ^360 ^209.
# Supported ground-level feet Y -63 through -42, including Classic Flat Y -60 (build Y -58 through 300).
# Soft fleece surface, clean pastel wool, bright eye catchlights and hidden fill lighting; interior unfilled.
# Source glb/pink_plush_bird.glb: GLB 2 little-endian, 3,275,283 vertices, 5,948,432 TRIANGLES, 68 meshes, 10 materials.
# Source SHA256 1991496cbcd404cae047f5380369e548d5d0ee785bf0b8048d5cfd211de0e22e; all node transforms applied; no geometry excluded.
# Uniform scale 1263.568526177 blocks/source unit; caret X/Z inverted, Y vertical.
# 371,768 visible blocks; 18,806 invisible lights; no explicit air placement.
# 24 sparse structures. 4 free ticking-area slots including saved origin; plot areas <= 85 chunks each.
# Saved marker retains position/facing if you move; keep its ground intact and the world running.
# Startup release 2 ticks; all plot and origin areas must be ready; settle 600 ticks; watchdog 3600 ticks.
# Completion checks three blocks per asset; sample verification, not a full engine voxel comparison.
# WARNING: replaces existing blocks on the sculpture surface. Back up first or use a disposable world.
# Import and activate pack 1.0.35, close/reopen world. Rebuild/reimport after packaged source changes.
# Generator tools/generate_pink_plush_bird.py. 40 public commands including snaps; 235 callback commands.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === VALIDATE PLACEMENT AND PRESERVE ACTIVE INSTALLATION ===
execute as @s at @s rotated as @s run scoreboard objectives add ppb_install dummy
execute as @s at @s rotated as @s run scoreboard players add ppb_active ppb_install 0
execute as @s at @s rotated as @s run tag @s remove ppb_allowed
execute as @s at @s rotated as @s run tag @s add ppb_candidate
execute as @s at @s rotated as @s run execute in overworld as @e[type=minecraft:player,tag=ppb_candidate] run tag @s add ppb_allowed
execute as @s at @s rotated as @s run tag @s remove ppb_candidate
execute as @s at @s rotated as @s run execute unless entity @s[y=-63,dy=21] run tag @s remove ppb_allowed
execute as @s at @s rotated as @s run execute unless entity @s[type=minecraft:player] run tag @s remove ppb_allowed
execute as @s at @s rotated as @s run execute unless entity @s[tag=ppb_allowed] run tellraw @s {"rawtext":[{"text":"Pink plush bird needs an Overworld player at feet Y -63 through -42. Classic Flat ground works."}]}
execute as @s at @s rotated as @s run execute if score ppb_active ppb_install matches 1 run tellraw @s {"rawtext":[{"text":"Pink plush bird is already installing. Wait for completion or timeout."}]}
execute as @s at @s rotated as @s run tag @s remove ppb_start
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_allowed] if score ppb_active ppb_install matches 0 run tag @s add ppb_start
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run schedule on_area_loaded clear function _pink_plush_bird_tickingarea_loaded
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run schedule delay clear _pink_plush_bird_remove_tickingarea
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run execute in overworld run tickingarea remove ppb_origin
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run execute in overworld run tickingarea remove ppb_plot_1
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run execute in overworld run tickingarea remove ppb_plot_2
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run execute in overworld run tickingarea remove ppb_plot_3
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run execute in overworld run kill @e[type=minecraft:armor_stand,tag=ppb_origin]
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run tag @a[tag=ppb_builder] remove ppb_builder
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run tag @s add ppb_builder
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run scoreboard players add ppb_generation ppb_install 1
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run summon minecraft:armor_stand "ppb_anchor" ^0 ^0 ^0
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run tag @e[type=minecraft:armor_stand,name=ppb_anchor,r=2,c=1] add ppb_origin
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run scoreboard players operation @e[type=minecraft:armor_stand,tag=ppb_origin] ppb_install = ppb_generation ppb_install
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run tp @e[type=minecraft:armor_stand,tag=ppb_origin] ^0 ^0 ^0 ~ 0
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run effect @e[type=minecraft:armor_stand,tag=ppb_origin] invisibility 1000000 0 true
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run effect @e[type=minecraft:armor_stand,tag=ppb_origin] resistance 1000000 255 true
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run scoreboard players set ppb_stage ppb_install 0
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run scoreboard players set ppb_ready ppb_install 0
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run scoreboard players set ppb_active ppb_install 1
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run schedule delay add _pink_plush_bird_remove_tickingarea 2 replace
execute as @s at @s rotated as @s run execute if entity @s[tag=ppb_start] run tellraw @s {"rawtext":[{"text":"Pink plush bird: preparing sculpture. Keep 4 ticking-area slots free."}]}
execute as @s at @s rotated as @s run tag @s remove ppb_start
execute as @s at @s rotated as @s run tag @s remove ppb_allowed
