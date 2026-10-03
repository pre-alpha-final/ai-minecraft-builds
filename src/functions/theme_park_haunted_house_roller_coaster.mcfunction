# RAVEN MANOR: THE WIDOW'S PLUNGE - Minecraft Bedrock Edition 1.21.50+
# Run /function theme_park_haunted_house_roller_coaster as a player at ground level, facing a cardinal direction with a horizontal view.
# Physical scale matches Pharaoh's Curse: width 352, depth 272, height 101; no rail-count target.
# Front-center observation origin; nearest blocks begin 32 ahead. Bounds ^-175 ^-1 ^32 to ^176 ^99 ^303.
# Stand with feet at Overworld Y -63 through 220. Choose a new clear flat site for this larger version.
# Follow the right path and eighteen half-block steps to the carriage-house station.
# Board beside ^-125 ^9 ^64; push left (+local left) toward the clock-tower lift.
# 1,724 connected rails; 22 curves; 4 climbs and 3 drops >=20 blocks.
# Rail height 9..93; largest drop 80 blocks; crossing separation 18.
# Mansion, ancestor crypt, mirror gallery, skull gate, mausoleum, spectral memorial, forest, and lagoon.
# Functional minecart loop; ghosts, raven, clock hands and all haunt effects are static scenery.
# 386,757 non-air blocks + 1,111,522 explicit air cells in 30 native assets.
# Five of the world's ten ticking-area slots must be free; each preload rectangle covers at most 99 chunks.
# Placement stays in player context and can queue while the complete site preloads.
# Cleanup refreshes to 300 ticks after each area loads; wait for placement and cleanup before rerunning.
# WARNING: overwrites the footprint, rooms and ride corridor. Back up first or use a disposable world.
# Omitted exterior air remains untouched. The larger footprint replaces the earlier small design.
# Public loader 174 commands including snap; callbacks 1+5 commands; exactly three lifecycle functions.
# Rebuild/reimport after source changes. Generator tools/generate_haunted_house_coaster.py.
# In-game verification remains outstanding.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === PRELOAD THE ENTIRE ESTATE ===
execute as @s at @s rotated as @s run tellraw @s {"rawtext":[{"text":"Raven Manor v1.0.25: loading the grand estate. Five free ticking-area slots are required; wait for queued placement."}]}
execute as @s at @s rotated as @s run schedule on_area_loaded clear function _theme_park_haunted_house_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule delay clear _theme_park_haunted_house_roller_coaster_remove_tickingarea
execute as @s at @s rotated as @s run tickingarea remove haunted_house_coaster
execute as @s at @s rotated as @s run tickingarea remove haunted_house_coaster_11
execute as @s at @s rotated as @s run tickingarea remove haunted_house_coaster_12
execute as @s at @s rotated as @s run tickingarea remove haunted_house_coaster_13
execute as @s at @s rotated as @s run tickingarea remove haunted_house_coaster_21
execute as @s at @s rotated as @s run tickingarea remove haunted_house_coaster_22
execute as @s at @s rotated as @s run tickingarea add ^-175 ^0 ^32 ^-59 ^0 ^190 haunted_house_coaster_11 true
execute as @s at @s rotated as @s run tickingarea add ^-58 ^0 ^32 ^58 ^0 ^190 haunted_house_coaster_12 true
execute as @s at @s rotated as @s run tickingarea add ^59 ^0 ^32 ^176 ^0 ^190 haunted_house_coaster_13 true
execute as @s at @s rotated as @s run tickingarea add ^-175 ^0 ^191 ^0 ^0 ^303 haunted_house_coaster_21 true
execute as @s at @s rotated as @s run tickingarea add ^1 ^0 ^191 ^176 ^0 ^303 haunted_house_coaster_22 true
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea haunted_house_coaster_11 _theme_park_haunted_house_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea haunted_house_coaster_12 _theme_park_haunted_house_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea haunted_house_coaster_13 _theme_park_haunted_house_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea haunted_house_coaster_21 _theme_park_haunted_house_roller_coaster_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea haunted_house_coaster_22 _theme_park_haunted_house_roller_coaster_tickingarea_loaded

