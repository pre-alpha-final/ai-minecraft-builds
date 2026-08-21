# AURORA VELOCITY ROLLER COASTER - Minecraft Bedrock Edition
# Build size: approximately 97 x 97 x 42 blocks.
# Stand at ground level near the center, face a CARDINAL direction, look horizontally,
# then run: /function theme_park_aurora_velocity_roller_coaster
# Caret coordinates make the entire attraction follow the direction you face.
# Tilde coordinates are used inside positioned execute commands for local scenery modules.
# The rail loop is placed in travel order so Bedrock automatically forms slopes and corners.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

execute as @s at @s rotated as @s run say Aurora Velocity construction started

# === GROUND PLAN, PLAZA, AND PERIMETER ===
execute as @s at @s rotated as @s run fill ^-48 ^-2 ^-48 ^48 ^-2 ^48 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^-47 ^47 ^-1 ^47 minecraft:grass_block
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^-47 ^47 ^-1 ^-43 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^43 ^47 ^-1 ^47 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^-42 ^-43 ^-1 ^42 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^43 ^-1 ^-42 ^47 ^-1 ^42 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^-42 ^-1 ^-42 ^-19 ^-1 ^-13 minecraft:polished_andesite
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^-47 ^-4 ^-1 ^-20 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^-8 ^-1 ^-42 ^-2 ^-1 ^42 minecraft:light_gray_concrete
execute as @s at @s rotated as @s run fill ^-42 ^0 ^-47 ^-28 ^0 ^-47 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-20 ^0 ^-47 ^47 ^0 ^-47 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-47 ^0 ^-47 ^-47 ^0 ^47 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^47 ^0 ^-47 ^47 ^0 ^47 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-47 ^0 ^47 ^47 ^0 ^47 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-42 ^-1 ^-12 ^-20 ^-1 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-12 ^-3 ^-1 ^-8 minecraft:yellow_concrete
execute as @s at @s rotated as @s run fill ^-2 ^-1 ^-12 ^10 ^-1 ^-8 minecraft:black_concrete

# === MAIN ENTRANCE MARQUEE ===
execute as @s at @s rotated as @s run fill ^-28 ^0 ^-48 ^-24 ^8 ^-45 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^0 ^-48 ^-14 ^8 ^-45 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-27 ^1 ^-47 ^-25 ^7 ^-46 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-17 ^1 ^-47 ^-15 ^7 ^-46 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-28 ^8 ^-48 ^-14 ^10 ^-45 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-26 ^9 ^-49 ^-16 ^11 ^-49 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-25 ^10 ^-50 ^-17 ^12 ^-50 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-23 ^11 ^-51 ^-19 ^13 ^-51 minecraft:yellow_concrete
execute as @s at @s rotated as @s run setblock ^-26 ^9 ^-49 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-23 ^9 ^-49 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-20 ^9 ^-49 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-17 ^9 ^-49 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-27 ^0 ^-44 ^-25 ^3 ^-42 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^-17 ^0 ^-44 ^-15 ^3 ^-42 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^-26 ^1 ^-45 ^-26 ^2 ^-45 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run fill ^-16 ^1 ^-45 ^-16 ^2 ^-45 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run setblock ^-26 ^4 ^-43 minecraft:lantern
execute as @s at @s rotated as @s run setblock ^-16 ^4 ^-43 minecraft:lantern

# === QUEUE MAZE AND GUEST DETAILS ===
execute as @s at @s rotated as @s run fill ^-41 ^0 ^-40 ^-22 ^0 ^-40 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-41 ^0 ^-35 ^-25 ^0 ^-35 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-38 ^0 ^-30 ^-22 ^0 ^-30 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-41 ^0 ^-25 ^-25 ^0 ^-25 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-38 ^0 ^-20 ^-22 ^0 ^-20 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-41 ^0 ^-40 ^-41 ^0 ^-20 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-22 ^0 ^-40 ^-22 ^0 ^-36 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-22 ^0 ^-34 ^-22 ^0 ^-30 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-22 ^0 ^-28 ^-22 ^0 ^-20 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-40 ^-1 ^-39 ^-23 ^-1 ^-36 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-40 ^-1 ^-34 ^-23 ^-1 ^-31 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-40 ^-1 ^-29 ^-23 ^-1 ^-26 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-40 ^-1 ^-24 ^-23 ^-1 ^-21 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-40 ^0 ^-39 ^-40 ^2 ^-39 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-40 ^3 ^-39 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-23 ^0 ^-34 ^-23 ^2 ^-34 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-23 ^3 ^-34 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-40 ^0 ^-29 ^-40 ^2 ^-29 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-40 ^3 ^-29 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-23 ^0 ^-24 ^-23 ^2 ^-24 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-23 ^3 ^-24 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-40 ^0 ^-21 ^-40 ^2 ^-21 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-40 ^3 ^-21 minecraft:lantern
execute as @s at @s rotated as @s run setblock ^-39 ^0 ^-38 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-24 ^0 ^-33 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-39 ^0 ^-28 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-24 ^0 ^-23 minecraft:barrel
execute as @s at @s rotated as @s run fill ^-34 ^0 ^-18 ^-30 ^3 ^-14 minecraft:white_concrete
execute as @s at @s rotated as @s run fill ^-33 ^1 ^-19 ^-31 ^2 ^-19 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run fill ^-34 ^4 ^-18 ^-30 ^4 ^-14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-32 ^5 ^-16 minecraft:sea_lantern

