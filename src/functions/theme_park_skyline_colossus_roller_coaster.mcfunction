# SKYLINE COLOSSUS ROLLER COASTER - Minecraft Bedrock structure loader
# Run as a player at ground level while facing north, south, east, or west and looking horizontally.
# Stand at the front-center of a clear site; the nearest block is 48 blocks ahead.
# Size: 302 blocks wide, 238 deep, and 160 high; relative bounds are ^-150 ^-1 ^48 through ^151 ^158 ^285.
# Origin: offset observation point outside the front-center; provide at least 302 x 238 x 160 blocks of clearance.
# Functional double-scale ride: 1,180 connected rails (1,168 powered rails and 12 curves); place a minecart on the station track.
# Twenty sparse native structures preserve 402,397 occupied voxels and do not clear omitted cells.
# Best tested exact gap-preserving cuboid compression: 34,306 commands (above Bedrock's 10,000 limit).
# Wrapper: 118 commands; complete loader including callbacks: 123 commands.
# WARNING: This build overwrites an enormous plaza and support volume. Use a disposable world or make a backup first.
# Four temporary ticking areas preload at most 99 chunks each and are removed automatically after placement.
# This loader temporarily uses four of the world's 10 command-created ticking-area slots.
# Do not invoke this loader concurrently at different locations; it reuses four static skyline_colossus names.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === PRELOAD THE COMPLETE 302 x 238 FOOTPRINT IN FOUR SAFE QUADRANTS ===
execute as @s at @s rotated as @s run schedule on_area_loaded clear function _theme_park_skyline_colossus_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run tickingarea remove skyline_colossus_nw
execute as @s at @s rotated as @s run tickingarea remove skyline_colossus_ne
execute as @s at @s rotated as @s run tickingarea remove skyline_colossus_sw
execute as @s at @s rotated as @s run tickingarea remove skyline_colossus_se
execute as @s at @s rotated as @s run tickingarea add ^-150 ^0 ^48 ^0 ^0 ^166 skyline_colossus_nw true
execute as @s at @s rotated as @s run tickingarea add ^1 ^0 ^48 ^151 ^0 ^166 skyline_colossus_ne true
execute as @s at @s rotated as @s run tickingarea add ^-150 ^0 ^167 ^0 ^0 ^285 skyline_colossus_sw true
execute as @s at @s rotated as @s run tickingarea add ^1 ^0 ^167 ^151 ^0 ^285 skyline_colossus_se true
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea skyline_colossus_nw _theme_park_skyline_colossus_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea skyline_colossus_ne _theme_park_skyline_colossus_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea skyline_colossus_sw _theme_park_skyline_colossus_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea skyline_colossus_se _theme_park_skyline_colossus_roller_coaster_tickingarea_loaded

# === FACING SOUTH (+Z): 0 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z1 ^-150 ^-1 ^48 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z1 ^-86 ^-1 ^48 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z1 ^-22 ^-1 ^48 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z1 ^42 ^-1 ^48 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z1 ^106 ^-1 ^48 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z2 ^-150 ^-1 ^112 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z2 ^-86 ^-1 ^112 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z2 ^-22 ^-1 ^112 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z2 ^42 ^-1 ^112 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z2 ^106 ^-1 ^112 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z3 ^-150 ^-1 ^176 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z3 ^-86 ^-1 ^176 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z3 ^-22 ^-1 ^176 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z3 ^42 ^-1 ^176 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z3 ^106 ^-1 ^176 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z4 ^-150 ^-1 ^240 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z4 ^-86 ^-1 ^240 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z4 ^-22 ^-1 ^240 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z4 ^42 ^-1 ^240 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z4 ^106 ^-1 ^240 0_degrees none

# === FACING WEST (-X): 90 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z1 ^-150 ^-1 ^111 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z1 ^-86 ^-1 ^111 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z1 ^-22 ^-1 ^111 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z1 ^42 ^-1 ^111 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z1 ^106 ^-1 ^111 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z2 ^-150 ^-1 ^175 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z2 ^-86 ^-1 ^175 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z2 ^-22 ^-1 ^175 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z2 ^42 ^-1 ^175 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z2 ^106 ^-1 ^175 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z3 ^-150 ^-1 ^239 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z3 ^-86 ^-1 ^239 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z3 ^-22 ^-1 ^239 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z3 ^42 ^-1 ^239 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z3 ^106 ^-1 ^239 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z4 ^-150 ^-1 ^285 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z4 ^-86 ^-1 ^285 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z4 ^-22 ^-1 ^285 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z4 ^42 ^-1 ^285 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z4 ^106 ^-1 ^285 90_degrees none

# === FACING NORTH (-Z): 180 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z1 ^-87 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z1 ^-23 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z1 ^41 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z1 ^105 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z1 ^151 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z2 ^-87 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z2 ^-23 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z2 ^41 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z2 ^105 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z2 ^151 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z3 ^-87 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z3 ^-23 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z3 ^41 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z3 ^105 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z3 ^151 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z4 ^-87 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z4 ^-23 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z4 ^41 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z4 ^105 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z4 ^151 ^-1 ^285 180_degrees none

# === FACING NORTH (-Z): NEGATIVE-YAW SELECTOR ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z1 ^-87 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z1 ^-23 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z1 ^41 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z1 ^105 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z1 ^151 ^-1 ^111 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z2 ^-87 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z2 ^-23 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z2 ^41 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z2 ^105 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z2 ^151 ^-1 ^175 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z3 ^-87 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z3 ^-23 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z3 ^41 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z3 ^105 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z3 ^151 ^-1 ^239 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z4 ^-87 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z4 ^-23 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z4 ^41 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z4 ^105 ^-1 ^285 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z4 ^151 ^-1 ^285 180_degrees none

# === FACING EAST (+X): 270 DEGREES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z1 ^-87 ^-1 ^48 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z1 ^-23 ^-1 ^48 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z1 ^41 ^-1 ^48 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z1 ^105 ^-1 ^48 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z1 ^151 ^-1 ^48 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z2 ^-87 ^-1 ^112 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z2 ^-23 ^-1 ^112 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z2 ^41 ^-1 ^112 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z2 ^105 ^-1 ^112 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z2 ^151 ^-1 ^112 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z3 ^-87 ^-1 ^176 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z3 ^-23 ^-1 ^176 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z3 ^41 ^-1 ^176 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z3 ^105 ^-1 ^176 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z3 ^151 ^-1 ^176 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x1_z4 ^-87 ^-1 ^240 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x2_z4 ^-23 ^-1 ^240 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x3_z4 ^41 ^-1 ^240 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x4_z4 ^105 ^-1 ^240 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_skyline_colossus_roller_coaster_x5_z4 ^151 ^-1 ^240 270_degrees none
