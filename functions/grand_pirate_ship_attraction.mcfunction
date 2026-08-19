# GRAND PIRATE SHIP PARK ATTRACTION - Minecraft Bedrock Edition
# Stand at ground level at the CENTER, face a cardinal direction, and look horizontally, then run this function.
# Coordinates use your view: ^left, ^up, ^forward. The main entrance is behind you.
# Approximate footprint: 104 x 90 blocks; maximum height: about 52 blocks.
# This function builds a static pirate-ship ride attraction.

# === FOUNDATION & THEMED PLAZA ===
fill ^-52 ^-2 ^-45 ^52 ^-2 ^45 minecraft:stone_bricks
fill ^-50 ^-1 ^-43 ^50 ^-1 ^43 minecraft:smooth_stone
fill ^-42 ^-1 ^-34 ^42 ^-1 ^34 minecraft:polished_andesite
fill ^-5 ^-1 ^-43 ^5 ^-1 ^43 minecraft:dark_oak_planks
fill ^-2 ^-1 ^-12 ^2 ^-1 ^12 minecraft:gold_block
fill ^-12 ^-1 ^-2 ^12 ^-1 ^2 minecraft:gold_block
setblock ^ ^-1 ^ minecraft:sea_lantern

# === PERIMETER FENCE & ENTRANCE ===
fill ^-52 ^ ^-45 ^-10 ^ ^-45 minecraft:dark_oak_fence
fill ^10 ^ ^-45 ^52 ^ ^-45 minecraft:dark_oak_fence
fill ^-52 ^ ^45 ^52 ^ ^45 minecraft:dark_oak_fence
fill ^-52 ^ ^-45 ^-52 ^ ^45 minecraft:dark_oak_fence
fill ^52 ^ ^-45 ^52 ^ ^45 minecraft:dark_oak_fence
fill ^-10 ^ ^-45 ^-7 ^10 ^-45 minecraft:dark_oak_log
fill ^7 ^ ^-45 ^10 ^10 ^-45 minecraft:dark_oak_log
fill ^-10 ^10 ^-45 ^10 ^13 ^-45 minecraft:dark_oak_planks
fill ^-7 ^13 ^-45 ^7 ^15 ^-45 minecraft:black_wool
fill ^-2 ^13 ^-46 ^2 ^16 ^-46 minecraft:white_wool
setblock ^-1 ^15 ^-47 minecraft:black_wool
setblock ^1 ^15 ^-47 minecraft:black_wool
setblock ^ ^13 ^-47 minecraft:black_wool
setblock ^-5 ^12 ^-46 minecraft:quartz_block
setblock ^-4 ^12 ^-46 minecraft:quartz_block
setblock ^-3 ^13 ^-46 minecraft:quartz_block
setblock ^-2 ^14 ^-46 minecraft:quartz_block
setblock ^-1 ^14 ^-46 minecraft:quartz_block
setblock ^ ^14 ^-46 minecraft:quartz_block
setblock ^1 ^15 ^-46 minecraft:quartz_block
setblock ^2 ^16 ^-46 minecraft:quartz_block
setblock ^3 ^16 ^-46 minecraft:quartz_block
setblock ^4 ^16 ^-46 minecraft:quartz_block
setblock ^5 ^17 ^-46 minecraft:quartz_block
setblock ^5 ^12 ^-46 minecraft:quartz_block
setblock ^4 ^12 ^-46 minecraft:quartz_block
setblock ^3 ^13 ^-46 minecraft:quartz_block
setblock ^2 ^14 ^-46 minecraft:quartz_block
setblock ^1 ^14 ^-46 minecraft:quartz_block
setblock ^ ^14 ^-46 minecraft:quartz_block
setblock ^-1 ^15 ^-46 minecraft:quartz_block
setblock ^-2 ^16 ^-46 minecraft:quartz_block
setblock ^-3 ^16 ^-46 minecraft:quartz_block
setblock ^-4 ^16 ^-46 minecraft:quartz_block
setblock ^-5 ^17 ^-46 minecraft:quartz_block

# === SERPENTINE QUEUE ===
fill ^-47 ^-1 ^-40 ^-18 ^-1 ^-21 minecraft:smooth_stone
fill ^-45 ^ ^-38 ^-20 ^ ^-38 minecraft:dark_oak_fence
fill ^-45 ^ ^-34 ^-20 ^ ^-34 minecraft:dark_oak_fence
fill ^-45 ^ ^-30 ^-20 ^ ^-30 minecraft:dark_oak_fence
fill ^-45 ^ ^-26 ^-20 ^ ^-26 minecraft:dark_oak_fence
fill ^-45 ^ ^-22 ^-20 ^ ^-22 minecraft:dark_oak_fence
fill ^-45 ^ ^-38 ^-45 ^ ^-22 minecraft:dark_oak_fence
fill ^-20 ^ ^-34 ^-20 ^ ^-30 minecraft:dark_oak_fence
fill ^-20 ^ ^-26 ^-20 ^ ^-21 minecraft:dark_oak_fence
fill ^-43 ^ ^-37 ^-43 ^3 ^-37 minecraft:dark_oak_fence
setblock ^-43 ^4 ^-37 minecraft:lantern
fill ^-34 ^ ^-33 ^-34 ^3 ^-33 minecraft:dark_oak_fence
setblock ^-34 ^4 ^-33 minecraft:lantern
fill ^-25 ^ ^-29 ^-25 ^3 ^-29 minecraft:dark_oak_fence
setblock ^-25 ^4 ^-29 minecraft:lantern
fill ^-43 ^ ^-25 ^-43 ^3 ^-25 minecraft:dark_oak_fence
setblock ^-43 ^4 ^-25 minecraft:lantern

# === TICKET BOOTH ===
fill ^20 ^ ^-40 ^36 ^ ^-28 minecraft:stone_bricks
fill ^21 ^1 ^-39 ^35 ^6 ^-29 minecraft:dark_oak_planks
fill ^22 ^3 ^-40 ^34 ^5 ^-40 minecraft:glass
fill ^20 ^7 ^-40 ^36 ^8 ^-28 minecraft:red_wool
fill ^22 ^8 ^-41 ^34 ^9 ^-41 minecraft:black_wool
fill ^23 ^1 ^-41 ^33 ^2 ^-40 minecraft:spruce_planks
setblock ^20 ^9 ^-34 minecraft:lantern
setblock ^36 ^9 ^-34 minecraft:lantern

# === RIDE SUPPORT FOOTINGS ===
fill ^-32 ^-1 ^-16 ^-24 ^1 ^-8 minecraft:stone_bricks
fill ^-32 ^-1 ^8 ^-24 ^1 ^16 minecraft:stone_bricks
fill ^24 ^-1 ^-16 ^32 ^1 ^-8 minecraft:stone_bricks
fill ^24 ^-1 ^8 ^32 ^1 ^16 minecraft:stone_bricks

