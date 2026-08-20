# LARGE PS5 CONTROLLER SCULPTURE - Minecraft Bedrock structure loader
# Source: ps5.controller.ply (binary little-endian PLY; decorative background plane excluded).
# Run as a player at ground level while facing north, south, east, or west and looking horizontally.
# Size: 159 blocks wide, 109 high, and 53 deep. Centered 60 blocks ahead; nearest block is 34 blocks ahead.
# Palette: nearest-RGB black, blue, gray, light gray, lime, magenta, purple, white, and yellow concrete.
# Three sparse native structures preserve 47,181 voxels while skipping empty cells.
# Best tested exact gap-preserving cuboid compression: 15,091 commands (above Bedrock's 10,000 limit).
# Wrapper: 19 commands; complete loader including callbacks: 21 commands.
# WARNING: This is a large build. Use a disposable world or make a backup first.
# A temporary ticking area preloads at most 55 chunks and is removed automatically after placement.
# Do not invoke this loader concurrently at different locations; it reuses the static name ps5_large.

# === PRELOAD THE COMPLETE 159 x 53 FOOTPRINT ===
# Clear stale state from an interrupted earlier run, then keep the target chunks loaded.
schedule on_area_loaded clear function _ps5_controller_large_tickingarea_loaded
tickingarea remove ps5_large
tickingarea add ^-79 ^0 ^34 ^79 ^0 ^86 ps5_large true
schedule on_area_loaded add tickingarea ps5_large _ps5_controller_large_tickingarea_loaded

# === FACING SOUTH (+Z): 0 DEGREES ===
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:ps5_controller_large_1 ^-79 ^1 ^34 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:ps5_controller_large_2 ^-15 ^1 ^34 0_degrees none
execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:ps5_controller_large_3 ^49 ^1 ^34 0_degrees none

# === FACING WEST (-X): 90 DEGREES ===
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:ps5_controller_large_1 ^-79 ^1 ^86 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:ps5_controller_large_2 ^-15 ^1 ^86 90_degrees none
execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:ps5_controller_large_3 ^49 ^1 ^86 90_degrees none

# === FACING NORTH (-Z): 180 DEGREES ===
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:ps5_controller_large_1 ^-16 ^1 ^86 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:ps5_controller_large_2 ^48 ^1 ^86 180_degrees none
execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:ps5_controller_large_3 ^79 ^1 ^86 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:ps5_controller_large_1 ^-16 ^1 ^86 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:ps5_controller_large_2 ^48 ^1 ^86 180_degrees none
execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:ps5_controller_large_3 ^79 ^1 ^86 180_degrees none

# === FACING EAST (+X): 270 DEGREES ===
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:ps5_controller_large_1 ^-16 ^1 ^34 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:ps5_controller_large_2 ^48 ^1 ^34 270_degrees none
execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:ps5_controller_large_3 ^79 ^1 ^34 270_degrees none
