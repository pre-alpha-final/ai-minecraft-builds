# SKYLINE CYCLONE ROLLER COASTER - Minecraft Bedrock structure loader
# Run as a player at ground level while facing north, south, east, or west and looking horizontally.
# Stand at the front-center of a clear site; the nearest block is 24 blocks ahead.
# Size: 151 blocks wide, 119 deep, and 80 high; relative bounds are ^-75 ^-1 ^24 through ^75 ^78 ^142.
# Origin: offset observation point outside the front-center; provide at least 151 x 119 x 80 blocks of clearance.
# Functional ride: 590 connected rails (578 powered rails and 12 curves); place a minecart on the station track.
# Six sparse native structures preserve 49,914 occupied voxels and do not clear omitted cells.
# Best tested exact gap-preserving cuboid compression: 26,631 commands (above Bedrock's 10,000 limit).
# Wrapper: 39 commands; complete loader including callbacks: 41 commands.
# WARNING: This build overwrites a large plaza and support volume. Use a disposable world or make a backup first.
# A temporary ticking area preloads at most 99 chunks and is removed automatically after placement.
# A world can contain only 10 command-created ticking areas; free one before running if all slots are occupied.
# Do not invoke this loader concurrently at different locations; it reuses the static name skyline_cyclone.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === PRELOAD THE COMPLETE 151 x 119 FOOTPRINT ===
execute as @s at @s rotated as @s run schedule on_area_loaded clear function _theme_park_skyline_cyclone_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run tickingarea remove skyline_cyclone
execute as @s at @s rotated as @s run tickingarea add ^-75 ^0 ^24 ^75 ^0 ^142 skyline_cyclone true
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea skyline_cyclone _theme_park_skyline_cyclone_roller_coaster_tickingarea_loaded

# === FACING SOUTH (+Z): 0 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z1 ^-75 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z1 ^-11 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z1 ^53 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z2 ^-75 ^-1 ^88 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z2 ^-11 ^-1 ^88 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z2 ^53 ^-1 ^88 0_degrees none

# === FACING WEST (-X): 90 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z1 ^-75 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z1 ^-11 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z1 ^53 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z2 ^-75 ^-1 ^142 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z2 ^-11 ^-1 ^142 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z2 ^53 ^-1 ^142 90_degrees none

# === FACING NORTH (-Z): 180 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z1 ^-12 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z1 ^52 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z1 ^75 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z2 ^-12 ^-1 ^142 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z2 ^52 ^-1 ^142 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z2 ^75 ^-1 ^142 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z1 ^-12 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z1 ^52 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z1 ^75 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z2 ^-12 ^-1 ^142 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z2 ^52 ^-1 ^142 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z2 ^75 ^-1 ^142 180_degrees none

# === FACING EAST (+X): 270 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z1 ^-12 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z1 ^52 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z1 ^75 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x1_z2 ^-12 ^-1 ^88 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x2_z2 ^52 ^-1 ^88 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_cyclone_roller_coaster_x3_z2 ^75 ^-1 ^88 270_degrees none