# === GIANT A-FRAME SUPPORTS ===
fill ^-29 ^2 ^-11 ^-27 ^2 ^-9 minecraft:dark_oak_log
fill ^27 ^2 ^-11 ^29 ^2 ^-9 minecraft:dark_oak_log
fill ^-28 ^3 ^-11 ^-26 ^3 ^-9 minecraft:dark_oak_log
fill ^26 ^3 ^-11 ^28 ^3 ^-9 minecraft:dark_oak_log
fill ^-28 ^4 ^-11 ^-26 ^4 ^-9 minecraft:dark_oak_log
fill ^26 ^4 ^-11 ^28 ^4 ^-9 minecraft:dark_oak_log
fill ^-27 ^5 ^-11 ^-25 ^5 ^-9 minecraft:dark_oak_log
fill ^25 ^5 ^-11 ^27 ^5 ^-9 minecraft:dark_oak_log
fill ^-26 ^6 ^-11 ^-24 ^6 ^-9 minecraft:dark_oak_log
fill ^24 ^6 ^-11 ^26 ^6 ^-9 minecraft:dark_oak_log
fill ^-26 ^7 ^-11 ^-24 ^7 ^-9 minecraft:dark_oak_log
fill ^24 ^7 ^-11 ^26 ^7 ^-9 minecraft:dark_oak_log
fill ^-25 ^8 ^-11 ^-23 ^8 ^-9 minecraft:dark_oak_log
fill ^23 ^8 ^-11 ^25 ^8 ^-9 minecraft:dark_oak_log
fill ^-24 ^9 ^-11 ^-22 ^9 ^-9 minecraft:dark_oak_log
fill ^22 ^9 ^-11 ^24 ^9 ^-9 minecraft:dark_oak_log
fill ^-24 ^10 ^-11 ^-22 ^10 ^-9 minecraft:dark_oak_log
fill ^22 ^10 ^-11 ^24 ^10 ^-9 minecraft:dark_oak_log
fill ^-23 ^11 ^-11 ^-21 ^11 ^-9 minecraft:dark_oak_log
fill ^21 ^11 ^-11 ^23 ^11 ^-9 minecraft:dark_oak_log
fill ^-22 ^12 ^-11 ^-20 ^12 ^-9 minecraft:dark_oak_log
fill ^20 ^12 ^-11 ^22 ^12 ^-9 minecraft:dark_oak_log
fill ^-21 ^13 ^-11 ^-19 ^13 ^-9 minecraft:dark_oak_log
fill ^19 ^13 ^-11 ^21 ^13 ^-9 minecraft:dark_oak_log
fill ^-21 ^14 ^-11 ^-19 ^14 ^-9 minecraft:dark_oak_log
fill ^19 ^14 ^-11 ^21 ^14 ^-9 minecraft:dark_oak_log
fill ^-20 ^15 ^-11 ^-18 ^15 ^-9 minecraft:dark_oak_log
fill ^18 ^15 ^-11 ^20 ^15 ^-9 minecraft:dark_oak_log
fill ^-19 ^16 ^-11 ^-17 ^16 ^-9 minecraft:dark_oak_log
fill ^17 ^16 ^-11 ^19 ^16 ^-9 minecraft:dark_oak_log
fill ^-19 ^17 ^-11 ^-17 ^17 ^-9 minecraft:dark_oak_log
fill ^17 ^17 ^-11 ^19 ^17 ^-9 minecraft:dark_oak_log
fill ^-18 ^18 ^-11 ^-16 ^18 ^-9 minecraft:dark_oak_log
fill ^16 ^18 ^-11 ^18 ^18 ^-9 minecraft:dark_oak_log
fill ^-17 ^19 ^-11 ^-15 ^19 ^-9 minecraft:dark_oak_log
fill ^15 ^19 ^-11 ^17 ^19 ^-9 minecraft:dark_oak_log
fill ^-17 ^20 ^-11 ^-15 ^20 ^-9 minecraft:dark_oak_log
fill ^15 ^20 ^-11 ^17 ^20 ^-9 minecraft:dark_oak_log
fill ^-16 ^21 ^-11 ^-14 ^21 ^-9 minecraft:dark_oak_log
fill ^14 ^21 ^-11 ^16 ^21 ^-9 minecraft:dark_oak_log
fill ^-15 ^22 ^-11 ^-13 ^22 ^-9 minecraft:dark_oak_log
fill ^13 ^22 ^-11 ^15 ^22 ^-9 minecraft:dark_oak_log
fill ^-15 ^23 ^-11 ^-13 ^23 ^-9 minecraft:dark_oak_log
fill ^13 ^23 ^-11 ^15 ^23 ^-9 minecraft:dark_oak_log
fill ^-14 ^24 ^-11 ^-12 ^24 ^-9 minecraft:dark_oak_log
fill ^12 ^24 ^-11 ^14 ^24 ^-9 minecraft:dark_oak_log
fill ^-13 ^25 ^-11 ^-11 ^25 ^-9 minecraft:dark_oak_log
fill ^11 ^25 ^-11 ^13 ^25 ^-9 minecraft:dark_oak_log
fill ^-13 ^26 ^-11 ^-11 ^26 ^-9 minecraft:dark_oak_log
fill ^11 ^26 ^-11 ^13 ^26 ^-9 minecraft:dark_oak_log
fill ^-12 ^27 ^-11 ^-10 ^27 ^-9 minecraft:dark_oak_log
fill ^10 ^27 ^-11 ^12 ^27 ^-9 minecraft:dark_oak_log
fill ^-11 ^28 ^-11 ^-9 ^28 ^-9 minecraft:dark_oak_log
fill ^9 ^28 ^-11 ^11 ^28 ^-9 minecraft:dark_oak_log
fill ^-10 ^29 ^-11 ^-8 ^29 ^-9 minecraft:dark_oak_log
fill ^8 ^29 ^-11 ^10 ^29 ^-9 minecraft:dark_oak_log
fill ^-10 ^30 ^-11 ^-8 ^30 ^-9 minecraft:dark_oak_log
fill ^8 ^30 ^-11 ^10 ^30 ^-9 minecraft:dark_oak_log
fill ^-9 ^31 ^-11 ^-7 ^31 ^-9 minecraft:dark_oak_log
fill ^7 ^31 ^-11 ^9 ^31 ^-9 minecraft:dark_oak_log
fill ^-8 ^32 ^-11 ^-6 ^32 ^-9 minecraft:dark_oak_log
fill ^6 ^32 ^-11 ^8 ^32 ^-9 minecraft:dark_oak_log
fill ^-8 ^33 ^-11 ^-6 ^33 ^-9 minecraft:dark_oak_log
fill ^6 ^33 ^-11 ^8 ^33 ^-9 minecraft:dark_oak_log
fill ^-7 ^34 ^-11 ^-5 ^34 ^-9 minecraft:dark_oak_log
fill ^5 ^34 ^-11 ^7 ^34 ^-9 minecraft:dark_oak_log
fill ^-6 ^35 ^-11 ^-4 ^35 ^-9 minecraft:dark_oak_log
fill ^4 ^35 ^-11 ^6 ^35 ^-9 minecraft:dark_oak_log
fill ^-6 ^36 ^-11 ^-4 ^36 ^-9 minecraft:dark_oak_log
fill ^4 ^36 ^-11 ^6 ^36 ^-9 minecraft:dark_oak_log
fill ^-5 ^37 ^-11 ^-3 ^37 ^-9 minecraft:dark_oak_log
fill ^3 ^37 ^-11 ^5 ^37 ^-9 minecraft:dark_oak_log
fill ^-21 ^10 ^-11 ^21 ^11 ^-9 minecraft:spruce_planks
fill ^-16 ^18 ^-11 ^16 ^19 ^-9 minecraft:spruce_planks
fill ^-11 ^26 ^-11 ^11 ^27 ^-9 minecraft:spruce_planks
fill ^-6 ^33 ^-11 ^6 ^34 ^-9 minecraft:spruce_planks
fill ^-29 ^2 ^9 ^-27 ^2 ^11 minecraft:dark_oak_log
fill ^27 ^2 ^9 ^29 ^2 ^11 minecraft:dark_oak_log
fill ^-28 ^3 ^9 ^-26 ^3 ^11 minecraft:dark_oak_log
fill ^26 ^3 ^9 ^28 ^3 ^11 minecraft:dark_oak_log
fill ^-28 ^4 ^9 ^-26 ^4 ^11 minecraft:dark_oak_log
fill ^26 ^4 ^9 ^28 ^4 ^11 minecraft:dark_oak_log
fill ^-27 ^5 ^9 ^-25 ^5 ^11 minecraft:dark_oak_log
fill ^25 ^5 ^9 ^27 ^5 ^11 minecraft:dark_oak_log
fill ^-26 ^6 ^9 ^-24 ^6 ^11 minecraft:dark_oak_log
fill ^24 ^6 ^9 ^26 ^6 ^11 minecraft:dark_oak_log
fill ^-26 ^7 ^9 ^-24 ^7 ^11 minecraft:dark_oak_log
fill ^24 ^7 ^9 ^26 ^7 ^11 minecraft:dark_oak_log
fill ^-25 ^8 ^9 ^-23 ^8 ^11 minecraft:dark_oak_log
fill ^23 ^8 ^9 ^25 ^8 ^11 minecraft:dark_oak_log
fill ^-24 ^9 ^9 ^-22 ^9 ^11 minecraft:dark_oak_log
fill ^22 ^9 ^9 ^24 ^9 ^11 minecraft:dark_oak_log
fill ^-24 ^10 ^9 ^-22 ^10 ^11 minecraft:dark_oak_log
fill ^22 ^10 ^9 ^24 ^10 ^11 minecraft:dark_oak_log
fill ^-23 ^11 ^9 ^-21 ^11 ^11 minecraft:dark_oak_log
fill ^21 ^11 ^9 ^23 ^11 ^11 minecraft:dark_oak_log
fill ^-22 ^12 ^9 ^-20 ^12 ^11 minecraft:dark_oak_log
fill ^20 ^12 ^9 ^22 ^12 ^11 minecraft:dark_oak_log
fill ^-21 ^13 ^9 ^-19 ^13 ^11 minecraft:dark_oak_log
fill ^19 ^13 ^9 ^21 ^13 ^11 minecraft:dark_oak_log
fill ^-21 ^14 ^9 ^-19 ^14 ^11 minecraft:dark_oak_log
fill ^19 ^14 ^9 ^21 ^14 ^11 minecraft:dark_oak_log
fill ^-20 ^15 ^9 ^-18 ^15 ^11 minecraft:dark_oak_log
fill ^18 ^15 ^9 ^20 ^15 ^11 minecraft:dark_oak_log
fill ^-19 ^16 ^9 ^-17 ^16 ^11 minecraft:dark_oak_log
fill ^17 ^16 ^9 ^19 ^16 ^11 minecraft:dark_oak_log
fill ^-19 ^17 ^9 ^-17 ^17 ^11 minecraft:dark_oak_log
fill ^17 ^17 ^9 ^19 ^17 ^11 minecraft:dark_oak_log
fill ^-18 ^18 ^9 ^-16 ^18 ^11 minecraft:dark_oak_log
fill ^16 ^18 ^9 ^18 ^18 ^11 minecraft:dark_oak_log
fill ^-17 ^19 ^9 ^-15 ^19 ^11 minecraft:dark_oak_log
fill ^15 ^19 ^9 ^17 ^19 ^11 minecraft:dark_oak_log
fill ^-17 ^20 ^9 ^-15 ^20 ^11 minecraft:dark_oak_log
fill ^15 ^20 ^9 ^17 ^20 ^11 minecraft:dark_oak_log
fill ^-16 ^21 ^9 ^-14 ^21 ^11 minecraft:dark_oak_log
fill ^14 ^21 ^9 ^16 ^21 ^11 minecraft:dark_oak_log
fill ^-15 ^22 ^9 ^-13 ^22 ^11 minecraft:dark_oak_log
fill ^13 ^22 ^9 ^15 ^22 ^11 minecraft:dark_oak_log
fill ^-15 ^23 ^9 ^-13 ^23 ^11 minecraft:dark_oak_log
fill ^13 ^23 ^9 ^15 ^23 ^11 minecraft:dark_oak_log
fill ^-14 ^24 ^9 ^-12 ^24 ^11 minecraft:dark_oak_log
fill ^12 ^24 ^9 ^14 ^24 ^11 minecraft:dark_oak_log
fill ^-13 ^25 ^9 ^-11 ^25 ^11 minecraft:dark_oak_log
fill ^11 ^25 ^9 ^13 ^25 ^11 minecraft:dark_oak_log
fill ^-13 ^26 ^9 ^-11 ^26 ^11 minecraft:dark_oak_log
fill ^11 ^26 ^9 ^13 ^26 ^11 minecraft:dark_oak_log
fill ^-12 ^27 ^9 ^-10 ^27 ^11 minecraft:dark_oak_log
fill ^10 ^27 ^9 ^12 ^27 ^11 minecraft:dark_oak_log
fill ^-11 ^28 ^9 ^-9 ^28 ^11 minecraft:dark_oak_log
fill ^9 ^28 ^9 ^11 ^28 ^11 minecraft:dark_oak_log
fill ^-10 ^29 ^9 ^-8 ^29 ^11 minecraft:dark_oak_log
fill ^8 ^29 ^9 ^10 ^29 ^11 minecraft:dark_oak_log
fill ^-10 ^30 ^9 ^-8 ^30 ^11 minecraft:dark_oak_log
fill ^8 ^30 ^9 ^10 ^30 ^11 minecraft:dark_oak_log
fill ^-9 ^31 ^9 ^-7 ^31 ^11 minecraft:dark_oak_log
fill ^7 ^31 ^9 ^9 ^31 ^11 minecraft:dark_oak_log
fill ^-8 ^32 ^9 ^-6 ^32 ^11 minecraft:dark_oak_log
fill ^6 ^32 ^9 ^8 ^32 ^11 minecraft:dark_oak_log
fill ^-8 ^33 ^9 ^-6 ^33 ^11 minecraft:dark_oak_log
fill ^6 ^33 ^9 ^8 ^33 ^11 minecraft:dark_oak_log
fill ^-7 ^34 ^9 ^-5 ^34 ^11 minecraft:dark_oak_log
fill ^5 ^34 ^9 ^7 ^34 ^11 minecraft:dark_oak_log
fill ^-6 ^35 ^9 ^-4 ^35 ^11 minecraft:dark_oak_log
fill ^4 ^35 ^9 ^6 ^35 ^11 minecraft:dark_oak_log
fill ^-6 ^36 ^9 ^-4 ^36 ^11 minecraft:dark_oak_log
fill ^4 ^36 ^9 ^6 ^36 ^11 minecraft:dark_oak_log
fill ^-5 ^37 ^9 ^-3 ^37 ^11 minecraft:dark_oak_log
fill ^3 ^37 ^9 ^5 ^37 ^11 minecraft:dark_oak_log
fill ^-21 ^10 ^9 ^21 ^11 ^11 minecraft:spruce_planks
fill ^-16 ^18 ^9 ^16 ^19 ^11 minecraft:spruce_planks
fill ^-11 ^26 ^9 ^11 ^27 ^11 minecraft:spruce_planks
fill ^-6 ^33 ^9 ^6 ^34 ^11 minecraft:spruce_planks
fill ^-6 ^36 ^-14 ^6 ^40 ^14 minecraft:dark_oak_log
fill ^-3 ^37 ^-16 ^3 ^39 ^16 minecraft:iron_block
fill ^-2 ^37 ^-18 ^2 ^39 ^18 minecraft:gold_block
setblock ^ ^38 ^-19 minecraft:sea_lantern
setblock ^ ^38 ^19 minecraft:sea_lantern

