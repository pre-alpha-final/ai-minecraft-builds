# PHARAOH'S CURSE / THE AWAKENING - Minecraft Bedrock Edition roller coaster
# Run: /function theme_park_pharaohs_curse_roller_coaster
# Stand at ground level, face a cardinal direction, and look horizontally. Run as a player.
# Origin: front-center observation point; nearest blocks are 32 blocks ahead.
# Size: 352 wide x 272 deep x 101 high. Bounds: ^-175 ^-1 ^32 through ^176 ^99 ^303.
# Use a clear flat Overworld site; player's feet must be at Y -63 through 220 for world-height clearance.
# Continuous powered minecart circuit; pyramids, mummies, sphinx and curse effects are static scenery.
# Follow the guardian avenue and path to the temple stairs. Board at ^-120 ^8 ^60; push toward the long lift (+left).
# 1,620 rails; 28 flat curves; 4 major climbs and 3 major drops.
# Largest drop: 82 blocks. Gold-capped main pyramid: 129 x 129 shell footprint, 82 block layers.
# Rail heights: 8 through 96 above player origin. Three-block-wide, three-block-high passenger clearance.
# Scenes: sun temple, sphinx, golden pyramid, mummy crypt, queens tombs, cobra gate, palm oasis.
# 383,066 non-air blocks + 121,070 explicit clearance cells in 30 native structures.
# Smallest exact axis-run encoding: 44,083 commands; native assets avoid the 10,000-command limit.
# Public wrapper: 172 commands (including five snap commands); callbacks: 1 + 5; total: 178.
# Requires Bedrock 1.21.50+ for the delayed schedule lifecycle.
# Palette: sandstone variants, gold, lapis-blue/cyan/black/ivory/brown/green concrete, sea lanterns, water, redstone and rails.
# WARNING: overwrites a large site. Back up first or use a disposable world. Sparse void cells do not clear existing terrain.
# Five temporary ticking areas, <=99 chunks each. Five of the world's ten slots must be free or loading can fail.
# Cleanup refreshes to 300 ticks after each area loads. Wait for placement and cleanup before rerunning this build.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === CLEAR STALE CALLBACKS AND PRELOAD ALL FIVE RECTANGLES ===
execute as @s at @s rotated as @s run schedule on_area_loaded clear function _theme_park_pharaohs_curse_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule delay clear _theme_park_pharaohs_curse_roller_coaster_remove_tickingarea
execute as @s at @s rotated as @s run tickingarea remove pharaohs_curse_11
execute as @s at @s rotated as @s run tickingarea remove pharaohs_curse_12
execute as @s at @s rotated as @s run tickingarea remove pharaohs_curse_13
execute as @s at @s rotated as @s run tickingarea remove pharaohs_curse_21
execute as @s at @s rotated as @s run tickingarea remove pharaohs_curse_22
execute as @s at @s rotated as @s run tickingarea add ^-175 ^0 ^32 ^-59 ^0 ^190 pharaohs_curse_11 true
execute as @s at @s rotated as @s run tickingarea add ^-58 ^0 ^32 ^58 ^0 ^190 pharaohs_curse_12 true
execute as @s at @s rotated as @s run tickingarea add ^59 ^0 ^32 ^176 ^0 ^190 pharaohs_curse_13 true
execute as @s at @s rotated as @s run tickingarea add ^-175 ^0 ^191 ^0 ^0 ^303 pharaohs_curse_21 true
execute as @s at @s rotated as @s run tickingarea add ^1 ^0 ^191 ^176 ^0 ^303 pharaohs_curse_22 true
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea pharaohs_curse_11 _theme_park_pharaohs_curse_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea pharaohs_curse_12 _theme_park_pharaohs_curse_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea pharaohs_curse_13 _theme_park_pharaohs_curse_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea pharaohs_curse_21 _theme_park_pharaohs_curse_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea pharaohs_curse_22 _theme_park_pharaohs_curse_roller_coaster_tickingarea_loaded

# === SOUTH: NATIVE STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z1 ^-175 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z1 ^-111 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z1 ^-47 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z1 ^17 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z1 ^81 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z1 ^145 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z2 ^-175 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z2 ^-111 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z2 ^-47 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z2 ^17 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z2 ^81 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z2 ^145 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z3 ^-175 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z3 ^-111 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z3 ^-47 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z3 ^17 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z3 ^81 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z3 ^145 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z4 ^-175 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z4 ^-111 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z4 ^-47 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z4 ^17 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z4 ^81 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z4 ^145 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z5 ^-175 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z5 ^-111 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z5 ^-47 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z5 ^17 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z5 ^81 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z5 ^145 ^-1 ^288 0_degrees none

# === WEST: NATIVE STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z1 ^-175 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z1 ^-111 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z1 ^-47 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z1 ^17 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z1 ^81 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z1 ^145 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z2 ^-175 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z2 ^-111 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z2 ^-47 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z2 ^17 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z2 ^81 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z2 ^145 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z3 ^-175 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z3 ^-111 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z3 ^-47 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z3 ^17 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z3 ^81 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z3 ^145 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z4 ^-175 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z4 ^-111 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z4 ^-47 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z4 ^17 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z4 ^81 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z4 ^145 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z5 ^-175 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z5 ^-111 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z5 ^-47 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z5 ^17 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z5 ^81 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z5 ^145 ^-1 ^303 90_degrees none

# === NORTH: NATIVE STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z1 ^-112 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z1 ^-48 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z1 ^16 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z1 ^80 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z1 ^144 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z1 ^176 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z2 ^-112 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z2 ^-48 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z2 ^16 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z2 ^80 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z2 ^144 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z2 ^176 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z3 ^-112 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z3 ^-48 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z3 ^16 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z3 ^80 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z3 ^144 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z3 ^176 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z4 ^-112 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z4 ^-48 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z4 ^16 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z4 ^80 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z4 ^144 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z4 ^176 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z5 ^-112 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z5 ^-48 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z5 ^16 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z5 ^80 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z5 ^144 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z5 ^176 ^-1 ^303 180_degrees none

# === NORTH NEGATIVE YAW: NATIVE STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z1 ^-112 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z1 ^-48 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z1 ^16 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z1 ^80 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z1 ^144 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z1 ^176 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z2 ^-112 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z2 ^-48 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z2 ^16 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z2 ^80 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z2 ^144 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z2 ^176 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z3 ^-112 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z3 ^-48 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z3 ^16 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z3 ^80 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z3 ^144 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z3 ^176 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z4 ^-112 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z4 ^-48 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z4 ^16 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z4 ^80 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z4 ^144 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z4 ^176 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z5 ^-112 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z5 ^-48 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z5 ^16 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z5 ^80 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z5 ^144 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z5 ^176 ^-1 ^303 180_degrees none

# === EAST: NATIVE STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z1 ^-112 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z1 ^-48 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z1 ^16 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z1 ^80 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z1 ^144 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z1 ^176 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z2 ^-112 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z2 ^-48 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z2 ^16 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z2 ^80 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z2 ^144 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z2 ^176 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z3 ^-112 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z3 ^-48 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z3 ^16 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z3 ^80 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z3 ^144 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z3 ^176 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z4 ^-112 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z4 ^-48 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z4 ^16 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z4 ^80 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z4 ^144 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z4 ^176 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x1_z5 ^-112 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x2_z5 ^-48 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x3_z5 ^16 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x4_z5 ^80 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x5_z5 ^144 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_pharaohs_curse_roller_coaster_x6_z5 ^176 ^-1 ^288 270_degrees none