# === ELEVATED STATION AND BOARDING PLATFORM ===
execute as @s at @s rotated as @s run fill ^-21 ^0 ^-40 ^-21 ^3 ^-40 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-21 ^0 ^-33 ^-21 ^3 ^-33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-21 ^0 ^-24 ^-21 ^3 ^-24 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^0 ^-40 ^-18 ^3 ^-40 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^0 ^-33 ^-18 ^3 ^-33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^0 ^-24 ^-18 ^3 ^-24 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-10 ^0 ^-40 ^-10 ^3 ^-40 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-10 ^0 ^-33 ^-10 ^3 ^-33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-10 ^0 ^-24 ^-10 ^3 ^-24 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-7 ^0 ^-40 ^-7 ^3 ^-40 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-7 ^0 ^-33 ^-7 ^3 ^-33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-7 ^0 ^-24 ^-7 ^3 ^-24 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-22 ^4 ^-41 ^-6 ^4 ^-22 minecraft:polished_andesite
execute as @s at @s rotated as @s run fill ^-16 ^4 ^-40 ^-12 ^4 ^-23 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-21 ^5 ^-41 ^-18 ^5 ^-23 minecraft:yellow_concrete
execute as @s at @s rotated as @s run fill ^-10 ^5 ^-41 ^-7 ^5 ^-23 minecraft:yellow_concrete
execute as @s at @s rotated as @s run fill ^-22 ^5 ^-41 ^-22 ^7 ^-22 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-6 ^5 ^-41 ^-6 ^7 ^-22 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-21 ^5 ^-40 ^-21 ^11 ^-40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^-21 ^10 ^-40 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-21 ^5 ^-32 ^-21 ^11 ^-32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^-21 ^10 ^-32 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-21 ^5 ^-24 ^-21 ^11 ^-24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^-21 ^10 ^-24 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-7 ^5 ^-40 ^-7 ^11 ^-40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^-7 ^10 ^-40 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-7 ^5 ^-32 ^-7 ^11 ^-32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^-7 ^10 ^-32 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-7 ^5 ^-24 ^-7 ^11 ^-24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^-7 ^10 ^-24 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-22 ^12 ^-42 ^-6 ^12 ^-21 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-21 ^13 ^-41 ^-7 ^13 ^-22 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-18 ^14 ^-37 ^-10 ^14 ^-27 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-16 ^15 ^-34 ^-12 ^15 ^-30 minecraft:yellow_concrete
execute as @s at @s rotated as @s run fill ^-20 ^8 ^-24 ^-8 ^10 ^-23 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-18 ^9 ^-22 ^-10 ^11 ^-22 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^10 ^-22 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^-22 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^10 ^-22 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-25 ^0 ^-43 ^-23 ^0 ^-43 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-25 ^1 ^-42 ^-23 ^1 ^-42 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-25 ^2 ^-41 ^-23 ^2 ^-41 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-25 ^3 ^-40 ^-23 ^3 ^-40 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-25 ^4 ^-39 ^-23 ^4 ^-39 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-26 ^0 ^-43 ^-26 ^4 ^-39 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-22 ^0 ^-43 ^-22 ^4 ^-39 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-20 ^5 ^-28 ^-18 ^8 ^-25 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-19 ^6 ^-29 ^-19 ^7 ^-29 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run setblock ^-19 ^9 ^-27 minecraft:lantern

# === TRACK BED - CLOSED CIRCUIT ===
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-37 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-36 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-35 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-34 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-33 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-32 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-31 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-30 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-29 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-28 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-27 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-26 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-25 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-24 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^6 ^-23 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^7 ^-22 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^8 ^-21 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^9 ^-20 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^-19 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^11 ^-18 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^12 ^-17 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^13 ^-16 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^14 ^-15 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^15 ^-14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^16 ^-13 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^17 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^18 ^-11 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^19 ^-10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^20 ^-9 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^21 ^-8 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^22 ^-7 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^23 ^-6 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^24 ^-5 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^25 ^-4 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^26 ^-3 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^27 ^-2 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^28 ^-1 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^29 ^0 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^30 ^1 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^31 ^2 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^32 ^3 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^33 ^4 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^34 ^5 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^35 ^6 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^36 ^7 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^37 ^8 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^9 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^11 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^13 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^37 ^15 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^36 ^16 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^35 ^17 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^34 ^18 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^33 ^19 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^32 ^20 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^31 ^21 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^30 ^22 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^29 ^23 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^28 ^24 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^27 ^25 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^26 ^26 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^25 ^27 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^24 ^28 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^23 ^29 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^22 ^30 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^21 ^31 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^20 ^32 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^19 ^33 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^18 ^34 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^17 ^35 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^16 ^36 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^15 ^37 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^14 ^38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^13 ^39 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^12 ^40 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^11 ^41 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^42 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-14 ^9 ^43 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-13 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-12 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-11 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-10 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-9 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-8 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-7 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-6 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-5 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-4 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-3 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-2 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-1 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^0 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^1 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^2 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^3 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^4 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^5 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^6 ^9 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^7 ^10 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^8 ^11 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^9 ^12 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^13 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^11 ^14 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^12 ^15 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^13 ^16 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^14 ^16 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^15 ^16 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^16 ^16 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^17 ^16 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^18 ^15 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^19 ^14 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^20 ^13 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^21 ^12 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^22 ^11 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^23 ^10 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^24 ^9 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^25 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^26 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^27 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^28 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^29 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^30 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^31 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^32 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^33 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^34 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^35 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^36 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^37 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^38 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^39 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^40 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^41 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^8 ^44 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^8 ^43 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^42 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^10 ^41 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^11 ^40 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^12 ^39 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^13 ^38 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^14 ^37 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^15 ^36 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^16 ^35 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^17 ^34 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^18 ^33 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^19 ^32 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^20 ^31 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^21 ^30 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^22 ^29 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^23 ^28 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^27 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^26 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^25 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^24 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^23 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^22 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^24 ^21 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^23 ^20 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^22 ^19 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^21 ^18 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^20 ^17 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^19 ^16 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^18 ^15 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^17 ^14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^16 ^13 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^15 ^12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^14 ^11 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^13 ^10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^12 ^9 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^11 ^8 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^10 ^7 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^6 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^5 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^4 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^3 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^2 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^9 ^1 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^0 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-1 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-2 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-3 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-4 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-5 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-6 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-7 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-8 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-9 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-11 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^41 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^40 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^39 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^38 ^9 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^37 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^36 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^35 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^34 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^33 ^10 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^32 ^11 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^31 ^12 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^30 ^13 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^29 ^14 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^28 ^15 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^27 ^16 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^26 ^17 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^25 ^17 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^24 ^17 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^23 ^17 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^22 ^17 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^21 ^16 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^20 ^15 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^19 ^14 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^18 ^13 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^17 ^12 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^16 ^11 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^15 ^10 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^14 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^13 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^12 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^11 ^9 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^10 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^9 ^-13 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^8 ^-14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^7 ^-15 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^6 ^-16 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-17 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-18 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-19 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-20 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-21 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-22 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-23 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-24 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-25 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-26 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-27 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-28 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-29 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-30 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-31 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-32 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-33 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-34 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-35 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-36 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-37 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^9 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^8 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^7 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^6 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^5 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^4 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^3 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^2 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^1 ^4 ^-38 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^0 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-1 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-2 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-3 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-4 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-5 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-6 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-7 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-8 ^4 ^-38 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-9 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-10 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-11 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-12 ^4 ^-38 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-13 ^4 ^-38 minecraft:red_concrete