# === MASSIVE PIRATE GALLEON HULL ===
fill ^-32 ^8 ^-1 ^-31 ^8 ^1 minecraft:dark_oak_log
fill ^-32 ^9 ^-3 ^-31 ^9 ^3 minecraft:dark_oak_planks
fill ^-32 ^10 ^-3 ^-31 ^10 ^3 minecraft:dark_oak_planks
fill ^-32 ^11 ^-4 ^-31 ^11 ^4 minecraft:spruce_planks
fill ^-32 ^12 ^-3 ^-31 ^12 ^3 minecraft:spruce_planks
fill ^-32 ^13 ^-3 ^-31 ^13 ^3 minecraft:oak_planks
fill ^-32 ^14 ^-4 ^-31 ^14 ^-4 minecraft:dark_oak_planks
fill ^-32 ^14 ^4 ^-31 ^14 ^4 minecraft:dark_oak_planks
fill ^-30 ^8 ^-1 ^-29 ^8 ^1 minecraft:dark_oak_log
fill ^-30 ^9 ^-3 ^-29 ^9 ^3 minecraft:dark_oak_planks
fill ^-30 ^10 ^-3 ^-29 ^10 ^3 minecraft:dark_oak_planks
fill ^-30 ^11 ^-4 ^-29 ^11 ^4 minecraft:spruce_planks
fill ^-30 ^12 ^-3 ^-29 ^12 ^3 minecraft:spruce_planks
fill ^-30 ^13 ^-3 ^-29 ^13 ^3 minecraft:oak_planks
fill ^-30 ^14 ^-4 ^-29 ^14 ^-4 minecraft:dark_oak_planks
fill ^-30 ^14 ^4 ^-29 ^14 ^4 minecraft:dark_oak_planks
fill ^-28 ^8 ^-1 ^-27 ^8 ^1 minecraft:dark_oak_log
fill ^-28 ^9 ^-3 ^-27 ^9 ^3 minecraft:dark_oak_planks
fill ^-28 ^10 ^-3 ^-27 ^10 ^3 minecraft:dark_oak_planks
fill ^-28 ^11 ^-4 ^-27 ^11 ^4 minecraft:spruce_planks
fill ^-28 ^12 ^-4 ^-27 ^12 ^4 minecraft:spruce_planks
fill ^-28 ^13 ^-4 ^-27 ^13 ^4 minecraft:oak_planks
fill ^-28 ^14 ^-5 ^-27 ^14 ^-5 minecraft:dark_oak_planks
fill ^-28 ^14 ^5 ^-27 ^14 ^5 minecraft:dark_oak_planks
fill ^-26 ^8 ^-1 ^-25 ^8 ^1 minecraft:dark_oak_log
fill ^-26 ^9 ^-3 ^-25 ^9 ^3 minecraft:dark_oak_planks
fill ^-26 ^10 ^-3 ^-25 ^10 ^3 minecraft:dark_oak_planks
fill ^-26 ^11 ^-4 ^-25 ^11 ^4 minecraft:spruce_planks
fill ^-26 ^12 ^-4 ^-25 ^12 ^4 minecraft:spruce_planks
fill ^-26 ^13 ^-4 ^-25 ^13 ^4 minecraft:oak_planks
fill ^-26 ^14 ^-5 ^-25 ^14 ^-5 minecraft:dark_oak_planks
fill ^-26 ^14 ^5 ^-25 ^14 ^5 minecraft:dark_oak_planks
fill ^-24 ^9 ^-1 ^-23 ^9 ^1 minecraft:dark_oak_log
fill ^-24 ^10 ^-3 ^-23 ^10 ^3 minecraft:dark_oak_planks
fill ^-24 ^11 ^-3 ^-23 ^11 ^3 minecraft:dark_oak_planks
fill ^-24 ^12 ^-4 ^-23 ^12 ^4 minecraft:spruce_planks
fill ^-24 ^13 ^-4 ^-23 ^13 ^4 minecraft:spruce_planks
fill ^-24 ^14 ^-4 ^-23 ^14 ^4 minecraft:oak_planks
fill ^-24 ^15 ^-5 ^-23 ^15 ^-5 minecraft:dark_oak_planks
fill ^-24 ^15 ^5 ^-23 ^15 ^5 minecraft:dark_oak_planks
fill ^-22 ^9 ^-1 ^-21 ^9 ^1 minecraft:dark_oak_log
fill ^-22 ^10 ^-3 ^-21 ^10 ^3 minecraft:dark_oak_planks
fill ^-22 ^11 ^-3 ^-21 ^11 ^3 minecraft:dark_oak_planks
fill ^-22 ^12 ^-4 ^-21 ^12 ^4 minecraft:spruce_planks
fill ^-22 ^13 ^-5 ^-21 ^13 ^5 minecraft:spruce_planks
fill ^-22 ^14 ^-5 ^-21 ^14 ^5 minecraft:oak_planks
fill ^-22 ^15 ^-6 ^-21 ^15 ^-6 minecraft:dark_oak_planks
fill ^-22 ^15 ^6 ^-21 ^15 ^6 minecraft:dark_oak_planks
fill ^-20 ^9 ^-1 ^-19 ^9 ^1 minecraft:dark_oak_log
fill ^-20 ^10 ^-3 ^-19 ^10 ^3 minecraft:dark_oak_planks
fill ^-20 ^11 ^-3 ^-19 ^11 ^3 minecraft:dark_oak_planks
fill ^-20 ^12 ^-4 ^-19 ^12 ^4 minecraft:spruce_planks
fill ^-20 ^13 ^-5 ^-19 ^13 ^5 minecraft:spruce_planks
fill ^-20 ^14 ^-5 ^-19 ^14 ^5 minecraft:oak_planks
fill ^-20 ^15 ^-6 ^-19 ^15 ^-6 minecraft:dark_oak_planks
fill ^-20 ^15 ^6 ^-19 ^15 ^6 minecraft:dark_oak_planks
fill ^-18 ^9 ^-1 ^-17 ^9 ^1 minecraft:dark_oak_log
fill ^-18 ^10 ^-3 ^-17 ^10 ^3 minecraft:dark_oak_planks
fill ^-18 ^11 ^-3 ^-17 ^11 ^3 minecraft:dark_oak_planks
fill ^-18 ^12 ^-4 ^-17 ^12 ^4 minecraft:spruce_planks
fill ^-18 ^13 ^-5 ^-17 ^13 ^5 minecraft:spruce_planks
fill ^-18 ^14 ^-5 ^-17 ^14 ^5 minecraft:oak_planks
fill ^-18 ^15 ^-6 ^-17 ^15 ^-6 minecraft:dark_oak_planks
fill ^-18 ^15 ^6 ^-17 ^15 ^6 minecraft:dark_oak_planks
fill ^-16 ^9 ^-1 ^-15 ^9 ^1 minecraft:dark_oak_log
fill ^-16 ^10 ^-3 ^-15 ^10 ^3 minecraft:dark_oak_planks
fill ^-16 ^11 ^-3 ^-15 ^11 ^3 minecraft:dark_oak_planks
fill ^-16 ^12 ^-4 ^-15 ^12 ^4 minecraft:spruce_planks
fill ^-16 ^13 ^-6 ^-15 ^13 ^6 minecraft:spruce_planks
fill ^-16 ^14 ^-6 ^-15 ^14 ^6 minecraft:oak_planks
fill ^-16 ^15 ^-7 ^-15 ^15 ^-7 minecraft:dark_oak_planks
fill ^-16 ^15 ^7 ^-15 ^15 ^7 minecraft:dark_oak_planks
fill ^-14 ^9 ^-1 ^-13 ^9 ^1 minecraft:dark_oak_log
fill ^-14 ^10 ^-3 ^-13 ^10 ^3 minecraft:dark_oak_planks
fill ^-14 ^11 ^-3 ^-13 ^11 ^3 minecraft:dark_oak_planks
fill ^-14 ^12 ^-4 ^-13 ^12 ^4 minecraft:spruce_planks
fill ^-14 ^13 ^-6 ^-13 ^13 ^6 minecraft:spruce_planks
fill ^-14 ^14 ^-6 ^-13 ^14 ^6 minecraft:oak_planks
fill ^-14 ^15 ^-7 ^-13 ^15 ^-7 minecraft:dark_oak_planks
fill ^-14 ^15 ^7 ^-13 ^15 ^7 minecraft:dark_oak_planks
fill ^-12 ^9 ^-1 ^-11 ^9 ^1 minecraft:dark_oak_log
fill ^-12 ^10 ^-3 ^-11 ^10 ^3 minecraft:dark_oak_planks
fill ^-12 ^11 ^-3 ^-11 ^11 ^3 minecraft:dark_oak_planks
fill ^-12 ^12 ^-4 ^-11 ^12 ^4 minecraft:spruce_planks
fill ^-12 ^13 ^-6 ^-11 ^13 ^6 minecraft:spruce_planks
fill ^-12 ^14 ^-6 ^-11 ^14 ^6 minecraft:oak_planks
fill ^-12 ^15 ^-7 ^-11 ^15 ^-7 minecraft:dark_oak_planks
fill ^-12 ^15 ^7 ^-11 ^15 ^7 minecraft:dark_oak_planks
fill ^-10 ^9 ^-1 ^-9 ^9 ^1 minecraft:dark_oak_log
fill ^-10 ^10 ^-3 ^-9 ^10 ^3 minecraft:dark_oak_planks
fill ^-10 ^11 ^-3 ^-9 ^11 ^3 minecraft:dark_oak_planks
fill ^-10 ^12 ^-4 ^-9 ^12 ^4 minecraft:spruce_planks
fill ^-10 ^13 ^-6 ^-9 ^13 ^6 minecraft:spruce_planks
fill ^-10 ^14 ^-6 ^-9 ^14 ^6 minecraft:oak_planks
fill ^-10 ^15 ^-7 ^-9 ^15 ^-7 minecraft:dark_oak_planks
fill ^-10 ^15 ^7 ^-9 ^15 ^7 minecraft:dark_oak_planks
fill ^-8 ^10 ^-1 ^-7 ^10 ^1 minecraft:dark_oak_log
fill ^-8 ^11 ^-3 ^-7 ^11 ^3 minecraft:dark_oak_planks
fill ^-8 ^12 ^-4 ^-7 ^12 ^4 minecraft:dark_oak_planks
fill ^-8 ^13 ^-5 ^-7 ^13 ^5 minecraft:spruce_planks
fill ^-8 ^14 ^-7 ^-7 ^14 ^7 minecraft:spruce_planks
fill ^-8 ^15 ^-7 ^-7 ^15 ^7 minecraft:oak_planks
fill ^-8 ^16 ^-8 ^-7 ^16 ^-8 minecraft:dark_oak_planks
fill ^-8 ^16 ^8 ^-7 ^16 ^8 minecraft:dark_oak_planks
fill ^-6 ^10 ^-1 ^-5 ^10 ^1 minecraft:dark_oak_log
fill ^-6 ^11 ^-3 ^-5 ^11 ^3 minecraft:dark_oak_planks
fill ^-6 ^12 ^-4 ^-5 ^12 ^4 minecraft:dark_oak_planks
fill ^-6 ^13 ^-5 ^-5 ^13 ^5 minecraft:spruce_planks
fill ^-6 ^14 ^-7 ^-5 ^14 ^7 minecraft:spruce_planks
fill ^-6 ^15 ^-7 ^-5 ^15 ^7 minecraft:oak_planks
fill ^-6 ^16 ^-8 ^-5 ^16 ^-8 minecraft:dark_oak_planks
fill ^-6 ^16 ^8 ^-5 ^16 ^8 minecraft:dark_oak_planks
fill ^-4 ^10 ^-1 ^-3 ^10 ^1 minecraft:dark_oak_log
fill ^-4 ^11 ^-3 ^-3 ^11 ^3 minecraft:dark_oak_planks
fill ^-4 ^12 ^-4 ^-3 ^12 ^4 minecraft:dark_oak_planks
fill ^-4 ^13 ^-5 ^-3 ^13 ^5 minecraft:spruce_planks
fill ^-4 ^14 ^-7 ^-3 ^14 ^7 minecraft:spruce_planks
fill ^-4 ^15 ^-7 ^-3 ^15 ^7 minecraft:oak_planks
fill ^-4 ^16 ^-8 ^-3 ^16 ^-8 minecraft:dark_oak_planks
fill ^-4 ^16 ^8 ^-3 ^16 ^8 minecraft:dark_oak_planks
fill ^-2 ^10 ^-1 ^-1 ^10 ^1 minecraft:dark_oak_log
fill ^-2 ^11 ^-3 ^-1 ^11 ^3 minecraft:dark_oak_planks
fill ^-2 ^12 ^-5 ^-1 ^12 ^5 minecraft:dark_oak_planks
fill ^-2 ^13 ^-6 ^-1 ^13 ^6 minecraft:spruce_planks
fill ^-2 ^14 ^-8 ^-1 ^14 ^8 minecraft:spruce_planks
fill ^-2 ^15 ^-8 ^-1 ^15 ^8 minecraft:oak_planks
fill ^-2 ^16 ^-9 ^-1 ^16 ^-9 minecraft:dark_oak_planks
fill ^-2 ^16 ^9 ^-1 ^16 ^9 minecraft:dark_oak_planks
fill ^ ^10 ^-1 ^1 ^10 ^1 minecraft:dark_oak_log
fill ^ ^11 ^-3 ^1 ^11 ^3 minecraft:dark_oak_planks
fill ^ ^12 ^-5 ^1 ^12 ^5 minecraft:dark_oak_planks
fill ^ ^13 ^-6 ^1 ^13 ^6 minecraft:spruce_planks
fill ^ ^14 ^-8 ^1 ^14 ^8 minecraft:spruce_planks
fill ^ ^15 ^-8 ^1 ^15 ^8 minecraft:oak_planks
fill ^ ^16 ^-9 ^1 ^16 ^-9 minecraft:dark_oak_planks
fill ^ ^16 ^9 ^1 ^16 ^9 minecraft:dark_oak_planks
fill ^2 ^10 ^-1 ^3 ^10 ^1 minecraft:dark_oak_log
fill ^2 ^11 ^-3 ^3 ^11 ^3 minecraft:dark_oak_planks
fill ^2 ^12 ^-5 ^3 ^12 ^5 minecraft:dark_oak_planks
fill ^2 ^13 ^-6 ^3 ^13 ^6 minecraft:spruce_planks
fill ^2 ^14 ^-8 ^3 ^14 ^8 minecraft:spruce_planks
fill ^2 ^15 ^-8 ^3 ^15 ^8 minecraft:oak_planks
fill ^2 ^16 ^-9 ^3 ^16 ^-9 minecraft:dark_oak_planks
fill ^2 ^16 ^9 ^3 ^16 ^9 minecraft:dark_oak_planks
fill ^4 ^10 ^-1 ^5 ^10 ^1 minecraft:dark_oak_log
fill ^4 ^11 ^-3 ^5 ^11 ^3 minecraft:dark_oak_planks
fill ^4 ^12 ^-4 ^5 ^12 ^4 minecraft:dark_oak_planks
fill ^4 ^13 ^-5 ^5 ^13 ^5 minecraft:spruce_planks
fill ^4 ^14 ^-7 ^5 ^14 ^7 minecraft:spruce_planks
fill ^4 ^15 ^-7 ^5 ^15 ^7 minecraft:oak_planks
fill ^4 ^16 ^-8 ^5 ^16 ^-8 minecraft:dark_oak_planks
fill ^4 ^16 ^8 ^5 ^16 ^8 minecraft:dark_oak_planks
fill ^6 ^10 ^-1 ^7 ^10 ^1 minecraft:dark_oak_log
fill ^6 ^11 ^-3 ^7 ^11 ^3 minecraft:dark_oak_planks
fill ^6 ^12 ^-4 ^7 ^12 ^4 minecraft:dark_oak_planks
fill ^6 ^13 ^-5 ^7 ^13 ^5 minecraft:spruce_planks
fill ^6 ^14 ^-7 ^7 ^14 ^7 minecraft:spruce_planks
fill ^6 ^15 ^-7 ^7 ^15 ^7 minecraft:oak_planks
fill ^6 ^16 ^-8 ^7 ^16 ^-8 minecraft:dark_oak_planks
fill ^6 ^16 ^8 ^7 ^16 ^8 minecraft:dark_oak_planks
fill ^8 ^10 ^-1 ^9 ^10 ^1 minecraft:dark_oak_log
fill ^8 ^11 ^-3 ^9 ^11 ^3 minecraft:dark_oak_planks
fill ^8 ^12 ^-4 ^9 ^12 ^4 minecraft:dark_oak_planks
fill ^8 ^13 ^-5 ^9 ^13 ^5 minecraft:spruce_planks
fill ^8 ^14 ^-7 ^9 ^14 ^7 minecraft:spruce_planks
fill ^8 ^15 ^-7 ^9 ^15 ^7 minecraft:oak_planks
fill ^8 ^16 ^-8 ^9 ^16 ^-8 minecraft:dark_oak_planks
fill ^8 ^16 ^8 ^9 ^16 ^8 minecraft:dark_oak_planks
fill ^10 ^11 ^-1 ^11 ^11 ^1 minecraft:dark_oak_log
fill ^10 ^12 ^-3 ^11 ^12 ^3 minecraft:dark_oak_planks
fill ^10 ^13 ^-3 ^11 ^13 ^3 minecraft:dark_oak_planks
fill ^10 ^14 ^-4 ^11 ^14 ^4 minecraft:spruce_planks
fill ^10 ^15 ^-6 ^11 ^15 ^6 minecraft:spruce_planks
fill ^10 ^16 ^-6 ^11 ^16 ^6 minecraft:oak_planks
fill ^10 ^17 ^-7 ^11 ^17 ^-7 minecraft:dark_oak_planks
fill ^10 ^17 ^7 ^11 ^17 ^7 minecraft:dark_oak_planks
fill ^12 ^11 ^-1 ^13 ^11 ^1 minecraft:dark_oak_log
fill ^12 ^12 ^-3 ^13 ^12 ^3 minecraft:dark_oak_planks
fill ^12 ^13 ^-3 ^13 ^13 ^3 minecraft:dark_oak_planks
fill ^12 ^14 ^-4 ^13 ^14 ^4 minecraft:spruce_planks
fill ^12 ^15 ^-6 ^13 ^15 ^6 minecraft:spruce_planks
fill ^12 ^16 ^-6 ^13 ^16 ^6 minecraft:oak_planks
fill ^12 ^17 ^-7 ^13 ^17 ^-7 minecraft:dark_oak_planks
fill ^12 ^17 ^7 ^13 ^17 ^7 minecraft:dark_oak_planks
fill ^14 ^11 ^-1 ^15 ^11 ^1 minecraft:dark_oak_log
fill ^14 ^12 ^-3 ^15 ^12 ^3 minecraft:dark_oak_planks
fill ^14 ^13 ^-3 ^15 ^13 ^3 minecraft:dark_oak_planks
fill ^14 ^14 ^-4 ^15 ^14 ^4 minecraft:spruce_planks
fill ^14 ^15 ^-6 ^15 ^15 ^6 minecraft:spruce_planks
fill ^14 ^16 ^-6 ^15 ^16 ^6 minecraft:oak_planks
fill ^14 ^17 ^-7 ^15 ^17 ^-7 minecraft:dark_oak_planks
fill ^14 ^17 ^7 ^15 ^17 ^7 minecraft:dark_oak_planks
fill ^16 ^11 ^-1 ^17 ^11 ^1 minecraft:dark_oak_log
fill ^16 ^12 ^-3 ^17 ^12 ^3 minecraft:dark_oak_planks
fill ^16 ^13 ^-3 ^17 ^13 ^3 minecraft:dark_oak_planks
fill ^16 ^14 ^-4 ^17 ^14 ^4 minecraft:spruce_planks
fill ^16 ^15 ^-6 ^17 ^15 ^6 minecraft:spruce_planks
fill ^16 ^16 ^-6 ^17 ^16 ^6 minecraft:oak_planks
fill ^16 ^17 ^-7 ^17 ^17 ^-7 minecraft:dark_oak_planks
fill ^16 ^17 ^7 ^17 ^17 ^7 minecraft:dark_oak_planks
fill ^18 ^11 ^-1 ^19 ^11 ^1 minecraft:dark_oak_log
fill ^18 ^12 ^-3 ^19 ^12 ^3 minecraft:dark_oak_planks
fill ^18 ^13 ^-3 ^19 ^13 ^3 minecraft:dark_oak_planks
fill ^18 ^14 ^-4 ^19 ^14 ^4 minecraft:spruce_planks
fill ^18 ^15 ^-5 ^19 ^15 ^5 minecraft:spruce_planks
fill ^18 ^16 ^-5 ^19 ^16 ^5 minecraft:oak_planks
fill ^18 ^17 ^-6 ^19 ^17 ^-6 minecraft:dark_oak_planks
fill ^18 ^17 ^6 ^19 ^17 ^6 minecraft:dark_oak_planks
fill ^20 ^11 ^-1 ^21 ^11 ^1 minecraft:dark_oak_log
fill ^20 ^12 ^-3 ^21 ^12 ^3 minecraft:dark_oak_planks
fill ^20 ^13 ^-3 ^21 ^13 ^3 minecraft:dark_oak_planks
fill ^20 ^14 ^-4 ^21 ^14 ^4 minecraft:spruce_planks
fill ^20 ^15 ^-5 ^21 ^15 ^5 minecraft:spruce_planks
fill ^20 ^16 ^-5 ^21 ^16 ^5 minecraft:oak_planks
fill ^20 ^17 ^-6 ^21 ^17 ^-6 minecraft:dark_oak_planks
fill ^20 ^17 ^6 ^21 ^17 ^6 minecraft:dark_oak_planks
fill ^22 ^11 ^-1 ^23 ^11 ^1 minecraft:dark_oak_log
fill ^22 ^12 ^-3 ^23 ^12 ^3 minecraft:dark_oak_planks
fill ^22 ^13 ^-3 ^23 ^13 ^3 minecraft:dark_oak_planks
fill ^22 ^14 ^-4 ^23 ^14 ^4 minecraft:spruce_planks
fill ^22 ^15 ^-5 ^23 ^15 ^5 minecraft:spruce_planks
fill ^22 ^16 ^-5 ^23 ^16 ^5 minecraft:oak_planks
fill ^22 ^17 ^-6 ^23 ^17 ^-6 minecraft:dark_oak_planks
fill ^22 ^17 ^6 ^23 ^17 ^6 minecraft:dark_oak_planks
fill ^24 ^11 ^-1 ^25 ^11 ^1 minecraft:dark_oak_log
fill ^24 ^12 ^-3 ^25 ^12 ^3 minecraft:dark_oak_planks
fill ^24 ^13 ^-3 ^25 ^13 ^3 minecraft:dark_oak_planks
fill ^24 ^14 ^-4 ^25 ^14 ^4 minecraft:spruce_planks
fill ^24 ^15 ^-4 ^25 ^15 ^4 minecraft:spruce_planks
fill ^24 ^16 ^-4 ^25 ^16 ^4 minecraft:oak_planks
fill ^24 ^17 ^-5 ^25 ^17 ^-5 minecraft:dark_oak_planks
fill ^24 ^17 ^5 ^25 ^17 ^5 minecraft:dark_oak_planks
fill ^26 ^12 ^-1 ^27 ^12 ^1 minecraft:dark_oak_log
fill ^26 ^13 ^-3 ^27 ^13 ^3 minecraft:dark_oak_planks
fill ^26 ^14 ^-3 ^27 ^14 ^3 minecraft:dark_oak_planks
fill ^26 ^15 ^-4 ^27 ^15 ^4 minecraft:spruce_planks
fill ^26 ^16 ^-4 ^27 ^16 ^4 minecraft:spruce_planks
fill ^26 ^17 ^-4 ^27 ^17 ^4 minecraft:oak_planks
fill ^26 ^18 ^-5 ^27 ^18 ^-5 minecraft:dark_oak_planks
fill ^26 ^18 ^5 ^27 ^18 ^5 minecraft:dark_oak_planks
fill ^28 ^12 ^-1 ^29 ^12 ^1 minecraft:dark_oak_log
fill ^28 ^13 ^-3 ^29 ^13 ^3 minecraft:dark_oak_planks
fill ^28 ^14 ^-3 ^29 ^14 ^3 minecraft:dark_oak_planks
fill ^28 ^15 ^-4 ^29 ^15 ^4 minecraft:spruce_planks
fill ^28 ^16 ^-4 ^29 ^16 ^4 minecraft:spruce_planks
fill ^28 ^17 ^-4 ^29 ^17 ^4 minecraft:oak_planks
fill ^28 ^18 ^-5 ^29 ^18 ^-5 minecraft:dark_oak_planks
fill ^28 ^18 ^5 ^29 ^18 ^5 minecraft:dark_oak_planks
fill ^30 ^12 ^-1 ^31 ^12 ^1 minecraft:dark_oak_log
fill ^30 ^13 ^-3 ^31 ^13 ^3 minecraft:dark_oak_planks
fill ^30 ^14 ^-3 ^31 ^14 ^3 minecraft:dark_oak_planks
fill ^30 ^15 ^-4 ^31 ^15 ^4 minecraft:spruce_planks
fill ^30 ^16 ^-3 ^31 ^16 ^3 minecraft:spruce_planks
fill ^30 ^17 ^-3 ^31 ^17 ^3 minecraft:oak_planks
fill ^30 ^18 ^-4 ^31 ^18 ^-4 minecraft:dark_oak_planks
fill ^30 ^18 ^4 ^31 ^18 ^4 minecraft:dark_oak_planks
fill ^32 ^12 ^-1 ^32 ^12 ^1 minecraft:dark_oak_log
fill ^32 ^13 ^-3 ^32 ^13 ^3 minecraft:dark_oak_planks
fill ^32 ^14 ^-3 ^32 ^14 ^3 minecraft:dark_oak_planks
fill ^32 ^15 ^-4 ^32 ^15 ^4 minecraft:spruce_planks
fill ^32 ^16 ^-3 ^32 ^16 ^3 minecraft:spruce_planks
fill ^32 ^17 ^-3 ^32 ^17 ^3 minecraft:oak_planks
fill ^32 ^18 ^-4 ^32 ^18 ^-4 minecraft:dark_oak_planks
fill ^32 ^18 ^4 ^32 ^18 ^4 minecraft:dark_oak_planks

