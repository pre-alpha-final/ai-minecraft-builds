# GLACIER RUN ALPINE PARK - Minecraft Bedrock Edition 1.21.50+
# Run /function 22_theme_park_glacier_run_alpine_park once as a player in the Overworld.
# Stand at ground level at the front-center approach, face a cardinal direction and look horizontally.
# Bounds ^-112 ^-2 ^24 through ^111 ^88 ^215. Nearest blocks start 24 ahead.
# Supported feet Y -62 through 231, including Classic Flat Y -60.
# Rideable powered minecart circuit and blue-ice boat loop. Supply your own plain minecart and boat.
# Static alpine village, glacier and summit observatory. The low glacier cave is a walk-through.
# 606,593 non-air blocks, 12 structures. 40 public commands, 123 callback commands.
# Keep 4 ticking-area slots free. Keep the world running and leave the starting ground intact until completion.
# Use a disposable world or back up first. The park replaces surface blocks and clears ride and guest corridors.
# Import and activate pack 1.0.42, then close/reopen the world. Generator tools/generate_glacier_run.py.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# Validate world and height, then save the snapped context.
execute as @s at @s rotated as @s run scoreboard objectives add gr_install dummy
execute as @s at @s rotated as @s run scoreboard players add gr_phase gr_install 0
execute as @s at @s rotated as @s run tag @s remove gr_allowed
execute as @s at @s rotated as @s run tag @s add gr_candidate
execute as @s at @s rotated as @s run execute in overworld as @e[type=minecraft:player,tag=gr_candidate] run tag @s add gr_allowed
execute as @s at @s rotated as @s run tag @s remove gr_candidate
# Intersect vertical distances at the same X/Z to check feet, including the lower bound.
execute as @s at @s rotated as @s run execute positioned ~ -62 ~ if entity @s[rm=294] run tag @s remove gr_allowed
execute as @s at @s rotated as @s run execute positioned ~ 232 ~ unless entity @s[r=294] run tag @s remove gr_allowed
execute as @s at @s rotated as @s run execute unless entity @s[type=minecraft:player] run tag @s remove gr_allowed
execute as @s at @s rotated as @s run execute unless entity @s[tag=gr_allowed] run tellraw @s {"rawtext":[{"text":"Glacier Run needs an Overworld player at feet Y -62 through 231."}]}
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_allowed] if score gr_phase gr_install matches 1..3 run tellraw @s {"rawtext":[{"text":"Glacier Run is already installing."}]}
execute as @s at @s rotated as @s run tag @s remove gr_start
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_allowed] if score gr_phase gr_install matches 0 run tag @s add gr_start
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run schedule on_area_loaded clear function _theme_park_glacier_run_alpine_park_tickingarea_loaded
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run schedule delay clear _theme_park_glacier_run_alpine_park_remove_tickingarea
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run execute in overworld run tickingarea remove glacier_run_origin
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run execute in overworld run tickingarea remove glacier_run_plot_1
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run execute in overworld run tickingarea remove glacier_run_plot_2
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run execute in overworld run tickingarea remove glacier_run_plot_3
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run execute in overworld run kill @e[type=minecraft:armor_stand,tag=gr_origin]
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run tag @a[tag=gr_builder] remove gr_builder
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run tag @s add gr_builder
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run scoreboard players add gr_generation gr_install 1
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run summon minecraft:armor_stand "gr_saved_origin" ^0 ^0 ^0
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run tag @e[type=minecraft:armor_stand,name=gr_saved_origin,r=2,c=1] add gr_origin
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run scoreboard players operation @e[type=minecraft:armor_stand,tag=gr_origin] gr_install = gr_generation gr_install
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run tp @e[type=minecraft:armor_stand,tag=gr_origin] ^0 ^0 ^0 ~ 0
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run effect @e[type=minecraft:armor_stand,tag=gr_origin] invisibility 1000000 0 true
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run effect @e[type=minecraft:armor_stand,tag=gr_origin] resistance 1000000 255 true
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run scoreboard players set gr_phase gr_install 1
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run scoreboard players set gr_ready gr_install 0
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run schedule delay add _theme_park_glacier_run_alpine_park_remove_tickingarea 2 replace
execute as @s at @s rotated as @s run execute if entity @s[tag=gr_start] run tellraw @s {"rawtext":[{"text":"Glacier Run is preparing its plot. Keep 4 ticking-area slots free."}]}
execute as @s at @s rotated as @s run tag @s remove gr_start
execute as @s at @s rotated as @s run tag @s remove gr_allowed