# === PRIMARY STEEL SUPPORTS ===
execute as @s at @s rotated as @s run fill ^-17 ^0 ^-20 ^-17 ^8 ^-20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^-20 ^-11 ^8 ^-20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-21 ^-16 ^0 ^-19 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^-21 ^-10 ^0 ^-19 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^8 ^-20 ^-10 ^9 ^-20 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^-16 ^-17 ^12 ^-16 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^-16 ^-11 ^12 ^-16 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-17 ^-16 ^0 ^-15 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^-17 ^-10 ^0 ^-15 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^12 ^-16 ^-10 ^13 ^-16 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^-12 ^-17 ^16 ^-12 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^-12 ^-11 ^16 ^-12 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-13 ^-16 ^0 ^-11 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^-13 ^-10 ^0 ^-11 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^16 ^-12 ^-10 ^17 ^-12 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^9 ^-12 ^-11 ^9 ^-12 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^-8 ^-17 ^20 ^-8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^-8 ^-11 ^20 ^-8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-9 ^-16 ^0 ^-7 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^-9 ^-10 ^0 ^-7 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^20 ^-8 ^-10 ^21 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^11 ^-8 ^-11 ^11 ^-8 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^-4 ^-17 ^24 ^-4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^-4 ^-11 ^24 ^-4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-5 ^-16 ^0 ^-3 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^-5 ^-10 ^0 ^-3 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^24 ^-4 ^-10 ^25 ^-4 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^13 ^-4 ^-11 ^13 ^-4 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^0 ^-17 ^28 ^0 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^0 ^-11 ^28 ^0 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-1 ^-16 ^0 ^1 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^-1 ^-10 ^0 ^1 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^28 ^0 ^-10 ^29 ^0 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^15 ^0 ^-11 ^15 ^0 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^4 ^-17 ^32 ^4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^4 ^-11 ^32 ^4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^3 ^-16 ^0 ^5 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^3 ^-10 ^0 ^5 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^32 ^4 ^-10 ^33 ^4 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^17 ^4 ^-11 ^17 ^4 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^8 ^-17 ^36 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^8 ^-11 ^36 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^7 ^-16 ^0 ^9 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^7 ^-10 ^0 ^9 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^36 ^8 ^-10 ^37 ^8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^19 ^8 ^-11 ^19 ^8 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^12 ^-17 ^37 ^12 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^12 ^-11 ^37 ^12 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^11 ^-16 ^0 ^13 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^11 ^-10 ^0 ^13 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^37 ^12 ^-10 ^38 ^12 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^19 ^12 ^-11 ^19 ^12 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^16 ^-17 ^35 ^16 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^16 ^-11 ^35 ^16 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^15 ^-16 ^0 ^17 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^15 ^-10 ^0 ^17 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^35 ^16 ^-10 ^36 ^16 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^18 ^16 ^-11 ^18 ^16 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^20 ^-17 ^31 ^20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^20 ^-11 ^31 ^20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^19 ^-16 ^0 ^21 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^19 ^-10 ^0 ^21 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^31 ^20 ^-10 ^32 ^20 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^16 ^20 ^-11 ^16 ^20 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^24 ^-17 ^27 ^24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^24 ^-11 ^27 ^24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^23 ^-16 ^0 ^25 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^23 ^-10 ^0 ^25 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^27 ^24 ^-10 ^28 ^24 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^14 ^24 ^-11 ^14 ^24 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^28 ^-17 ^23 ^28 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^28 ^-11 ^23 ^28 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^27 ^-16 ^0 ^29 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^27 ^-10 ^0 ^29 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^23 ^28 ^-10 ^24 ^28 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^12 ^28 ^-11 ^12 ^28 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^32 ^-17 ^19 ^32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^32 ^-11 ^19 ^32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^31 ^-16 ^0 ^33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^31 ^-10 ^0 ^33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^19 ^32 ^-10 ^20 ^32 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^10 ^32 ^-11 ^10 ^32 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^36 ^-17 ^15 ^36 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^36 ^-11 ^15 ^36 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^35 ^-16 ^0 ^37 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^35 ^-10 ^0 ^37 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^15 ^36 ^-10 ^16 ^36 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^8 ^36 ^-11 ^8 ^36 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-17 ^0 ^40 ^-17 ^11 ^40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-11 ^0 ^40 ^-11 ^11 ^40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^39 ^-16 ^0 ^41 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-12 ^-1 ^39 ^-10 ^0 ^41 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-18 ^11 ^40 ^-10 ^12 ^40 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-8 ^0 ^41 ^-8 ^7 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-8 ^0 ^47 ^-8 ^7 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-9 ^-1 ^40 ^-7 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-9 ^-1 ^46 ^-7 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-8 ^7 ^40 ^-8 ^8 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^0 ^0 ^41 ^0 ^7 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^0 ^0 ^47 ^0 ^7 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-1 ^-1 ^40 ^1 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-1 ^-1 ^46 ^1 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^0 ^7 ^40 ^0 ^8 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^8 ^0 ^41 ^8 ^10 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^8 ^0 ^47 ^8 ^10 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^7 ^-1 ^40 ^9 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^7 ^-1 ^46 ^9 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^8 ^10 ^40 ^8 ^11 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^16 ^0 ^41 ^16 ^15 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^16 ^0 ^47 ^16 ^15 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^15 ^-1 ^40 ^17 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^15 ^-1 ^46 ^17 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^16 ^15 ^40 ^16 ^16 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^16 ^8 ^41 ^16 ^8 ^47 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^24 ^0 ^41 ^24 ^8 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^24 ^0 ^47 ^24 ^8 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^23 ^-1 ^40 ^25 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^23 ^-1 ^46 ^25 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^24 ^8 ^40 ^24 ^9 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^32 ^0 ^41 ^32 ^7 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^32 ^0 ^47 ^32 ^7 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^31 ^-1 ^40 ^33 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^31 ^-1 ^46 ^33 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^32 ^7 ^40 ^32 ^8 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^40 ^0 ^41 ^40 ^7 ^41 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^40 ^0 ^47 ^40 ^7 ^47 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^39 ^-1 ^40 ^41 ^0 ^42 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^39 ^-1 ^46 ^41 ^0 ^48 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^40 ^7 ^40 ^40 ^8 ^48 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^40 ^39 ^10 ^40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^40 ^45 ^10 ^40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^39 ^40 ^0 ^41 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^39 ^46 ^0 ^41 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^10 ^40 ^46 ^11 ^40 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^36 ^39 ^14 ^36 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^36 ^45 ^14 ^36 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^35 ^40 ^0 ^37 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^35 ^46 ^0 ^37 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^14 ^36 ^46 ^15 ^36 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^8 ^36 ^45 ^8 ^36 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^32 ^39 ^18 ^32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^32 ^45 ^18 ^32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^31 ^40 ^0 ^33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^31 ^46 ^0 ^33 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^18 ^32 ^46 ^19 ^32 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^10 ^32 ^45 ^10 ^32 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^28 ^39 ^22 ^28 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^28 ^45 ^22 ^28 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^27 ^40 ^0 ^29 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^27 ^46 ^0 ^29 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^22 ^28 ^46 ^23 ^28 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^12 ^28 ^45 ^12 ^28 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^24 ^39 ^23 ^24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^24 ^45 ^23 ^24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^23 ^40 ^0 ^25 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^23 ^46 ^0 ^25 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^23 ^24 ^46 ^24 ^24 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^12 ^24 ^45 ^12 ^24 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^20 ^39 ^22 ^20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^20 ^45 ^22 ^20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^19 ^40 ^0 ^21 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^19 ^46 ^0 ^21 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^22 ^20 ^46 ^23 ^20 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^12 ^20 ^45 ^12 ^20 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^16 ^39 ^18 ^16 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^16 ^45 ^18 ^16 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^15 ^40 ^0 ^17 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^15 ^46 ^0 ^17 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^18 ^16 ^46 ^19 ^16 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^10 ^16 ^45 ^10 ^16 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^12 ^39 ^14 ^12 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^12 ^45 ^14 ^12 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^11 ^40 ^0 ^13 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^11 ^46 ^0 ^13 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^14 ^12 ^46 ^15 ^12 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^8 ^12 ^45 ^8 ^12 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^8 ^39 ^10 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^8 ^45 ^10 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^7 ^40 ^0 ^9 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^7 ^46 ^0 ^9 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^10 ^8 ^46 ^11 ^8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^4 ^39 ^8 ^4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^4 ^45 ^8 ^4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^3 ^40 ^0 ^5 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^3 ^46 ^0 ^5 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^8 ^4 ^46 ^9 ^4 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^0 ^39 ^8 ^0 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^0 ^45 ^8 ^0 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^-1 ^40 ^0 ^1 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^-1 ^46 ^0 ^1 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^8 ^0 ^46 ^9 ^0 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^-4 ^39 ^8 ^-4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^-4 ^45 ^8 ^-4 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^-5 ^40 ^0 ^-3 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^-5 ^46 ^0 ^-3 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^8 ^-4 ^46 ^9 ^-4 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^39 ^0 ^-8 ^39 ^8 ^-8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^45 ^0 ^-8 ^45 ^8 ^-8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^-1 ^-9 ^40 ^0 ^-7 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^44 ^-1 ^-9 ^46 ^0 ^-7 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^8 ^-8 ^46 ^9 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^38 ^0 ^-15 ^38 ^8 ^-15 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^38 ^0 ^-9 ^38 ^8 ^-9 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^37 ^-1 ^-16 ^39 ^0 ^-14 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^37 ^-1 ^-10 ^39 ^0 ^-8 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^38 ^8 ^-16 ^38 ^9 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^32 ^0 ^-15 ^32 ^10 ^-15 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^32 ^0 ^-9 ^32 ^10 ^-9 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^31 ^-1 ^-16 ^33 ^0 ^-14 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^31 ^-1 ^-10 ^33 ^0 ^-8 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^32 ^10 ^-16 ^32 ^11 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^26 ^0 ^-15 ^26 ^16 ^-15 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^26 ^0 ^-9 ^26 ^16 ^-9 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^25 ^-1 ^-16 ^27 ^0 ^-14 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^25 ^-1 ^-10 ^27 ^0 ^-8 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^26 ^16 ^-16 ^26 ^17 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^26 ^9 ^-15 ^26 ^9 ^-9 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^22 ^0 ^-15 ^22 ^16 ^-15 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^22 ^0 ^-9 ^22 ^16 ^-9 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^21 ^-1 ^-16 ^23 ^0 ^-14 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^21 ^-1 ^-10 ^23 ^0 ^-8 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^22 ^16 ^-16 ^22 ^17 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^22 ^9 ^-15 ^22 ^9 ^-9 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^16 ^0 ^-15 ^16 ^10 ^-15 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^16 ^0 ^-9 ^16 ^10 ^-9 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^15 ^-1 ^-16 ^17 ^0 ^-14 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^15 ^-1 ^-10 ^17 ^0 ^-8 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^16 ^10 ^-16 ^16 ^11 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^10 ^0 ^-15 ^10 ^8 ^-15 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^10 ^0 ^-9 ^10 ^8 ^-9 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^9 ^-1 ^-16 ^11 ^0 ^-14 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^9 ^-1 ^-10 ^11 ^0 ^-8 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^10 ^8 ^-16 ^10 ^9 ^-8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^7 ^0 ^-20 ^7 ^3 ^-20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^13 ^0 ^-20 ^13 ^3 ^-20 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^6 ^-1 ^-21 ^8 ^0 ^-19 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^12 ^-1 ^-21 ^14 ^0 ^-19 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^6 ^3 ^-20 ^14 ^4 ^-20 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^7 ^0 ^-24 ^7 ^3 ^-24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^13 ^0 ^-24 ^13 ^3 ^-24 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^6 ^-1 ^-25 ^8 ^0 ^-23 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^12 ^-1 ^-25 ^14 ^0 ^-23 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^6 ^3 ^-24 ^14 ^4 ^-24 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^7 ^0 ^-28 ^7 ^3 ^-28 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^13 ^0 ^-28 ^13 ^3 ^-28 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^6 ^-1 ^-29 ^8 ^0 ^-27 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^12 ^-1 ^-29 ^14 ^0 ^-27 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^6 ^3 ^-28 ^14 ^4 ^-28 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^7 ^0 ^-32 ^7 ^3 ^-32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^13 ^0 ^-32 ^13 ^3 ^-32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^6 ^-1 ^-33 ^8 ^0 ^-31 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^12 ^-1 ^-33 ^14 ^0 ^-31 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^6 ^3 ^-32 ^14 ^4 ^-32 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^7 ^0 ^-36 ^7 ^3 ^-36 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^13 ^0 ^-36 ^13 ^3 ^-36 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^6 ^-1 ^-37 ^8 ^0 ^-35 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^12 ^-1 ^-37 ^14 ^0 ^-35 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^6 ^3 ^-36 ^14 ^4 ^-36 minecraft:black_concrete