# === SUSPENSION CHAINS / ARMS ===
setblock ^ ^36 ^-11 minecraft:chain
setblock ^-1 ^35 ^-11 minecraft:chain
setblock ^-2 ^34 ^-11 minecraft:chain
setblock ^-3 ^33 ^-10 minecraft:chain
setblock ^-4 ^32 ^-10 minecraft:chain
setblock ^-5 ^31 ^-10 minecraft:chain
setblock ^-6 ^30 ^-9 minecraft:chain
setblock ^-7 ^29 ^-9 minecraft:chain
setblock ^-8 ^28 ^-9 minecraft:chain
setblock ^-9 ^27 ^-9 minecraft:chain
setblock ^-10 ^26 ^-9 minecraft:chain
setblock ^-11 ^25 ^-8 minecraft:chain
setblock ^-12 ^24 ^-8 minecraft:chain
setblock ^-13 ^23 ^-8 minecraft:chain
setblock ^-14 ^22 ^-7 minecraft:chain
fill ^-15 ^20 ^-8 ^-13 ^22 ^-6 minecraft:iron_block
setblock ^ ^36 ^-11 minecraft:chain
setblock ^1 ^35 ^-11 minecraft:chain
setblock ^2 ^34 ^-11 minecraft:chain
setblock ^3 ^33 ^-10 minecraft:chain
setblock ^4 ^32 ^-10 minecraft:chain
setblock ^5 ^31 ^-10 minecraft:chain
setblock ^6 ^30 ^-9 minecraft:chain
setblock ^7 ^29 ^-9 minecraft:chain
setblock ^8 ^28 ^-9 minecraft:chain
setblock ^9 ^27 ^-9 minecraft:chain
setblock ^10 ^26 ^-9 minecraft:chain
setblock ^11 ^25 ^-8 minecraft:chain
setblock ^12 ^24 ^-8 minecraft:chain
setblock ^13 ^23 ^-8 minecraft:chain
setblock ^14 ^22 ^-7 minecraft:chain
fill ^13 ^20 ^-8 ^15 ^22 ^-6 minecraft:iron_block
setblock ^ ^36 ^11 minecraft:chain
setblock ^-1 ^35 ^11 minecraft:chain
setblock ^-2 ^34 ^11 minecraft:chain
setblock ^-3 ^33 ^10 minecraft:chain
setblock ^-4 ^32 ^10 minecraft:chain
setblock ^-5 ^31 ^10 minecraft:chain
setblock ^-6 ^30 ^9 minecraft:chain
setblock ^-7 ^29 ^9 minecraft:chain
setblock ^-8 ^28 ^9 minecraft:chain
setblock ^-9 ^27 ^9 minecraft:chain
setblock ^-10 ^26 ^9 minecraft:chain
setblock ^-11 ^25 ^8 minecraft:chain
setblock ^-12 ^24 ^8 minecraft:chain
setblock ^-13 ^23 ^8 minecraft:chain
setblock ^-14 ^22 ^7 minecraft:chain
fill ^-15 ^20 ^6 ^-13 ^22 ^8 minecraft:iron_block
setblock ^ ^36 ^11 minecraft:chain
setblock ^1 ^35 ^11 minecraft:chain
setblock ^2 ^34 ^11 minecraft:chain
setblock ^3 ^33 ^10 minecraft:chain
setblock ^4 ^32 ^10 minecraft:chain
setblock ^5 ^31 ^10 minecraft:chain
setblock ^6 ^30 ^9 minecraft:chain
setblock ^7 ^29 ^9 minecraft:chain
setblock ^8 ^28 ^9 minecraft:chain
setblock ^9 ^27 ^9 minecraft:chain
setblock ^10 ^26 ^9 minecraft:chain
setblock ^11 ^25 ^8 minecraft:chain
setblock ^12 ^24 ^8 minecraft:chain
setblock ^13 ^23 ^8 minecraft:chain
setblock ^14 ^22 ^7 minecraft:chain
fill ^13 ^20 ^6 ^15 ^22 ^8 minecraft:iron_block

