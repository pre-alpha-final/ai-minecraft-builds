# TIDAL KINGDOM - Minecraft Bedrock Edition 1.21.50+ / automatic staged installer
# Run /function 18_theme_park_tidal_kingdom ONCE as a player at ground level, facing a cardinal direction with a horizontal view.
# Front-center observation origin; nearest build block is 32 ahead. Use a clear flat Overworld site.
# Bounds ^-319 ^-4 ^32 through ^320 ^114 ^481; envelope 640 x 450 x 119.
# Feet Y -60 through 205; foundation/basins reach four blocks below your feet.
# Park deck is raised one block so the entire native structure fits above Y -64 on default Classic Flat ground.
# Plot area 288,000 blocks = 2.00028x Infernal Rift area. Exactly one coaster, four slides and full water-park scenery.
# A temporary persistent armor stand retains the centered origin and cardinal yaw; its original ground must remain intact.
# You may move or turn after starting; keep the world running and do not disturb the temporary anchor.
# Two stages advance automatically after ALL eight areas load, then settle for 600 game ticks (30 seconds at 20 TPS).
# NINE free ticking-area slots are needed: eight plot rectangles (at most 88 chunks each) and one origin area.
# Each stage has a 3600-tick loading watchdog. Missing readiness/anchor aborts and removes our temporary state.
# Repeated calls during installation report busy without restarting, replacing the origin, or removing active areas.
# 1,208,281 non-air blocks + 2,560,217 explicit air cells, 80 native assets / 40 per stage.
# Tidebreaker: 1,632 rails, 14 curves, six major climbs and four major drops.
# Board beside ^194 ^9 ^406 and push toward +local left; water, aquarium fish, sails and scenery have no scripted animation.
# Exactly three lifecycle functions; delayed placement restores the saved anchor context for both stages.
# Area removals settle for two ticks before either stage recreates its preload areas.
# WARNING: overwrites a huge volume. Back up or use a disposable world. In-game verification remains outstanding.
# Rebuild/reimport after source changes. Generator: tools/generate_tidal_kingdom.py.
# Public 41 executable lines including five snaps; callback total 494.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === GUARD AGAINST A SECOND INSTALLATION ===
execute as @s at @s rotated as @s run scoreboard objectives add tk19_install dummy
execute as @s at @s rotated as @s run scoreboard players add tki_revision tk19_install 0
execute as @s at @s rotated as @s run execute unless score tki_revision tk19_install matches 31 run scoreboard players set tki_active tk19_install 0
execute as @s at @s rotated as @s run scoreboard players set tki_revision tk19_install 31
execute as @s at @s rotated as @s run tag @s remove tk19_busy
execute as @s at @s rotated as @s run execute if score tki_active tk19_install matches 1 run tag @s add tk19_busy
execute as @s at @s rotated as @s run execute if entity @s[tag=tk19_busy] run tellraw @s {"rawtext":[{"text":"Tidal Kingdom is already installing. Wait for its completion or timeout message."}]}

# === SAVE ORIGIN AND START STAGE ONE ===
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run schedule on_area_loaded clear function _theme_park_tidal_kingdom_tickingarea_loaded
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run schedule delay clear _theme_park_tidal_kingdom_remove_tickingarea
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_1
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_2
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_3
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_4
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_5
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_6
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_7
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_8
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tickingarea remove tidal_kingdom_origin
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run execute in overworld run kill @e[type=minecraft:armor_stand,tag=tk19_origin]
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tag @a[tag=tk19_builder] remove tk19_builder
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tag @s add tk19_builder
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tag @s remove tidal_kingdom_next_half
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tag @s remove tidal_kingdom_this_half
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run scoreboard players add tki_generation tk19_install 1
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run summon minecraft:armor_stand "tk31_origin_anchor" ^0 ^0 ^0
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tag @e[type=minecraft:armor_stand,name=tk31_origin_anchor,r=2,c=1] add tk19_origin
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run scoreboard players operation @e[type=minecraft:armor_stand,tag=tk19_origin] tk19_install = tki_generation tk19_install
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tp @e[type=minecraft:armor_stand,tag=tk19_origin] ^0 ^0 ^0 ~ 0
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run effect @e[type=minecraft:armor_stand,tag=tk19_origin] invisibility 1000000 0 true
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run effect @e[type=minecraft:armor_stand,tag=tk19_origin] resistance 1000000 255 true
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run scoreboard players set tki_active tk19_install 1
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run scoreboard players set tki_stage tk19_install 0
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run scoreboard players set tki_ready tk19_install 0
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run schedule delay add _theme_park_tidal_kingdom_remove_tickingarea 2 replace
execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] unless entity @s[tag=tk19_busy] run tellraw @s {"rawtext":[{"text":"Tidal Kingdom: preparing stage 1/2. Both stages and cleanup are automatic; nine free ticking-area slots are required."}]}
execute as @s at @s rotated as @s run tag @s remove tk19_busy