# === LIFT HILL GANTRY, CREST, AND DROP DETAILS ===
execute as @s at @s rotated as @s run fill ^-18 ^9 ^-22 ^-18 ^11 ^-22 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^9 ^-22 ^-10 ^11 ^-22 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^11 ^-22 ^-10 ^11 ^-22 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^11 ^-22 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^11 ^-22 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^13 ^-18 ^-18 ^15 ^-18 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^13 ^-18 ^-10 ^15 ^-18 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^15 ^-18 ^-10 ^15 ^-18 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^15 ^-18 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^15 ^-18 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^17 ^-14 ^-18 ^19 ^-14 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^17 ^-14 ^-10 ^19 ^-14 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^19 ^-14 ^-10 ^19 ^-14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^19 ^-14 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^19 ^-14 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^21 ^-10 ^-18 ^23 ^-10 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^21 ^-10 ^-10 ^23 ^-10 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^23 ^-10 ^-10 ^23 ^-10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^23 ^-10 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^23 ^-10 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^25 ^-6 ^-18 ^27 ^-6 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^25 ^-6 ^-10 ^27 ^-6 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^27 ^-6 ^-10 ^27 ^-6 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^27 ^-6 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^27 ^-6 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^29 ^-2 ^-18 ^31 ^-2 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^29 ^-2 ^-10 ^31 ^-2 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^31 ^-2 ^-10 ^31 ^-2 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^31 ^-2 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^31 ^-2 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^33 ^2 ^-18 ^35 ^2 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^33 ^2 ^-10 ^35 ^2 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^35 ^2 ^-10 ^35 ^2 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^35 ^2 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^35 ^2 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^37 ^6 ^-18 ^39 ^6 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^37 ^6 ^-10 ^39 ^6 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^39 ^6 ^-10 ^39 ^6 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^39 ^6 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^39 ^6 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^40 ^10 ^-18 ^42 ^10 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^40 ^10 ^-10 ^42 ^10 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^42 ^10 ^-10 ^42 ^10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^42 ^10 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^42 ^10 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-18 ^40 ^14 ^-18 ^42 ^14 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-10 ^40 ^14 ^-10 ^42 ^14 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-18 ^42 ^14 ^-10 ^42 ^14 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^42 ^14 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^42 ^14 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-19 ^0 ^8 ^-19 ^40 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-9 ^0 ^8 ^-9 ^40 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^7 ^-18 ^0 ^9 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-10 ^-1 ^7 ^-8 ^0 ^9 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-19 ^40 ^8 ^-9 ^41 ^8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^-17 ^41 ^8 ^-11 ^42 ^8 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-17 ^42 ^8 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-14 ^42 ^8 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-11 ^42 ^8 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-19 ^13 ^8 ^-9 ^14 ^8 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-19 ^26 ^8 ^-9 ^27 ^8 minecraft:yellow_concrete

