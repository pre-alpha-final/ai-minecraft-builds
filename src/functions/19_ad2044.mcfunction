# A.D. 2044 GAME BOX - Minecraft Bedrock Edition 1.21.50+ / static textured sculpture
# Run /function 19_ad2044 ONCE as a player in the Overworld.
# Stand at ground level, face a cardinal direction and look horizontally; facing is snapped automatically.
# Front-center observation origin, nearest blocks 32 ahead; front artwork faces the player without mirroring.
# Width 295, depth 87, height 360. Bounds ^-147 ^1 ^32 through ^147 ^360 ^118.
# Supported ground-level feet Y -63 through -42, including Classic Flat Y -60 (build Y -59 through 300).
# Lowest surface is one block above feet; hollow interior and exterior voids are left untouched.
# Source glb/ad2044.glb: GLB 2 little-endian, 10,062 vertices, 19,136 TRIANGLES, one 4096x4096 RGB texture.
# Source SHA256 930938be5e72610bb3f1c24151aaa6dd7ea2a05dab31d000e1d1406099159c37; identity node transform; no excluded geometry.
# Uniform scale 1380.769281416 blocks/source unit; Y vertical, X/Z inverted to present +Z front.
# 321,519 occupied surface blocks, 39 vanilla colors; nearest CIELAB official texture means, no dithering.
# 20 sparse structures, split in X/Y/Z; no filled interior, texture wear and edge damage retained.
# Three free ticking-area slots required: two plot areas (77 chunks maximum each) plus one saved-origin area.
# Saved marker preserves position and facing if you move. Keep its ground intact and the world running.
# Startup waits two ticks after stale-area removal. Both plot areas must load; settle delay 600 ticks, watchdog 3600 ticks.
# Completion audits three block samples per asset; this is sample verification, not a full engine voxel comparison.
# WARNING: replaces existing blocks on the sculpture surface. Back up first or use a disposable world.
# Import/activate pack 1.0.32, close/reopen the world. Rebuild and reimport after source changes.
# Generator tools/generate_ad2044.py. 39 public commands including snaps; 198 callback commands.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === VALIDATE PLAYER, DIMENSION AND HEIGHT; PRESERVE AN ACTIVE INSTALLATION ===
execute as @s at @s rotated as @s run scoreboard objectives add ad2044_install dummy
execute as @s at @s rotated as @s run scoreboard players add ad_active ad2044_install 0
execute as @s at @s rotated as @s run tag @s remove ad2044_allowed
execute as @s at @s rotated as @s run tag @s add ad2044_candidate
execute as @s at @s rotated as @s run execute in overworld as @e[type=minecraft:player,tag=ad2044_candidate] run tag @s add ad2044_allowed
execute as @s at @s rotated as @s run tag @s remove ad2044_candidate
execute as @s at @s rotated as @s run execute unless entity @s[y=-63,dy=21] run tag @s remove ad2044_allowed
execute as @s at @s rotated as @s run execute unless entity @s[type=minecraft:player] run tag @s remove ad2044_allowed
execute as @s at @s rotated as @s run execute unless entity @s[tag=ad2044_allowed] run tellraw @s {"rawtext":[{"text":"A.D. 2044 needs an Overworld player standing at feet Y -63 through -42. Classic Flat ground is suitable."}]}
execute as @s at @s rotated as @s run execute if score ad_active ad2044_install matches 1 run tellraw @s {"rawtext":[{"text":"A.D. 2044 is already installing. Wait for completion or timeout."}]}
execute as @s at @s rotated as @s run tag @s remove ad2044_start
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_allowed] if score ad_active ad2044_install matches 0 run tag @s add ad2044_start
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run schedule on_area_loaded clear function _ad2044_tickingarea_loaded
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run schedule delay clear _ad2044_remove_tickingarea
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run execute in overworld run tickingarea remove ad2044_origin
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run execute in overworld run tickingarea remove ad2044_plot_1
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run execute in overworld run tickingarea remove ad2044_plot_2
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run execute in overworld run kill @e[type=minecraft:armor_stand,tag=ad2044_origin]
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run tag @a[tag=ad2044_builder] remove ad2044_builder
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run tag @s add ad2044_builder
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run scoreboard players add ad_generation ad2044_install 1
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run summon minecraft:armor_stand "ad2044_anchor" ^0 ^0 ^0
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run tag @e[type=minecraft:armor_stand,name=ad2044_anchor,r=2,c=1] add ad2044_origin
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run scoreboard players operation @e[type=minecraft:armor_stand,tag=ad2044_origin] ad2044_install = ad_generation ad2044_install
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run tp @e[type=minecraft:armor_stand,tag=ad2044_origin] ^0 ^0 ^0 ~ 0
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run effect @e[type=minecraft:armor_stand,tag=ad2044_origin] invisibility 1000000 0 true
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run effect @e[type=minecraft:armor_stand,tag=ad2044_origin] resistance 1000000 255 true
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run scoreboard players set ad_stage ad2044_install 0
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run scoreboard players set ad_ready ad2044_install 0
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run scoreboard players set ad_active ad2044_install 1
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run schedule delay add _ad2044_remove_tickingarea 2 replace
execute as @s at @s rotated as @s run execute if entity @s[tag=ad2044_start] run tellraw @s {"rawtext":[{"text":"A.D. 2044: preparing the sculpture. Three free ticking-area slots are required."}]}
execute as @s at @s rotated as @s run tag @s remove ad2044_start
execute as @s at @s rotated as @s run tag @s remove ad2044_allowed