# === 0-DEGREE PLACEMENT: @s[rym=-44,ry=44] ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z1 ^-175 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z1 ^-111 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z1 ^-47 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z1 ^17 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z1 ^81 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z1 ^145 ^-1 ^32 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z2 ^-175 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z2 ^-111 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z2 ^-47 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z2 ^17 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z2 ^81 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z2 ^145 ^-1 ^96 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z3 ^-175 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z3 ^-111 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z3 ^-47 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z3 ^17 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z3 ^81 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z3 ^145 ^-1 ^160 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z4 ^-175 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z4 ^-111 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z4 ^-47 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z4 ^17 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z4 ^81 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z4 ^145 ^-1 ^224 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z5 ^-175 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z5 ^-111 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z5 ^-47 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z5 ^17 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z5 ^81 ^-1 ^288 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z5 ^145 ^-1 ^288 0_degrees none

# === 90-DEGREE PLACEMENT: @s[rym=45,ry=134] ===
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z1 ^-175 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z1 ^-111 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z1 ^-47 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z1 ^17 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z1 ^81 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z1 ^145 ^-1 ^95 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z2 ^-175 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z2 ^-111 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z2 ^-47 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z2 ^17 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z2 ^81 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z2 ^145 ^-1 ^159 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z3 ^-175 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z3 ^-111 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z3 ^-47 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z3 ^17 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z3 ^81 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z3 ^145 ^-1 ^223 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z4 ^-175 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z4 ^-111 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z4 ^-47 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z4 ^17 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z4 ^81 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z4 ^145 ^-1 ^287 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z5 ^-175 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z5 ^-111 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z5 ^-47 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z5 ^17 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z5 ^81 ^-1 ^303 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z5 ^145 ^-1 ^303 90_degrees none

# === 180-DEGREE PLACEMENT: @s[rym=135,ry=180] ===
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z1 ^-112 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z1 ^-48 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z1 ^16 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z1 ^80 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z1 ^144 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z1 ^176 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z2 ^-112 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z2 ^-48 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z2 ^16 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z2 ^80 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z2 ^144 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z2 ^176 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z3 ^-112 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z3 ^-48 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z3 ^16 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z3 ^80 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z3 ^144 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z3 ^176 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z4 ^-112 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z4 ^-48 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z4 ^16 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z4 ^80 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z4 ^144 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z4 ^176 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z5 ^-112 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z5 ^-48 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z5 ^16 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z5 ^80 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z5 ^144 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z5 ^176 ^-1 ^303 180_degrees none

# === 180-DEGREE PLACEMENT: @s[rym=-180,ry=-135] ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z1 ^-112 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z1 ^-48 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z1 ^16 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z1 ^80 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z1 ^144 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z1 ^176 ^-1 ^95 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z2 ^-112 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z2 ^-48 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z2 ^16 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z2 ^80 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z2 ^144 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z2 ^176 ^-1 ^159 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z3 ^-112 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z3 ^-48 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z3 ^16 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z3 ^80 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z3 ^144 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z3 ^176 ^-1 ^223 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z4 ^-112 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z4 ^-48 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z4 ^16 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z4 ^80 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z4 ^144 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z4 ^176 ^-1 ^287 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z5 ^-112 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z5 ^-48 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z5 ^16 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z5 ^80 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z5 ^144 ^-1 ^303 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z5 ^176 ^-1 ^303 180_degrees none

# === 270-DEGREE PLACEMENT: @s[rym=-134,ry=-45] ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z1 ^-112 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z1 ^-48 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z1 ^16 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z1 ^80 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z1 ^144 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z1 ^176 ^-1 ^32 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z2 ^-112 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z2 ^-48 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z2 ^16 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z2 ^80 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z2 ^144 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z2 ^176 ^-1 ^96 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z3 ^-112 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z3 ^-48 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z3 ^16 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z3 ^80 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z3 ^144 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z3 ^176 ^-1 ^160 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z4 ^-112 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z4 ^-48 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z4 ^16 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z4 ^80 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z4 ^144 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z4 ^176 ^-1 ^224 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x1_z5 ^-112 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x2_z5 ^-48 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x3_z5 ^16 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x4_z5 ^80 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x5_z5 ^144 ^-1 ^288 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_haunted_house_roller_coaster_x6_z5 ^176 ^-1 ^288 270_degrees none