# === MIST TUNNEL AND ROCKWORK ===
execute as @s at @s rotated as @s run fill ^6 ^0 ^-36 ^6 ^9 ^-20 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^14 ^0 ^-36 ^14 ^9 ^-20 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^6 ^9 ^-36 ^14 ^11 ^-20 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^7 ^8 ^-35 ^13 ^9 ^-21 minecraft:cyan_stained_glass
execute as @s at @s rotated as @s run fill ^7 ^0 ^-37 ^13 ^2 ^-37 minecraft:deepslate_tiles
execute as @s at @s rotated as @s run fill ^7 ^0 ^-19 ^13 ^2 ^-19 minecraft:deepslate_tiles
execute as @s at @s rotated as @s run fill ^7 ^3 ^-35 ^7 ^8 ^-35 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^13 ^3 ^-35 ^13 ^8 ^-35 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^7 ^8 ^-35 ^13 ^8 ^-35 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^8 ^8 ^-35 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^12 ^8 ^-35 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^7 ^3 ^-31 ^7 ^8 ^-31 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^13 ^3 ^-31 ^13 ^8 ^-31 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^7 ^8 ^-31 ^13 ^8 ^-31 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^8 ^8 ^-31 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^12 ^8 ^-31 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^7 ^3 ^-27 ^7 ^8 ^-27 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^13 ^3 ^-27 ^13 ^8 ^-27 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^7 ^8 ^-27 ^13 ^8 ^-27 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^8 ^8 ^-27 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^12 ^8 ^-27 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^7 ^3 ^-23 ^7 ^8 ^-23 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^13 ^3 ^-23 ^13 ^8 ^-23 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^7 ^8 ^-23 ^13 ^8 ^-23 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^8 ^8 ^-23 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^12 ^8 ^-23 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^4 ^0 ^-34 ^5 ^4 ^-31 minecraft:deepslate
execute as @s at @s rotated as @s run fill ^15 ^0 ^-30 ^17 ^5 ^-26 minecraft:deepslate
execute as @s at @s rotated as @s run fill ^4 ^0 ^-25 ^6 ^3 ^-22 minecraft:tuff
execute as @s at @s rotated as @s run fill ^14 ^0 ^-36 ^17 ^3 ^-33 minecraft:tuff

