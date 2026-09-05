# THEMED HAUNTED HOUSE - GRAND ESTATE / Minecraft Bedrock Edition 1.21.50+
# Run /function theme_park_themed_haunted_house as a player at ground level, facing a cardinal direction with a horizontal view.
# Origin: front-center observation point; nearest blocks start 24 forward. Door: ^0 ^10 ^72.
# Bounds: ^-112 ^-1 ^24 through ^112 ^96 ^262. Width 225, depth 239, vertical extent 98 blocks.
# Stand with feet at Overworld Y -63 through 223. Default flat-world ground is supported.
# The estate sits on an eight-block terrace; entrance stairs preserve ground-level walking access and the crypt.
# Three furnished main floors, six attic rooms, six crypt vaults, twelve tower rooms, front balcony, gardens.
# Static walk-through attraction. Guest feet levels: crypt 0, grounds 8, main floors 10/22/34, attic 46.
# 680,192 non-air blocks and 905,324 explicit air cells in 16 native structures.
# Best of six exact cuboid encodings: 29,980 solid-placement commands, before air or snap.
# Public loader: 97 commands including five snap commands. Callbacks: 1 + 3 commands. Complete lifecycle: 101.
# 76 guest destinations and every stair tread pass the conservative two-block headroom walking check.
# Three temporary preloaded ticking areas (90 chunks maximum each); three of the world's ten slots must be free.
# Queued placement finishes when the areas load. Cleanup refreshes to 300 ticks after each area is ready.
# Wait for placement and cleanup before rerunning this build; the same loader reuses static area names.
# WARNING: overwrites a large estate. Back up first or use a disposable world.
# Interior and ground-route air is explicit; omitted exterior cells remain untouched. Upper belfries are decorative.
# Palette: purple masonry/glass, pale stone, slate, dark oak/spruce parquet, marble mosaics, ghost wool, soul lighting.
# In-game verification remains outstanding. Rebuild and reimport the pack after source changes.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === PRELOAD COMPLETE ESTATE ===
execute as @s at @s rotated as @s run tellraw @s {"rawtext":[{"text":"Themed Haunted House v1.0.22: loading estate. Three free ticking-area slots are required."}]}
execute as @s at @s rotated as @s run schedule on_area_loaded clear function _theme_park_themed_haunted_house_tickingarea_loaded
execute as @s at @s rotated as @s run schedule delay clear _theme_park_themed_haunted_house_remove_tickingarea
execute as @s at @s rotated as @s run tickingarea remove themed_haunted_house_1
execute as @s at @s rotated as @s run tickingarea remove themed_haunted_house_2
execute as @s at @s rotated as @s run tickingarea remove themed_haunted_house_3
execute as @s at @s rotated as @s run tickingarea add ^-112 ^0 ^24 ^112 ^0 ^103 themed_haunted_house_1 true
execute as @s at @s rotated as @s run tickingarea add ^-112 ^0 ^104 ^112 ^0 ^183 themed_haunted_house_2 true
execute as @s at @s rotated as @s run tickingarea add ^-112 ^0 ^184 ^112 ^0 ^262 themed_haunted_house_3 true
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea themed_haunted_house_1 _theme_park_themed_haunted_house_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea themed_haunted_house_2 _theme_park_themed_haunted_house_tickingarea_loaded
execute as @s at @s rotated as @s run schedule on_area_loaded add tickingarea themed_haunted_house_3 _theme_park_themed_haunted_house_tickingarea_loaded

# === SOUTH: ALL SIXTEEN STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z1 ^-112 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z1 ^-48 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z1 ^16 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z1 ^80 ^-1 ^24 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z2 ^-112 ^-1 ^88 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z2 ^-48 ^-1 ^88 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z2 ^16 ^-1 ^88 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z2 ^80 ^-1 ^88 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z3 ^-112 ^-1 ^152 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z3 ^-48 ^-1 ^152 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z3 ^16 ^-1 ^152 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z3 ^80 ^-1 ^152 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z4 ^-112 ^-1 ^216 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z4 ^-48 ^-1 ^216 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z4 ^16 ^-1 ^216 0_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-44,ry=44] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z4 ^80 ^-1 ^216 0_degrees none

# === WEST: ALL SIXTEEN STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z1 ^-112 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z1 ^-48 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z1 ^16 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z1 ^80 ^-1 ^87 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z2 ^-112 ^-1 ^151 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z2 ^-48 ^-1 ^151 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z2 ^16 ^-1 ^151 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z2 ^80 ^-1 ^151 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z3 ^-112 ^-1 ^215 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z3 ^-48 ^-1 ^215 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z3 ^16 ^-1 ^215 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z3 ^80 ^-1 ^215 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z4 ^-112 ^-1 ^262 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z4 ^-48 ^-1 ^262 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z4 ^16 ^-1 ^262 90_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=45,ry=134] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z4 ^80 ^-1 ^262 90_degrees none

# === NORTH: ALL SIXTEEN STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z1 ^-49 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z1 ^15 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z1 ^79 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z1 ^112 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z2 ^-49 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z2 ^15 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z2 ^79 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z2 ^112 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z3 ^-49 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z3 ^15 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z3 ^79 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z3 ^112 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z4 ^-49 ^-1 ^262 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z4 ^15 ^-1 ^262 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z4 ^79 ^-1 ^262 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=135,ry=180] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z4 ^112 ^-1 ^262 180_degrees none

# === NORTH NEGATIVE: ALL SIXTEEN STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z1 ^-49 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z1 ^15 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z1 ^79 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z1 ^112 ^-1 ^87 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z2 ^-49 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z2 ^15 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z2 ^79 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z2 ^112 ^-1 ^151 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z3 ^-49 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z3 ^15 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z3 ^79 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z3 ^112 ^-1 ^215 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z4 ^-49 ^-1 ^262 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z4 ^15 ^-1 ^262 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z4 ^79 ^-1 ^262 180_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-180,ry=-135] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z4 ^112 ^-1 ^262 180_degrees none

# === EAST: ALL SIXTEEN STRUCTURES ===
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z1 ^-49 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z1 ^15 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z1 ^79 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z1 ^112 ^-1 ^24 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z2 ^-49 ^-1 ^88 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z2 ^15 ^-1 ^88 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z2 ^79 ^-1 ^88 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z2 ^112 ^-1 ^88 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z3 ^-49 ^-1 ^152 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z3 ^15 ^-1 ^152 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z3 ^79 ^-1 ^152 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z3 ^112 ^-1 ^152 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x1_z4 ^-49 ^-1 ^216 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x2_z4 ^15 ^-1 ^216 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x3_z4 ^79 ^-1 ^216 270_degrees none
execute as @s at @s rotated as @s run execute if entity @s[rym=-134,ry=-45] run structure load ai_minecraft_builds:theme_park_themed_haunted_house_x4_z4 ^112 ^-1 ^216 270_degrees none