# === DECK RAILS & PASSENGER BENCHES ===
setblock ^-32 ^15 ^-4 minecraft:dark_oak_fence
setblock ^-31 ^15 ^-4 minecraft:dark_oak_fence
setblock ^-32 ^15 ^4 minecraft:dark_oak_fence
setblock ^-31 ^15 ^4 minecraft:dark_oak_fence
setblock ^-30 ^15 ^-4 minecraft:dark_oak_fence
setblock ^-29 ^15 ^-4 minecraft:dark_oak_fence
setblock ^-30 ^15 ^4 minecraft:dark_oak_fence
setblock ^-29 ^15 ^4 minecraft:dark_oak_fence
setblock ^-28 ^15 ^-5 minecraft:dark_oak_fence
setblock ^-27 ^15 ^-5 minecraft:dark_oak_fence
setblock ^-28 ^15 ^5 minecraft:dark_oak_fence
setblock ^-27 ^15 ^5 minecraft:dark_oak_fence
setblock ^-26 ^15 ^-5 minecraft:dark_oak_fence
setblock ^-25 ^15 ^-5 minecraft:dark_oak_fence
setblock ^-26 ^15 ^5 minecraft:dark_oak_fence
setblock ^-25 ^15 ^5 minecraft:dark_oak_fence
setblock ^-24 ^16 ^-5 minecraft:dark_oak_fence
setblock ^-23 ^16 ^-5 minecraft:dark_oak_fence
setblock ^-24 ^16 ^5 minecraft:dark_oak_fence
setblock ^-23 ^16 ^5 minecraft:dark_oak_fence
setblock ^-22 ^16 ^-6 minecraft:dark_oak_fence
setblock ^-21 ^16 ^-6 minecraft:dark_oak_fence
setblock ^-22 ^16 ^6 minecraft:dark_oak_fence
setblock ^-21 ^16 ^6 minecraft:dark_oak_fence
setblock ^-20 ^16 ^-6 minecraft:dark_oak_fence
setblock ^-19 ^16 ^-6 minecraft:dark_oak_fence
setblock ^-20 ^16 ^6 minecraft:dark_oak_fence
setblock ^-19 ^16 ^6 minecraft:dark_oak_fence
setblock ^-18 ^16 ^-6 minecraft:dark_oak_fence
setblock ^-17 ^16 ^-6 minecraft:dark_oak_fence
setblock ^-18 ^16 ^6 minecraft:dark_oak_fence
setblock ^-17 ^16 ^6 minecraft:dark_oak_fence
setblock ^-16 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-15 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-16 ^16 ^7 minecraft:dark_oak_fence
setblock ^-15 ^16 ^7 minecraft:dark_oak_fence
setblock ^-14 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-13 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-14 ^16 ^7 minecraft:dark_oak_fence
setblock ^-13 ^16 ^7 minecraft:dark_oak_fence
setblock ^-12 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-11 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-12 ^16 ^7 minecraft:dark_oak_fence
setblock ^-11 ^16 ^7 minecraft:dark_oak_fence
setblock ^-10 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-9 ^16 ^-7 minecraft:dark_oak_fence
setblock ^-10 ^16 ^7 minecraft:dark_oak_fence
setblock ^-9 ^16 ^7 minecraft:dark_oak_fence
setblock ^-8 ^17 ^-8 minecraft:dark_oak_fence
setblock ^-7 ^17 ^-8 minecraft:dark_oak_fence
setblock ^-8 ^17 ^8 minecraft:dark_oak_fence
setblock ^-7 ^17 ^8 minecraft:dark_oak_fence
setblock ^-6 ^17 ^-8 minecraft:dark_oak_fence
setblock ^-5 ^17 ^-8 minecraft:dark_oak_fence
setblock ^-6 ^17 ^8 minecraft:dark_oak_fence
setblock ^-5 ^17 ^8 minecraft:dark_oak_fence
setblock ^-4 ^17 ^-8 minecraft:dark_oak_fence
setblock ^-3 ^17 ^-8 minecraft:dark_oak_fence
setblock ^-4 ^17 ^8 minecraft:dark_oak_fence
setblock ^-3 ^17 ^8 minecraft:dark_oak_fence
setblock ^-2 ^17 ^-9 minecraft:dark_oak_fence
setblock ^-1 ^17 ^-9 minecraft:dark_oak_fence
setblock ^-2 ^17 ^9 minecraft:dark_oak_fence
setblock ^-1 ^17 ^9 minecraft:dark_oak_fence
setblock ^ ^17 ^-9 minecraft:dark_oak_fence
setblock ^1 ^17 ^-9 minecraft:dark_oak_fence
setblock ^ ^17 ^9 minecraft:dark_oak_fence
setblock ^1 ^17 ^9 minecraft:dark_oak_fence
setblock ^2 ^17 ^-9 minecraft:dark_oak_fence
setblock ^3 ^17 ^-9 minecraft:dark_oak_fence
setblock ^2 ^17 ^9 minecraft:dark_oak_fence
setblock ^3 ^17 ^9 minecraft:dark_oak_fence
setblock ^4 ^17 ^-8 minecraft:dark_oak_fence
setblock ^5 ^17 ^-8 minecraft:dark_oak_fence
setblock ^4 ^17 ^8 minecraft:dark_oak_fence
setblock ^5 ^17 ^8 minecraft:dark_oak_fence
setblock ^6 ^17 ^-8 minecraft:dark_oak_fence
setblock ^7 ^17 ^-8 minecraft:dark_oak_fence
setblock ^6 ^17 ^8 minecraft:dark_oak_fence
setblock ^7 ^17 ^8 minecraft:dark_oak_fence
setblock ^8 ^17 ^-8 minecraft:dark_oak_fence
setblock ^9 ^17 ^-8 minecraft:dark_oak_fence
setblock ^8 ^17 ^8 minecraft:dark_oak_fence
setblock ^9 ^17 ^8 minecraft:dark_oak_fence
setblock ^10 ^18 ^-7 minecraft:dark_oak_fence
setblock ^11 ^18 ^-7 minecraft:dark_oak_fence
setblock ^10 ^18 ^7 minecraft:dark_oak_fence
setblock ^11 ^18 ^7 minecraft:dark_oak_fence
setblock ^12 ^18 ^-7 minecraft:dark_oak_fence
setblock ^13 ^18 ^-7 minecraft:dark_oak_fence
setblock ^12 ^18 ^7 minecraft:dark_oak_fence
setblock ^13 ^18 ^7 minecraft:dark_oak_fence
setblock ^14 ^18 ^-7 minecraft:dark_oak_fence
setblock ^15 ^18 ^-7 minecraft:dark_oak_fence
setblock ^14 ^18 ^7 minecraft:dark_oak_fence
setblock ^15 ^18 ^7 minecraft:dark_oak_fence
setblock ^16 ^18 ^-7 minecraft:dark_oak_fence
setblock ^17 ^18 ^-7 minecraft:dark_oak_fence
setblock ^16 ^18 ^7 minecraft:dark_oak_fence
setblock ^17 ^18 ^7 minecraft:dark_oak_fence
setblock ^18 ^18 ^-6 minecraft:dark_oak_fence
setblock ^19 ^18 ^-6 minecraft:dark_oak_fence
setblock ^18 ^18 ^6 minecraft:dark_oak_fence
setblock ^19 ^18 ^6 minecraft:dark_oak_fence
setblock ^20 ^18 ^-6 minecraft:dark_oak_fence
setblock ^21 ^18 ^-6 minecraft:dark_oak_fence
setblock ^20 ^18 ^6 minecraft:dark_oak_fence
setblock ^21 ^18 ^6 minecraft:dark_oak_fence
setblock ^22 ^18 ^-6 minecraft:dark_oak_fence
setblock ^23 ^18 ^-6 minecraft:dark_oak_fence
setblock ^22 ^18 ^6 minecraft:dark_oak_fence
setblock ^23 ^18 ^6 minecraft:dark_oak_fence
setblock ^24 ^18 ^-5 minecraft:dark_oak_fence
setblock ^25 ^18 ^-5 minecraft:dark_oak_fence
setblock ^24 ^18 ^5 minecraft:dark_oak_fence
setblock ^25 ^18 ^5 minecraft:dark_oak_fence
setblock ^26 ^19 ^-5 minecraft:dark_oak_fence
setblock ^27 ^19 ^-5 minecraft:dark_oak_fence
setblock ^26 ^19 ^5 minecraft:dark_oak_fence
setblock ^27 ^19 ^5 minecraft:dark_oak_fence
setblock ^28 ^19 ^-5 minecraft:dark_oak_fence
setblock ^29 ^19 ^-5 minecraft:dark_oak_fence
setblock ^28 ^19 ^5 minecraft:dark_oak_fence
setblock ^29 ^19 ^5 minecraft:dark_oak_fence
setblock ^30 ^19 ^-4 minecraft:dark_oak_fence
setblock ^31 ^19 ^-4 minecraft:dark_oak_fence
setblock ^30 ^19 ^4 minecraft:dark_oak_fence
setblock ^31 ^19 ^4 minecraft:dark_oak_fence
setblock ^32 ^19 ^-4 minecraft:dark_oak_fence
setblock ^32 ^19 ^-4 minecraft:dark_oak_fence
setblock ^32 ^19 ^4 minecraft:dark_oak_fence
setblock ^32 ^19 ^4 minecraft:dark_oak_fence
fill ^-22 ^15 ^-3 ^-21 ^15 ^3 minecraft:red_wool
setblock ^-22 ^16 ^-3 minecraft:iron_bars
setblock ^-22 ^16 ^3 minecraft:iron_bars
fill ^-16 ^15 ^-4 ^-15 ^15 ^4 minecraft:red_wool
setblock ^-16 ^16 ^-4 minecraft:iron_bars
setblock ^-16 ^16 ^4 minecraft:iron_bars
fill ^-10 ^15 ^-4 ^-9 ^15 ^4 minecraft:red_wool
setblock ^-10 ^16 ^-4 minecraft:iron_bars
setblock ^-10 ^16 ^4 minecraft:iron_bars
fill ^-4 ^16 ^-5 ^-3 ^16 ^5 minecraft:red_wool
setblock ^-4 ^17 ^-5 minecraft:iron_bars
setblock ^-4 ^17 ^5 minecraft:iron_bars
fill ^2 ^16 ^-6 ^3 ^16 ^6 minecraft:red_wool
setblock ^2 ^17 ^-6 minecraft:iron_bars
setblock ^2 ^17 ^6 minecraft:iron_bars
fill ^8 ^16 ^-5 ^9 ^16 ^5 minecraft:red_wool
setblock ^8 ^17 ^-5 minecraft:iron_bars
setblock ^8 ^17 ^5 minecraft:iron_bars
fill ^14 ^17 ^-4 ^15 ^17 ^4 minecraft:red_wool
setblock ^14 ^18 ^-4 minecraft:iron_bars
setblock ^14 ^18 ^4 minecraft:iron_bars
fill ^20 ^17 ^-3 ^21 ^17 ^3 minecraft:red_wool
setblock ^20 ^18 ^-3 minecraft:iron_bars
setblock ^20 ^18 ^3 minecraft:iron_bars