# === LAGOON UNDER THE BIG DROP ===
execute as @s at @s rotated as @s run fill ^-6 ^-1 ^18 ^27 ^-1 ^36 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-5 ^0 ^19 ^26 ^0 ^35 minecraft:water
execute as @s at @s rotated as @s run fill ^-2 ^0 ^22 ^5 ^0 ^31 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run fill ^17 ^0 ^21 ^23 ^0 ^32 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run fill ^7 ^0 ^26 ^15 ^0 ^34 minecraft:cyan_stained_glass
execute as @s at @s rotated as @s run fill ^-4 ^0 ^20 ^-4 ^3 ^20 minecraft:prismarine_bricks
execute as @s at @s rotated as @s run setblock ^-4 ^4 ^20 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^25 ^0 ^20 ^25 ^3 ^20 minecraft:prismarine_bricks
execute as @s at @s rotated as @s run setblock ^25 ^4 ^20 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-4 ^0 ^34 ^-4 ^3 ^34 minecraft:prismarine_bricks
execute as @s at @s rotated as @s run setblock ^-4 ^4 ^34 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^25 ^0 ^34 ^25 ^3 ^34 minecraft:prismarine_bricks
execute as @s at @s rotated as @s run setblock ^25 ^4 ^34 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^10 ^0 ^20 ^10 ^3 ^20 minecraft:prismarine_bricks
execute as @s at @s rotated as @s run setblock ^10 ^4 ^20 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^10 ^0 ^35 ^10 ^3 ^35 minecraft:prismarine_bricks
execute as @s at @s rotated as @s run setblock ^10 ^4 ^35 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^7 ^0 ^23 ^12 ^0 ^24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^8 ^1 ^23 minecraft:deadbush
execute as @s at @s rotated as @s run setblock ^11 ^1 ^24 minecraft:deadbush

# === PHOTO BOOTH, MAINTENANCE SHED, AND SNACK KIOSK ===
execute as @s at @s rotated as @s run fill ^31 ^0 ^2 ^38 ^4 ^8 minecraft:black_concrete
execute as @s at @s rotated as @s run fill ^32 ^1 ^1 ^37 ^3 ^1 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run fill ^31 ^5 ^2 ^38 ^5 ^8 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^33 ^6 ^4 ^36 ^6 ^6 minecraft:yellow_concrete
execute as @s at @s rotated as @s run setblock ^32 ^4 ^2 minecraft:redstone_lamp
execute as @s at @s rotated as @s run setblock ^37 ^4 ^2 minecraft:redstone_lamp
execute as @s at @s rotated as @s run fill ^29 ^0 ^-39 ^39 ^5 ^-32 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^30 ^1 ^-40 ^38 ^3 ^-40 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^29 ^6 ^-39 ^39 ^6 ^-32 minecraft:cyan_concrete
execute as @s at @s rotated as @s run setblock ^31 ^1 ^-34 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^34 ^1 ^-34 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^37 ^1 ^-34 minecraft:chest
execute as @s at @s rotated as @s run fill ^-40 ^0 ^4 ^-33 ^4 ^11 minecraft:white_concrete
execute as @s at @s rotated as @s run fill ^-39 ^1 ^3 ^-34 ^3 ^3 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run fill ^-40 ^5 ^4 ^-33 ^5 ^11 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-39 ^6 ^5 ^-34 ^6 ^10 minecraft:red_concrete
execute as @s at @s rotated as @s run setblock ^-38 ^4 ^4 minecraft:lantern
execute as @s at @s rotated as @s run setblock ^-35 ^4 ^4 minecraft:lantern

# === LANDSCAPING MODULES USING TILDE-RELATIVE COORDINATES ===
execute as @s at @s rotated as @s run execute positioned ^-36 ^0 ^20 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:moss_block
execute as @s at @s rotated as @s run execute positioned ^-36 ^0 ^20 run fill ~0 ~0 ~0 ~0 ~5 ~0 minecraft:oak_log
execute as @s at @s rotated as @s run execute positioned ^-36 ^0 ^20 run fill ~-2 ~4 ~-2 ~2 ~6 ~2 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^-36 ^0 ^20 run fill ~-1 ~7 ~-1 ~1 ~7 ~1 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^31 ^0 ^26 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:moss_block
execute as @s at @s rotated as @s run execute positioned ^31 ^0 ^26 run fill ~0 ~0 ~0 ~0 ~5 ~0 minecraft:oak_log
execute as @s at @s rotated as @s run execute positioned ^31 ^0 ^26 run fill ~-2 ~4 ~-2 ~2 ~6 ~2 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^31 ^0 ^26 run fill ~-1 ~7 ~-1 ~1 ~7 ~1 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^-34 ^0 ^-3 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:moss_block
execute as @s at @s rotated as @s run execute positioned ^-34 ^0 ^-3 run fill ~0 ~0 ~0 ~0 ~5 ~0 minecraft:oak_log
execute as @s at @s rotated as @s run execute positioned ^-34 ^0 ^-3 run fill ~-2 ~4 ~-2 ~2 ~6 ~2 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^-34 ^0 ^-3 run fill ~-1 ~7 ~-1 ~1 ~7 ~1 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^24 ^0 ^-25 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:moss_block
execute as @s at @s rotated as @s run execute positioned ^24 ^0 ^-25 run fill ~0 ~0 ~0 ~0 ~5 ~0 minecraft:oak_log
execute as @s at @s rotated as @s run execute positioned ^24 ^0 ^-25 run fill ~-2 ~4 ~-2 ~2 ~6 ~2 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^24 ^0 ^-25 run fill ~-1 ~7 ~-1 ~1 ~7 ~1 minecraft:azalea_leaves
execute as @s at @s rotated as @s run execute positioned ^-41 ^0 ^17 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^-41 ^0 ^17 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^-31 ^0 ^17 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^-31 ^0 ^17 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^-41 ^0 ^28 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^-41 ^0 ^28 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^-31 ^0 ^28 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^-31 ^0 ^28 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^28 ^0 ^14 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^28 ^0 ^14 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^37 ^0 ^14 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^37 ^0 ^14 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^28 ^0 ^34 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^28 ^0 ^34 minecraft:flowering_azalea
execute as @s at @s rotated as @s run execute positioned ^37 ^0 ^34 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:moss_block
execute as @s at @s rotated as @s run setblock ^37 ^0 ^34 minecraft:flowering_azalea
execute as @s at @s rotated as @s run fill ^-44 ^0 ^-10 ^-44 ^3 ^-10 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-44 ^4 ^-10 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-44 ^0 ^0 ^-44 ^3 ^0 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-44 ^4 ^0 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-44 ^0 ^10 ^-44 ^3 ^10 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-44 ^4 ^10 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-44 ^0 ^30 ^-44 ^3 ^30 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-44 ^4 ^30 minecraft:lantern
execute as @s at @s rotated as @s run fill ^44 ^0 ^-30 ^44 ^3 ^-30 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^44 ^4 ^-30 minecraft:lantern
execute as @s at @s rotated as @s run fill ^44 ^0 ^-20 ^44 ^3 ^-20 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^44 ^4 ^-20 minecraft:lantern
execute as @s at @s rotated as @s run fill ^44 ^0 ^0 ^44 ^3 ^0 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^44 ^4 ^0 minecraft:lantern
execute as @s at @s rotated as @s run fill ^44 ^0 ^20 ^44 ^3 ^20 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^44 ^4 ^20 minecraft:lantern
execute as @s at @s rotated as @s run fill ^44 ^0 ^38 ^44 ^3 ^38 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^44 ^4 ^38 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-30 ^0 ^44 ^-30 ^3 ^44 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-30 ^4 ^44 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-10 ^0 ^44 ^-10 ^3 ^44 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-10 ^4 ^44 minecraft:lantern
execute as @s at @s rotated as @s run fill ^10 ^0 ^44 ^10 ^3 ^44 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^10 ^4 ^44 minecraft:lantern
execute as @s at @s rotated as @s run fill ^30 ^0 ^44 ^30 ^3 ^44 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^30 ^4 ^44 minecraft:lantern

