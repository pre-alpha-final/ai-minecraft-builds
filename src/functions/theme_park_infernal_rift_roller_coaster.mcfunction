# INFERNAL RIFT ROLLER COASTER - Minecraft Bedrock structure loader
# Run as a player at ground level while facing north, south, east, or west and looking horizontally.
# Stand at the front-center of a clear site; the nearest block is 48 blocks ahead.
# Size: 460 blocks wide, 313 deep, and 256 high; relative bounds are ^-229 ^-1 ^48 through ^230 ^254 ^360.
# Origin: offset observation point outside the front-center; provide at least 460 x 313 x 256 blocks of clearance.
# Exact twice-Jungle ride: 4,640 connected rails (4,614 powered rails and 26 curves), exactly 2.000x Jungle Leviathan's 2,320 rails.
# Exact twice-Jungle volume: 1,116,768 occupied voxels, exactly 2.000x Jungle Leviathan's 558,384 voxels.
# Distinct Nether layout: multi-level concentric rift spiral, bastion station, lava sea, portal cathedral, wither gate, and basalt spires.
# Forty sparse native structures preserve every occupied voxel and do not clear omitted cells.
# Best tested exact gap-preserving cuboid compression: 80,481 commands (above Bedrock's 10,000 limit).
# Wrapper: 225 commands; complete loader including callbacks: 234 commands.
# Functional ride: place a minecart on the station track. Lava and scenery are static; the track itself is rideable.
# WARNING: This build overwrites an enormous Nether-themed volume. Use a disposable world or make a backup first.
# Eight temporary ticking areas preload at most 99 chunks each and are removed automatically after placement.
# This loader temporarily uses eight of the world's 10 command-created ticking-area slots.
# Do not invoke this loader concurrently at different locations; it reuses eight static infernal_rift names.

# === PRELOAD THE COMPLETE 460 x 313 FOOTPRINT IN EIGHT SAFE RECTANGLES ===
schedule on_area_loaded clear function _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
tickingarea remove infernal_rift_11
tickingarea remove infernal_rift_12
tickingarea remove infernal_rift_13
tickingarea remove infernal_rift_14
tickingarea remove infernal_rift_21
tickingarea remove infernal_rift_22
tickingarea remove infernal_rift_23
tickingarea remove infernal_rift_24
tickingarea add ^-229 ^0 ^48 ^-115 ^0 ^204 infernal_rift_11 true
tickingarea add ^-114 ^0 ^48 ^0 ^0 ^204 infernal_rift_12 true
tickingarea add ^1 ^0 ^48 ^115 ^0 ^204 infernal_rift_13 true
tickingarea add ^116 ^0 ^48 ^230 ^0 ^204 infernal_rift_14 true
tickingarea add ^-229 ^0 ^205 ^-115 ^0 ^360 infernal_rift_21 true
tickingarea add ^-114 ^0 ^205 ^0 ^0 ^360 infernal_rift_22 true
tickingarea add ^1 ^0 ^205 ^115 ^0 ^360 infernal_rift_23 true
tickingarea add ^116 ^0 ^205 ^230 ^0 ^360 infernal_rift_24 true
schedule on_area_loaded add tickingarea infernal_rift_11 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_12 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_13 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_14 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_21 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_22 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_23 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded
schedule on_area_loaded add tickingarea infernal_rift_24 _theme_park_infernal_rift_roller_coaster_tickingarea_loaded

# === FACING SOUTH (+Z): 0 DEGREES ===
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z1 ^-229 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z1 ^-165 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z1 ^-101 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z1 ^-37 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z1 ^27 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z1 ^91 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z1 ^155 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z1 ^219 ^-1 ^48 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z2 ^-229 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z2 ^-165 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z2 ^-101 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z2 ^-37 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z2 ^27 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z2 ^91 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z2 ^155 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z2 ^219 ^-1 ^112 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z3 ^-229 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z3 ^-165 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z3 ^-101 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z3 ^-37 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z3 ^27 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z3 ^91 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z3 ^155 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z3 ^219 ^-1 ^176 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z4 ^-229 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z4 ^-165 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z4 ^-101 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z4 ^-37 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z4 ^27 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z4 ^91 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z4 ^155 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z4 ^219 ^-1 ^240 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z5 ^-229 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z5 ^-165 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z5 ^-101 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z5 ^-37 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z5 ^27 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z5 ^91 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z5 ^155 ^-1 ^304 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z5 ^219 ^-1 ^304 0_degrees none