# === CAPTAIN'S STERN CASTLE ===
fill ^-31 ^15 ^-5 ^-24 ^22 ^5 minecraft:dark_oak_planks
fill ^-30 ^17 ^-6 ^-25 ^20 ^-6 minecraft:glass
fill ^-30 ^17 ^6 ^-25 ^20 ^6 minecraft:glass
fill ^-32 ^23 ^-6 ^-23 ^24 ^6 minecraft:red_wool
fill ^-29 ^24 ^-5 ^-26 ^26 ^5 minecraft:black_wool
setblock ^-31 ^22 ^-6 minecraft:lantern
setblock ^-31 ^22 ^6 minecraft:lantern

# === BOWSPRIT & PIRATE FIGUREHEAD ===
setblock ^33 ^18 ^ minecraft:spruce_log
setblock ^34 ^18 ^ minecraft:spruce_log
setblock ^35 ^19 ^ minecraft:spruce_log
setblock ^36 ^19 ^ minecraft:spruce_log
setblock ^37 ^20 ^ minecraft:spruce_log
setblock ^38 ^20 ^ minecraft:spruce_log
setblock ^39 ^21 ^ minecraft:spruce_log
setblock ^40 ^21 ^ minecraft:spruce_log
setblock ^41 ^22 ^ minecraft:spruce_log
setblock ^42 ^22 ^ minecraft:spruce_log
setblock ^43 ^23 ^ minecraft:spruce_log
setblock ^44 ^23 ^ minecraft:spruce_log
fill ^39 ^21 ^-2 ^43 ^25 ^2 minecraft:gold_block
setblock ^40 ^24 ^-3 minecraft:sea_lantern
setblock ^40 ^24 ^3 minecraft:sea_lantern
fill ^44 ^22 ^-1 ^46 ^23 ^1 minecraft:quartz_block

# === THREE MASTS ===
fill ^-16 ^18 ^ ^-16 ^36 ^ minecraft:spruce_log
fill ^-17 ^18 ^ ^-15 ^18 ^ minecraft:spruce_log
fill ^ ^18 ^ ^ ^43 ^ minecraft:spruce_log
fill ^-1 ^18 ^ ^1 ^18 ^ minecraft:spruce_log
fill ^16 ^19 ^ ^16 ^35 ^ minecraft:spruce_log
fill ^15 ^19 ^ ^17 ^19 ^ minecraft:spruce_log
fill ^-16 ^29 ^-9 ^-16 ^29 ^9 minecraft:spruce_log
fill ^ ^34 ^-12 ^ ^34 ^12 minecraft:spruce_log
fill ^16 ^29 ^-8 ^16 ^29 ^8 minecraft:spruce_log
fill ^ ^25 ^-9 ^ ^25 ^9 minecraft:spruce_log