# === DECORATIVE AURORA TOWERS ===
execute as @s at @s rotated as @s run fill ^-44 ^0 ^39 ^-42 ^1 ^41 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-43 ^2 ^40 ^-43 ^9 ^40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-44 ^6 ^40 ^-42 ^6 ^40 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-44 ^9 ^39 ^-42 ^10 ^41 minecraft:yellow_concrete
execute as @s at @s rotated as @s run setblock ^-43 ^11 ^40 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^42 ^0 ^39 ^44 ^1 ^41 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^43 ^2 ^40 ^43 ^9 ^40 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^42 ^6 ^40 ^44 ^6 ^40 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^42 ^9 ^39 ^44 ^10 ^41 minecraft:yellow_concrete
execute as @s at @s rotated as @s run setblock ^43 ^11 ^40 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-44 ^0 ^-15 ^-42 ^1 ^-13 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-43 ^2 ^-14 ^-43 ^9 ^-14 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^-44 ^6 ^-14 ^-42 ^6 ^-14 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^-44 ^9 ^-15 ^-42 ^10 ^-13 minecraft:yellow_concrete
execute as @s at @s rotated as @s run setblock ^-43 ^11 ^-14 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^17 ^0 ^-45 ^19 ^1 ^-43 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^18 ^2 ^-44 ^18 ^9 ^-44 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^17 ^6 ^-44 ^19 ^6 ^-44 minecraft:red_concrete
execute as @s at @s rotated as @s run fill ^17 ^9 ^-45 ^19 ^10 ^-43 minecraft:yellow_concrete
execute as @s at @s rotated as @s run setblock ^18 ^11 ^-44 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-2 ^0 ^6 ^2 ^0 ^10 minecraft:polished_blackstone_bricks
execute as @s at @s rotated as @s run fill ^-1 ^1 ^7 ^1 ^4 ^9 minecraft:light_blue_stained_glass
execute as @s at @s rotated as @s run setblock ^0 ^5 ^8 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-2 ^1 ^8 ^-2 ^3 ^8 minecraft:cyan_concrete
execute as @s at @s rotated as @s run fill ^2 ^1 ^8 ^2 ^3 ^8 minecraft:red_concrete