# === FACING WEST (-X): 90 DEGREES ===
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z1 ^-229 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z1 ^-165 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z1 ^-101 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z1 ^-37 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z1 ^27 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z1 ^91 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z1 ^155 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z1 ^219 ^-1 ^111 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z2 ^-229 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z2 ^-165 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z2 ^-101 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z2 ^-37 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z2 ^27 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z2 ^91 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z2 ^155 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z2 ^219 ^-1 ^175 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z3 ^-229 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z3 ^-165 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z3 ^-101 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z3 ^-37 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z3 ^27 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z3 ^91 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z3 ^155 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z3 ^219 ^-1 ^239 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z4 ^-229 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z4 ^-165 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z4 ^-101 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z4 ^-37 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z4 ^27 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z4 ^91 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z4 ^155 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z4 ^219 ^-1 ^303 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z5 ^-229 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z5 ^-165 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z5 ^-101 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z5 ^-37 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z5 ^27 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z5 ^91 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z5 ^155 ^-1 ^360 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z5 ^219 ^-1 ^360 90_degrees none

# === FACING NORTH (-Z): 180 DEGREES ===
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z1 ^-166 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z1 ^-102 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z1 ^-38 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z1 ^26 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z1 ^90 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z1 ^154 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z1 ^218 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z1 ^230 ^-1 ^111 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z2 ^-166 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z2 ^-102 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z2 ^-38 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z2 ^26 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z2 ^90 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z2 ^154 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z2 ^218 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z2 ^230 ^-1 ^175 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z3 ^-166 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z3 ^-102 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z3 ^-38 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z3 ^26 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z3 ^90 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z3 ^154 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z3 ^218 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z3 ^230 ^-1 ^239 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z4 ^-166 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z4 ^-102 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z4 ^-38 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z4 ^26 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z4 ^90 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z4 ^154 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z4 ^218 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z4 ^230 ^-1 ^303 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z5 ^-166 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z5 ^-102 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z5 ^-38 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z5 ^26 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z5 ^90 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z5 ^154 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z5 ^218 ^-1 ^360 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z5 ^230 ^-1 ^360 180_degrees none

# === FACING NORTH (-Z): NEGATIVE-YAW SELECTOR ===
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z1 ^-166 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z1 ^-102 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z1 ^-38 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z1 ^26 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z1 ^90 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z1 ^154 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z1 ^218 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z1 ^230 ^-1 ^111 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z2 ^-166 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z2 ^-102 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z2 ^-38 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z2 ^26 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z2 ^90 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z2 ^154 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z2 ^218 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z2 ^230 ^-1 ^175 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z3 ^-166 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z3 ^-102 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z3 ^-38 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z3 ^26 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z3 ^90 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z3 ^154 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z3 ^218 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z3 ^230 ^-1 ^239 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z4 ^-166 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z4 ^-102 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z4 ^-38 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z4 ^26 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z4 ^90 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z4 ^154 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z4 ^218 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z4 ^230 ^-1 ^303 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z5 ^-166 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z5 ^-102 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z5 ^-38 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z5 ^26 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z5 ^90 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z5 ^154 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z5 ^218 ^-1 ^360 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z5 ^230 ^-1 ^360 180_degrees none

# === FACING EAST (+X): 270 DEGREES ===
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z1 ^-166 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z1 ^-102 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z1 ^-38 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z1 ^26 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z1 ^90 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z1 ^154 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z1 ^218 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z1 ^230 ^-1 ^48 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z2 ^-166 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z2 ^-102 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z2 ^-38 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z2 ^26 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z2 ^90 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z2 ^154 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z2 ^218 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z2 ^230 ^-1 ^112 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z3 ^-166 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z3 ^-102 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z3 ^-38 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z3 ^26 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z3 ^90 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z3 ^154 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z3 ^218 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z3 ^230 ^-1 ^176 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z4 ^-166 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z4 ^-102 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z4 ^-38 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z4 ^26 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z4 ^90 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z4 ^154 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z4 ^218 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z4 ^230 ^-1 ^240 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x1_z5 ^-166 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x2_z5 ^-102 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x3_z5 ^-38 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x4_z5 ^26 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x5_z5 ^90 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x6_z5 ^154 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x7_z5 ^218 ^-1 ^304 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_infernal_rift_roller_coaster_x8_z5 ^230 ^-1 ^304 270_degrees none