# === TATTERED PIRATE SAILS ===
fill ^-16 ^30 ^-8 ^-16 ^35 ^8 minecraft:white_wool
fill ^ ^35 ^-11 ^ ^42 ^11 minecraft:white_wool
fill ^ ^26 ^-8 ^ ^33 ^8 minecraft:white_wool
fill ^16 ^30 ^-7 ^16 ^34 ^7 minecraft:white_wool
setblock ^-16 ^33 ^-4 minecraft:air
setblock ^-16 ^31 ^5 minecraft:air
setblock ^ ^39 ^-6 minecraft:air
setblock ^ ^37 ^4 minecraft:air
setblock ^ ^29 ^-3 minecraft:air
setblock ^16 ^32 ^3 minecraft:air

# === PIRATE FLAGS ===
fill ^ ^43 ^ ^ ^49 ^ minecraft:spruce_fence
fill ^ ^45 ^1 ^ ^49 ^7 minecraft:black_wool
setblock ^ ^48 ^4 minecraft:white_wool
setblock ^ ^47 ^3 minecraft:white_wool
setblock ^ ^47 ^5 minecraft:white_wool
setblock ^ ^46 ^4 minecraft:white_wool
fill ^-16 ^36 ^ ^-16 ^40 ^ minecraft:spruce_fence
fill ^-16 ^38 ^1 ^-16 ^40 ^5 minecraft:red_wool
fill ^16 ^35 ^ ^16 ^39 ^ minecraft:spruce_fence
fill ^16 ^37 ^1 ^16 ^39 ^5 minecraft:black_wool

# === CANNONS & GUNPORTS ===
fill ^-24 ^14 ^-6 ^-22 ^15 ^-6 minecraft:polished_blackstone
setblock ^-21 ^14 ^-6 minecraft:blackstone
setblock ^-24 ^13 ^-6 minecraft:red_wool
fill ^-24 ^14 ^6 ^-22 ^15 ^6 minecraft:polished_blackstone
setblock ^-21 ^14 ^6 minecraft:blackstone
setblock ^-24 ^13 ^6 minecraft:red_wool
fill ^-16 ^14 ^-8 ^-14 ^15 ^-8 minecraft:polished_blackstone
setblock ^-13 ^14 ^-8 minecraft:blackstone
setblock ^-16 ^13 ^-8 minecraft:red_wool
fill ^-16 ^14 ^8 ^-14 ^15 ^8 minecraft:polished_blackstone
setblock ^-13 ^14 ^8 minecraft:blackstone
setblock ^-16 ^13 ^8 minecraft:red_wool
fill ^-8 ^15 ^-9 ^-6 ^16 ^-9 minecraft:polished_blackstone
setblock ^-5 ^15 ^-9 minecraft:blackstone
setblock ^-8 ^14 ^-9 minecraft:red_wool
fill ^-8 ^15 ^9 ^-6 ^16 ^9 minecraft:polished_blackstone
setblock ^-5 ^15 ^9 minecraft:blackstone
setblock ^-8 ^14 ^9 minecraft:red_wool
fill ^ ^15 ^-10 ^2 ^16 ^-10 minecraft:polished_blackstone
setblock ^3 ^15 ^-10 minecraft:blackstone
setblock ^ ^14 ^-10 minecraft:red_wool
fill ^ ^15 ^10 ^2 ^16 ^10 minecraft:polished_blackstone
setblock ^3 ^15 ^10 minecraft:blackstone
setblock ^ ^14 ^10 minecraft:red_wool
fill ^8 ^15 ^-9 ^10 ^16 ^-9 minecraft:polished_blackstone
setblock ^11 ^15 ^-9 minecraft:blackstone
setblock ^8 ^14 ^-9 minecraft:red_wool
fill ^8 ^15 ^9 ^10 ^16 ^9 minecraft:polished_blackstone
setblock ^11 ^15 ^9 minecraft:blackstone
setblock ^8 ^14 ^9 minecraft:red_wool
fill ^16 ^16 ^-8 ^18 ^17 ^-8 minecraft:polished_blackstone
setblock ^19 ^16 ^-8 minecraft:blackstone
setblock ^16 ^15 ^-8 minecraft:red_wool
fill ^16 ^16 ^8 ^18 ^17 ^8 minecraft:polished_blackstone
setblock ^19 ^16 ^8 minecraft:blackstone
setblock ^16 ^15 ^8 minecraft:red_wool
fill ^24 ^16 ^-6 ^26 ^17 ^-6 minecraft:polished_blackstone
setblock ^27 ^16 ^-6 minecraft:blackstone
setblock ^24 ^15 ^-6 minecraft:red_wool
fill ^24 ^16 ^6 ^26 ^17 ^6 minecraft:polished_blackstone
setblock ^27 ^16 ^6 minecraft:blackstone
setblock ^24 ^15 ^6 minecraft:red_wool

# === RIGGING ===
setblock ^-16 ^36 ^ minecraft:chain
setblock ^-17 ^35 ^ minecraft:chain
setblock ^-17 ^34 ^-1 minecraft:chain
setblock ^-18 ^33 ^-1 minecraft:chain
setblock ^-19 ^32 ^-2 minecraft:chain
setblock ^-19 ^31 ^-2 minecraft:chain
setblock ^-20 ^30 ^-2 minecraft:chain
setblock ^-21 ^29 ^-3 minecraft:chain
setblock ^-21 ^28 ^-3 minecraft:chain
setblock ^-22 ^27 ^-4 minecraft:chain
setblock ^-23 ^26 ^-4 minecraft:chain
setblock ^-23 ^25 ^-4 minecraft:chain
setblock ^-24 ^24 ^-5 minecraft:chain
setblock ^-25 ^23 ^-5 minecraft:chain
setblock ^-25 ^22 ^-5 minecraft:chain
setblock ^-26 ^21 ^-6 minecraft:chain
setblock ^-27 ^20 ^-6 minecraft:chain
setblock ^-27 ^19 ^-7 minecraft:chain
setblock ^-28 ^18 ^-7 minecraft:chain
setblock ^-16 ^36 ^ minecraft:chain
setblock ^-15 ^35 ^ minecraft:chain
setblock ^-15 ^34 ^1 minecraft:chain
setblock ^-14 ^33 ^1 minecraft:chain
setblock ^-13 ^32 ^2 minecraft:chain
setblock ^-13 ^31 ^2 minecraft:chain
setblock ^-12 ^30 ^2 minecraft:chain
setblock ^-11 ^29 ^3 minecraft:chain
setblock ^-11 ^28 ^3 minecraft:chain
setblock ^-10 ^27 ^4 minecraft:chain
setblock ^-9 ^26 ^4 minecraft:chain
setblock ^-9 ^25 ^4 minecraft:chain
setblock ^-8 ^24 ^5 minecraft:chain
setblock ^-7 ^23 ^5 minecraft:chain
setblock ^-7 ^22 ^5 minecraft:chain
setblock ^-6 ^21 ^6 minecraft:chain
setblock ^-5 ^20 ^6 minecraft:chain
setblock ^-5 ^19 ^7 minecraft:chain
setblock ^-4 ^18 ^7 minecraft:chain
setblock ^ ^43 ^ minecraft:chain
setblock ^ ^42 ^ minecraft:chain
setblock ^-1 ^41 ^-1 minecraft:chain
setblock ^-1 ^40 ^-1 minecraft:chain
setblock ^-2 ^39 ^-1 minecraft:chain
setblock ^-2 ^38 ^-1 minecraft:chain
setblock ^-3 ^37 ^-2 minecraft:chain
setblock ^-3 ^36 ^-2 minecraft:chain
setblock ^-4 ^35 ^-2 minecraft:chain
setblock ^-4 ^34 ^-3 minecraft:chain
setblock ^-5 ^33 ^-3 minecraft:chain
setblock ^-5 ^32 ^-3 minecraft:chain
setblock ^-6 ^31 ^-3 minecraft:chain
setblock ^-6 ^30 ^-4 minecraft:chain
setblock ^-7 ^29 ^-4 minecraft:chain
setblock ^-7 ^28 ^-4 minecraft:chain
setblock ^-8 ^27 ^-4 minecraft:chain
setblock ^-8 ^26 ^-5 minecraft:chain
setblock ^-9 ^25 ^-5 minecraft:chain
setblock ^-9 ^24 ^-5 minecraft:chain
setblock ^-10 ^23 ^-6 minecraft:chain
setblock ^-10 ^22 ^-6 minecraft:chain
setblock ^-11 ^21 ^-6 minecraft:chain
setblock ^-11 ^20 ^-6 minecraft:chain
setblock ^-12 ^19 ^-7 minecraft:chain
setblock ^-12 ^18 ^-7 minecraft:chain
setblock ^ ^43 ^ minecraft:chain
setblock ^ ^42 ^ minecraft:chain
setblock ^1 ^41 ^1 minecraft:chain
setblock ^1 ^40 ^1 minecraft:chain
setblock ^2 ^39 ^1 minecraft:chain
setblock ^2 ^38 ^1 minecraft:chain
setblock ^3 ^37 ^2 minecraft:chain
setblock ^3 ^36 ^2 minecraft:chain
setblock ^4 ^35 ^2 minecraft:chain
setblock ^4 ^34 ^3 minecraft:chain
setblock ^5 ^33 ^3 minecraft:chain
setblock ^5 ^32 ^3 minecraft:chain
setblock ^6 ^31 ^3 minecraft:chain
setblock ^6 ^30 ^4 minecraft:chain
setblock ^7 ^29 ^4 minecraft:chain
setblock ^7 ^28 ^4 minecraft:chain
setblock ^8 ^27 ^4 minecraft:chain
setblock ^8 ^26 ^5 minecraft:chain
setblock ^9 ^25 ^5 minecraft:chain
setblock ^9 ^24 ^5 minecraft:chain
setblock ^10 ^23 ^6 minecraft:chain
setblock ^10 ^22 ^6 minecraft:chain
setblock ^11 ^21 ^6 minecraft:chain
setblock ^11 ^20 ^6 minecraft:chain
setblock ^12 ^19 ^7 minecraft:chain
setblock ^12 ^18 ^7 minecraft:chain
setblock ^16 ^35 ^ minecraft:chain
setblock ^15 ^34 ^ minecraft:chain
setblock ^15 ^33 ^-1 minecraft:chain
setblock ^14 ^32 ^-1 minecraft:chain
setblock ^13 ^31 ^-2 minecraft:chain
setblock ^12 ^30 ^-2 minecraft:chain
setblock ^12 ^29 ^-2 minecraft:chain
setblock ^11 ^28 ^-3 minecraft:chain
setblock ^10 ^27 ^-3 minecraft:chain
setblock ^10 ^26 ^-4 minecraft:chain
setblock ^9 ^25 ^-4 minecraft:chain
setblock ^8 ^24 ^-5 minecraft:chain
setblock ^8 ^23 ^-5 minecraft:chain
setblock ^7 ^22 ^-5 minecraft:chain
setblock ^6 ^21 ^-6 minecraft:chain
setblock ^5 ^20 ^-6 minecraft:chain
setblock ^5 ^19 ^-7 minecraft:chain
setblock ^4 ^18 ^-7 minecraft:chain
setblock ^16 ^35 ^ minecraft:chain
setblock ^17 ^34 ^ minecraft:chain
setblock ^17 ^33 ^1 minecraft:chain
setblock ^18 ^32 ^1 minecraft:chain
setblock ^19 ^31 ^2 minecraft:chain
setblock ^20 ^30 ^2 minecraft:chain
setblock ^20 ^29 ^2 minecraft:chain
setblock ^21 ^28 ^3 minecraft:chain
setblock ^22 ^27 ^3 minecraft:chain
setblock ^22 ^26 ^4 minecraft:chain
setblock ^23 ^25 ^4 minecraft:chain
setblock ^24 ^24 ^5 minecraft:chain
setblock ^24 ^23 ^5 minecraft:chain
setblock ^25 ^22 ^5 minecraft:chain
setblock ^26 ^21 ^6 minecraft:chain
setblock ^27 ^20 ^6 minecraft:chain
setblock ^27 ^19 ^7 minecraft:chain
setblock ^28 ^18 ^7 minecraft:chain