# === RAILS - PLACED IN TRAVEL ORDER ===
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-37 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-36 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-35 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-34 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-33 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-32 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-31 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-30 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-29 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-28 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-27 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-26 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-25 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^6 ^-24 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^7 ^-23 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^8 ^-22 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^9 ^-21 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^-20 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^11 ^-19 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^12 ^-18 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^13 ^-17 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^14 ^-16 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^15 ^-15 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^16 ^-14 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^17 ^-13 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^18 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^19 ^-11 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^20 ^-10 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^21 ^-9 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^22 ^-8 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^23 ^-7 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^24 ^-6 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^25 ^-5 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^26 ^-4 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^27 ^-3 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^28 ^-2 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^29 ^-1 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^30 ^0 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^31 ^1 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^32 ^2 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^33 ^3 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^34 ^4 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^35 ^5 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^36 ^6 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^37 ^7 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^8 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^39 ^9 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^39 ^10 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^39 ^11 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^39 ^12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^39 ^13 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^39 ^14 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^38 ^15 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^37 ^16 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^36 ^17 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^35 ^18 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^34 ^19 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^33 ^20 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^32 ^21 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^31 ^22 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^30 ^23 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^29 ^24 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^28 ^25 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^27 ^26 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^26 ^27 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^25 ^28 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^24 ^29 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^23 ^30 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^22 ^31 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^21 ^32 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^20 ^33 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^19 ^34 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^18 ^35 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^17 ^36 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^16 ^37 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^15 ^38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^14 ^39 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^13 ^40 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^12 ^41 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^11 ^42 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^43 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-14 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-13 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-12 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-11 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-10 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-9 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-8 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-7 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-6 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-5 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-4 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-3 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-2 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-1 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^0 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^1 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^2 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^3 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^4 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^5 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^6 ^10 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^7 ^11 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^8 ^12 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^9 ^13 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^14 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^11 ^15 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^12 ^16 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^13 ^17 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^14 ^17 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^15 ^17 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^16 ^17 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^17 ^17 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^18 ^16 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^19 ^15 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^20 ^14 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^21 ^13 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^22 ^12 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^23 ^11 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^24 ^10 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^25 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^26 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^27 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^28 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^29 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^30 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^31 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^32 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^33 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^34 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^35 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^36 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^37 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^38 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^39 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^40 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^41 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^9 ^44 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^9 ^43 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^42 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^11 ^41 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^12 ^40 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^13 ^39 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^14 ^38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^15 ^37 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^16 ^36 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^17 ^35 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^18 ^34 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^19 ^33 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^20 ^32 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^21 ^31 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^22 ^30 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^23 ^29 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^24 ^28 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^27 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^26 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^25 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^24 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^23 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^22 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^25 ^21 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^24 ^20 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^23 ^19 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^22 ^18 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^21 ^17 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^20 ^16 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^19 ^15 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^18 ^14 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^17 ^13 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^16 ^12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^15 ^11 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^14 ^10 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^13 ^9 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^12 ^8 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^11 ^7 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^6 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^5 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^4 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^3 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^2 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^1 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^0 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-1 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-2 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-3 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-4 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-5 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-6 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-7 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-8 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-9 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-10 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-11 minecraft:rail
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^41 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^40 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^39 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^38 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^37 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^36 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^35 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^34 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^33 ^11 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^32 ^12 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^31 ^13 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^30 ^14 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^29 ^15 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^28 ^16 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^27 ^17 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^26 ^18 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^25 ^18 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^24 ^18 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^23 ^18 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^22 ^18 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^21 ^17 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^20 ^16 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^19 ^15 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^18 ^14 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^17 ^13 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^16 ^12 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^15 ^11 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^14 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^13 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^12 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^11 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^10 ^-12 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^10 ^-13 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^9 ^-14 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^8 ^-15 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^7 ^-16 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^6 ^-17 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-18 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-19 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-20 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-21 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-22 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-23 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-24 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-25 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-26 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-27 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-28 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-29 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-30 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-31 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-32 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-33 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-34 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-35 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-36 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-37 minecraft:rail
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^9 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^8 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^7 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^6 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^5 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^4 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^3 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^2 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^1 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^0 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-1 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-2 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-3 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-4 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-5 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-6 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-7 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-8 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-9 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-10 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-11 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-12 ^5 ^-38 minecraft:rail
execute as @s at @s rotated as @s run setblock ^-13 ^5 ^-38 minecraft:rail

# Power sources and powered rails are applied after all supports, keeping every boost energized.
execute as @s at @s rotated as @s run setblock ^-14 ^9 ^-20 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^-20 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^18 ^-11 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^19 ^-11 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^27 ^-2 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^28 ^-2 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^36 ^7 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^37 ^7 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^36 ^16 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^37 ^16 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^27 ^25 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^28 ^25 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^18 ^34 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^19 ^34 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^9 ^43 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^10 ^43 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-6 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-6 ^9 ^44 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^3 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^3 ^9 ^44 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^12 ^15 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^12 ^16 ^44 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^21 ^12 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^21 ^13 ^44 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^30 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^30 ^9 ^44 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^39 ^8 ^44 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^39 ^9 ^44 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^42 ^13 ^38 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^14 ^38 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^42 ^22 ^29 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^23 ^29 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^42 ^23 ^20 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^24 ^20 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^42 ^14 ^11 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^15 ^11 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^42 ^9 ^2 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^10 ^2 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^42 ^9 ^-7 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^42 ^10 ^-7 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^38 ^9 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^38 ^10 ^-12 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^29 ^14 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^29 ^15 ^-12 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^20 ^15 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^20 ^16 ^-12 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^11 ^9 ^-12 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^11 ^10 ^-12 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-20 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-20 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^10 ^4 ^-29 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-29 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^1 ^4 ^-38 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^1 ^5 ^-38 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-8 ^4 ^-38 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-8 ^5 ^-38 minecraft:golden_rail

# Station trigger rail and launch lights.
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-34 minecraft:detector_rail
execute as @s at @s rotated as @s run setblock ^-16 ^5 ^-34 minecraft:redstone_lamp
execute as @s at @s rotated as @s run setblock ^-12 ^5 ^-34 minecraft:redstone_lamp
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-30 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-30 minecraft:redstone_block
execute as @s at @s rotated as @s run setblock ^-14 ^5 ^-29 minecraft:golden_rail
execute as @s at @s rotated as @s run setblock ^-14 ^4 ^-29 minecraft:redstone_block

# === FINAL SAFETY RAILS, BENCHES, AND RIDE VEHICLE ===
execute as @s at @s rotated as @s run fill ^-21 ^6 ^-39 ^-17 ^6 ^-39 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-11 ^6 ^-39 ^-7 ^6 ^-39 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-21 ^6 ^-24 ^-17 ^6 ^-24 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-11 ^6 ^-24 ^-7 ^6 ^-24 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-38 ^0 ^-17 ^-36 ^0 ^-17 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-38 ^1 ^-17 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-36 ^1 ^-17 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-29 ^0 ^-17 ^-27 ^0 ^-17 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-29 ^1 ^-17 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-27 ^1 ^-17 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-38 ^0 ^-13 ^-36 ^0 ^-13 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-38 ^1 ^-13 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-36 ^1 ^-13 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-29 ^0 ^-13 ^-27 ^0 ^-13 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-29 ^1 ^-13 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-27 ^1 ^-13 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-4 ^0 ^-5 ^-2 ^0 ^-5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-4 ^1 ^-5 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-2 ^1 ^-5 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-4 ^0 ^3 ^-2 ^0 ^3 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-4 ^1 ^3 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-2 ^1 ^3 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-4 ^0 ^15 ^-2 ^0 ^15 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-4 ^1 ^15 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-2 ^1 ^15 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-4 ^0 ^27 ^-2 ^0 ^27 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-4 ^1 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^-2 ^1 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run summon minecraft:minecart ^-14 ^6 ^-32
execute as @s at @s rotated as @s run say Aurora Velocity construction complete - board at the elevated station