# === LOADING PLATFORM ===
fill ^-20 ^ ^-18 ^20 ^ ^-10 minecraft:stone_bricks
fill ^-18 ^1 ^-17 ^18 ^1 ^-11 minecraft:spruce_planks
fill ^-20 ^2 ^-18 ^-6 ^2 ^-18 minecraft:iron_bars
fill ^6 ^2 ^-18 ^20 ^2 ^-18 minecraft:iron_bars
fill ^-20 ^2 ^-10 ^20 ^2 ^-10 minecraft:iron_bars
fill ^-20 ^2 ^-18 ^-20 ^2 ^-10 minecraft:iron_bars
fill ^20 ^2 ^-18 ^20 ^2 ^-10 minecraft:iron_bars
fill ^-5 ^ ^-24 ^5 ^ ^-24 minecraft:stone_bricks
fill ^-5 ^ ^-23 ^5 ^ ^-23 minecraft:stone_bricks
fill ^-5 ^1 ^-22 ^5 ^1 ^-22 minecraft:stone_bricks
fill ^-5 ^1 ^-21 ^5 ^1 ^-21 minecraft:stone_bricks
fill ^-5 ^2 ^-20 ^5 ^2 ^-20 minecraft:stone_bricks
fill ^-5 ^2 ^-19 ^5 ^2 ^-19 minecraft:stone_bricks

# === OPERATOR BOOTH ===
fill ^22 ^ ^-18 ^31 ^ ^-10 minecraft:stone_bricks
fill ^23 ^1 ^-17 ^30 ^5 ^-11 minecraft:dark_oak_planks
fill ^24 ^3 ^-18 ^29 ^5 ^-18 minecraft:glass
fill ^22 ^6 ^-18 ^31 ^7 ^-10 minecraft:red_wool
setblock ^24 ^2 ^-18 minecraft:redstone_lamp
setblock ^26 ^2 ^-18 minecraft:gold_block
setblock ^28 ^2 ^-18 minecraft:sea_lantern

# === TREASURE & CARGO THEMING ===
setblock ^-34 ^ ^20 minecraft:barrel
setblock ^-33 ^ ^20 minecraft:chest
setblock ^-29 ^ ^22 minecraft:barrel
setblock ^-28 ^ ^22 minecraft:chest
setblock ^-36 ^ ^25 minecraft:barrel
setblock ^-35 ^ ^25 minecraft:chest
setblock ^32 ^ ^22 minecraft:barrel
setblock ^33 ^ ^22 minecraft:chest
setblock ^36 ^ ^25 minecraft:barrel
setblock ^37 ^ ^25 minecraft:chest
setblock ^28 ^ ^19 minecraft:barrel
setblock ^29 ^ ^19 minecraft:chest
fill ^-36 ^ ^25 ^-32 ^1 ^29 minecraft:stone_bricks
fill ^-35 ^2 ^26 ^-33 ^3 ^28 minecraft:gold_block
setblock ^-34 ^4 ^27 minecraft:sea_lantern
fill ^32 ^ ^25 ^36 ^1 ^29 minecraft:stone_bricks
fill ^33 ^2 ^26 ^35 ^3 ^28 minecraft:gold_block
setblock ^34 ^4 ^27 minecraft:sea_lantern

# === BRAZIERS & PLAZA LIGHTING ===
fill ^-39 ^ ^-11 ^-37 ^1 ^-9 minecraft:stone_bricks
fill ^-38 ^2 ^-10 ^-38 ^3 ^-10 minecraft:cobblestone_wall
setblock ^-38 ^4 ^-10 minecraft:campfire
fill ^37 ^ ^-11 ^39 ^1 ^-9 minecraft:stone_bricks
fill ^38 ^2 ^-10 ^38 ^3 ^-10 minecraft:cobblestone_wall
setblock ^38 ^4 ^-10 minecraft:campfire
fill ^-39 ^ ^9 ^-37 ^1 ^11 minecraft:stone_bricks
fill ^-38 ^2 ^10 ^-38 ^3 ^10 minecraft:cobblestone_wall
setblock ^-38 ^4 ^10 minecraft:campfire
fill ^37 ^ ^9 ^39 ^1 ^11 minecraft:stone_bricks
fill ^38 ^2 ^10 ^38 ^3 ^10 minecraft:cobblestone_wall
setblock ^38 ^4 ^10 minecraft:campfire
fill ^-29 ^ ^33 ^-27 ^1 ^35 minecraft:stone_bricks
fill ^-28 ^2 ^34 ^-28 ^3 ^34 minecraft:cobblestone_wall
setblock ^-28 ^4 ^34 minecraft:campfire
fill ^27 ^ ^33 ^29 ^1 ^35 minecraft:stone_bricks
fill ^28 ^2 ^34 ^28 ^3 ^34 minecraft:cobblestone_wall
setblock ^28 ^4 ^34 minecraft:campfire
fill ^-46 ^ ^-38 ^-46 ^5 ^-38 minecraft:dark_oak_fence
setblock ^-46 ^6 ^-38 minecraft:lantern
fill ^-30 ^ ^-38 ^-30 ^5 ^-38 minecraft:dark_oak_fence
setblock ^-30 ^6 ^-38 minecraft:lantern
fill ^30 ^ ^-38 ^30 ^5 ^-38 minecraft:dark_oak_fence
setblock ^30 ^6 ^-38 minecraft:lantern
fill ^46 ^ ^-38 ^46 ^5 ^-38 minecraft:dark_oak_fence
setblock ^46 ^6 ^-38 minecraft:lantern
fill ^-46 ^ ^38 ^-46 ^5 ^38 minecraft:dark_oak_fence
setblock ^-46 ^6 ^38 minecraft:lantern
fill ^46 ^ ^38 ^46 ^5 ^38 minecraft:dark_oak_fence
setblock ^46 ^6 ^38 minecraft:lantern

# === EXIT LANE ===
fill ^34 ^-1 ^-6 ^49 ^-1 ^15 minecraft:smooth_stone
fill ^34 ^ ^-6 ^49 ^ ^-6 minecraft:dark_oak_fence
fill ^34 ^ ^15 ^49 ^ ^15 minecraft:dark_oak_fence
fill ^49 ^ ^-6 ^49 ^ ^15 minecraft:dark_oak_fence
fill ^45 ^ ^-2 ^45 ^3 ^-2 minecraft:dark_oak_fence
setblock ^45 ^4 ^-2 minecraft:lantern
fill ^45 ^ ^5 ^45 ^3 ^5 minecraft:dark_oak_fence
setblock ^45 ^4 ^5 minecraft:lantern
fill ^45 ^ ^12 ^45 ^3 ^12 minecraft:dark_oak_fence
setblock ^45 ^4 ^12 minecraft:lantern

# === BENCHES & PHOTO SPOT ===
fill ^-47 ^ ^30 ^-41 ^ ^30 minecraft:dark_oak_planks
setblock ^-47 ^1 ^31 minecraft:dark_oak_fence
setblock ^-41 ^1 ^31 minecraft:dark_oak_fence
fill ^-33 ^ ^37 ^-27 ^ ^37 minecraft:dark_oak_planks
setblock ^-33 ^1 ^38 minecraft:dark_oak_fence
setblock ^-27 ^1 ^38 minecraft:dark_oak_fence
fill ^27 ^ ^37 ^33 ^ ^37 minecraft:dark_oak_planks
setblock ^27 ^1 ^38 minecraft:dark_oak_fence
setblock ^33 ^1 ^38 minecraft:dark_oak_fence
fill ^41 ^ ^30 ^47 ^ ^30 minecraft:dark_oak_planks
setblock ^41 ^1 ^31 minecraft:dark_oak_fence
setblock ^47 ^1 ^31 minecraft:dark_oak_fence
fill ^-10 ^ ^34 ^10 ^ ^41 minecraft:sandstone
fill ^-8 ^1 ^37 ^-6 ^8 ^37 minecraft:dark_oak_log
fill ^6 ^1 ^37 ^8 ^8 ^37 minecraft:dark_oak_log
fill ^-8 ^8 ^37 ^8 ^10 ^37 minecraft:black_wool
setblock ^-5 ^9 ^36 minecraft:sea_lantern
setblock ^ ^9 ^36 minecraft:sea_lantern
setblock ^5 ^9 ^36 minecraft:sea_lantern

# === PIRATE-THEMED LANDSCAPING ===
fill ^-50 ^ ^18 ^-46 ^ ^22 minecraft:dirt
fill ^-48 ^1 ^20 ^-48 ^6 ^20 minecraft:jungle_log
fill ^-50 ^6 ^18 ^-46 ^8 ^22 minecraft:jungle_leaves
setblock ^-48 ^8 ^20 minecraft:glowstone
fill ^-42 ^ ^33 ^-38 ^ ^37 minecraft:dirt
fill ^-40 ^1 ^35 ^-40 ^6 ^35 minecraft:jungle_log
fill ^-42 ^6 ^33 ^-38 ^8 ^37 minecraft:jungle_leaves
setblock ^-40 ^8 ^35 minecraft:glowstone
fill ^38 ^ ^33 ^42 ^ ^37 minecraft:dirt
fill ^40 ^1 ^35 ^40 ^6 ^35 minecraft:jungle_log
fill ^38 ^6 ^33 ^42 ^8 ^37 minecraft:jungle_leaves
setblock ^40 ^8 ^35 minecraft:glowstone
fill ^46 ^ ^18 ^50 ^ ^22 minecraft:dirt
fill ^48 ^1 ^20 ^48 ^6 ^20 minecraft:jungle_log
fill ^46 ^6 ^18 ^50 ^8 ^22 minecraft:jungle_leaves
setblock ^48 ^8 ^20 minecraft:glowstone
fill ^-47 ^ ^-22 ^-43 ^ ^-18 minecraft:dirt
fill ^-45 ^1 ^-20 ^-45 ^6 ^-20 minecraft:jungle_log
fill ^-47 ^6 ^-22 ^-43 ^8 ^-18 minecraft:jungle_leaves
setblock ^-45 ^8 ^-20 minecraft:glowstone
fill ^43 ^ ^-22 ^47 ^ ^-18 minecraft:dirt
fill ^45 ^1 ^-20 ^45 ^6 ^-20 minecraft:jungle_log
fill ^43 ^6 ^-22 ^47 ^8 ^-18 minecraft:jungle_leaves
setblock ^45 ^8 ^-20 minecraft:glowstone

# === END OF BUILD ===
# Main entrance is behind you (negative local forward).
# The ship is built as a static rocking-ride centerpiece.
# Run on flat open ground with at least 55 blocks of clearance in every horizontal direction.
# Add separate command functions if you want animated rocking or ride effects.
