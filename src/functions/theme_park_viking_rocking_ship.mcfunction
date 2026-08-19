# VIKING ROCKING SHIP - Minecraft Bedrock Edition
# Build size: roughly 77 x 33 x 45 blocks
# Origin: face a cardinal direction, look horizontally, and run from the CENTER at ground level.
# The ship is deliberately built at a mid-swing angle.
# Commands use ^left, ^up, ^forward coordinates, so the attraction follows your view direction.

# === FOUNDATION & PLAZA ===
fill ^-38 ^-2 ^-22 ^38 ^-2 ^22 minecraft:stone_bricks
fill ^-36 ^-1 ^-20 ^36 ^-1 ^20 minecraft:polished_andesite
fill ^-32 ^-1 ^-16 ^32 ^-1 ^16 minecraft:andesite
fill ^-30 ^-1 ^-8 ^30 ^-1 ^8 minecraft:deepslate_tiles
fill ^-2 ^-1 ^-18 ^2 ^-1 ^18 minecraft:cut_copper

# === PERIMETER FENCE, ENTRY ARCH & LIGHTS ===
fill ^-38 ^-1 ^-22 ^-5 ^-1 ^-22 minecraft:spruce_fence
fill ^5 ^-1 ^-22 ^38 ^-1 ^-22 minecraft:spruce_fence
fill ^-38 ^-1 ^22 ^38 ^-1 ^22 minecraft:spruce_fence
fill ^-38 ^-1 ^-22 ^-38 ^-1 ^22 minecraft:spruce_fence
fill ^38 ^-1 ^-22 ^38 ^-1 ^22 minecraft:spruce_fence
fill ^-5 ^-1 ^-22 ^-4 ^5 ^-22 minecraft:dark_oak_log
fill ^4 ^-1 ^-22 ^5 ^5 ^-22 minecraft:dark_oak_log
fill ^-5 ^5 ^-22 ^5 ^6 ^-22 minecraft:dark_oak_planks
fill ^-3 ^6 ^-22 ^3 ^7 ^-22 minecraft:red_wool
setblock ^ ^7 ^-22 minecraft:gold_block
fill ^-35 ^-1 ^-19 ^-35 ^3 ^-19 minecraft:dark_oak_fence
setblock ^-35 ^4 ^-19 minecraft:lantern
fill ^35 ^-1 ^-19 ^35 ^3 ^-19 minecraft:dark_oak_fence
setblock ^35 ^4 ^-19 minecraft:lantern
fill ^-35 ^-1 ^19 ^-35 ^3 ^19 minecraft:dark_oak_fence
setblock ^-35 ^4 ^19 minecraft:lantern
fill ^35 ^-1 ^19 ^35 ^3 ^19 minecraft:dark_oak_fence
setblock ^35 ^4 ^19 minecraft:lantern
fill ^-18 ^-1 ^-19 ^-18 ^3 ^-19 minecraft:dark_oak_fence
setblock ^-18 ^4 ^-19 minecraft:lantern
fill ^18 ^-1 ^-19 ^18 ^3 ^-19 minecraft:dark_oak_fence
setblock ^18 ^4 ^-19 minecraft:lantern
fill ^-18 ^-1 ^19 ^-18 ^3 ^19 minecraft:dark_oak_fence
setblock ^-18 ^4 ^19 minecraft:lantern
fill ^18 ^-1 ^19 ^18 ^3 ^19 minecraft:dark_oak_fence
setblock ^18 ^4 ^19 minecraft:lantern

# === QUEUE LANE ===
fill ^-35 ^-1 ^-19 ^-12 ^-1 ^-12 minecraft:smooth_stone
fill ^-35 ^ ^-19 ^-14 ^ ^-19 minecraft:spruce_fence
fill ^-35 ^ ^-16 ^-14 ^ ^-16 minecraft:spruce_fence
fill ^-35 ^ ^-13 ^-14 ^ ^-13 minecraft:spruce_fence
fill ^-35 ^ ^-19 ^-35 ^ ^-13 minecraft:spruce_fence
fill ^-14 ^ ^-16 ^-14 ^ ^-13 minecraft:spruce_fence
setblock ^-33 ^ ^-18 minecraft:barrel
setblock ^-33 ^1 ^-18 minecraft:lantern
setblock ^-29 ^ ^-14 minecraft:barrel
setblock ^-29 ^1 ^-14 minecraft:lantern
setblock ^-24 ^ ^-18 minecraft:barrel
setblock ^-24 ^1 ^-18 minecraft:lantern
setblock ^-19 ^ ^-14 minecraft:barrel
setblock ^-19 ^1 ^-14 minecraft:lantern

# === LOADING STAIR & PLATFORM ===
fill ^-31 ^-1 ^-20 ^-27 ^-1 ^-20 minecraft:stone_bricks
fill ^-31 ^ ^-19 ^-27 ^ ^-19 minecraft:stone_bricks
fill ^-31 ^1 ^-18 ^-27 ^1 ^-18 minecraft:stone_bricks
fill ^-31 ^2 ^-17 ^-27 ^2 ^-17 minecraft:stone_bricks
fill ^-31 ^3 ^-16 ^-27 ^3 ^-16 minecraft:stone_bricks
fill ^-31 ^4 ^-15 ^-27 ^4 ^-15 minecraft:stone_bricks
fill ^-31 ^5 ^-14 ^-27 ^5 ^-14 minecraft:stone_bricks
fill ^-31 ^6 ^-13 ^-27 ^6 ^-13 minecraft:stone_bricks
fill ^-31 ^7 ^-12 ^-27 ^7 ^-12 minecraft:stone_bricks
fill ^-31 ^8 ^-11 ^-27 ^8 ^-11 minecraft:stone_bricks
setblock ^-32 ^ ^-20 minecraft:spruce_fence
setblock ^-26 ^ ^-20 minecraft:spruce_fence
setblock ^-32 ^1 ^-19 minecraft:spruce_fence
setblock ^-26 ^1 ^-19 minecraft:spruce_fence
setblock ^-32 ^2 ^-18 minecraft:spruce_fence
setblock ^-26 ^2 ^-18 minecraft:spruce_fence
setblock ^-32 ^3 ^-17 minecraft:spruce_fence
setblock ^-26 ^3 ^-17 minecraft:spruce_fence
setblock ^-32 ^4 ^-16 minecraft:spruce_fence
setblock ^-26 ^4 ^-16 minecraft:spruce_fence
setblock ^-32 ^5 ^-15 minecraft:spruce_fence
setblock ^-26 ^5 ^-15 minecraft:spruce_fence
setblock ^-32 ^6 ^-14 minecraft:spruce_fence
setblock ^-26 ^6 ^-14 minecraft:spruce_fence
setblock ^-32 ^7 ^-13 minecraft:spruce_fence
setblock ^-26 ^7 ^-13 minecraft:spruce_fence
setblock ^-32 ^8 ^-12 minecraft:spruce_fence
setblock ^-26 ^8 ^-12 minecraft:spruce_fence
setblock ^-32 ^9 ^-11 minecraft:spruce_fence
setblock ^-26 ^9 ^-11 minecraft:spruce_fence
fill ^-31 ^8 ^-10 ^-18 ^8 ^-7 minecraft:stone_bricks
fill ^-31 ^9 ^-10 ^-18 ^9 ^-7 minecraft:oak_planks
fill ^-31 ^10 ^-10 ^-18 ^10 ^-10 minecraft:spruce_fence
fill ^-31 ^10 ^-7 ^-26 ^10 ^-7 minecraft:spruce_fence
fill ^-21 ^10 ^-7 ^-18 ^10 ^-7 minecraft:spruce_fence
fill ^-24 ^10 ^-9 ^-22 ^11 ^-8 minecraft:dark_oak_planks
setblock ^-23 ^12 ^-9 minecraft:lantern

# === GIANT A-FRAME SUPPORTS ===
fill ^-13 ^-1 ^-16 ^-8 ^ ^-13 minecraft:stone_bricks
fill ^8 ^-1 ^-16 ^13 ^ ^-13 minecraft:stone_bricks
fill ^-13 ^-1 ^13 ^-8 ^ ^16 minecraft:stone_bricks
fill ^8 ^-1 ^13 ^13 ^ ^16 minecraft:stone_bricks
fill ^-11 ^1 ^-15 ^-10 ^3 ^-14 minecraft:dark_oak_log
fill ^10 ^1 ^-15 ^11 ^3 ^-14 minecraft:dark_oak_log
fill ^-10 ^4 ^-15 ^-9 ^6 ^-14 minecraft:dark_oak_log
fill ^9 ^4 ^-15 ^10 ^6 ^-14 minecraft:dark_oak_log
fill ^-9 ^7 ^-15 ^-8 ^9 ^-14 minecraft:dark_oak_log
fill ^8 ^7 ^-15 ^9 ^9 ^-14 minecraft:dark_oak_log
fill ^-8 ^10 ^-15 ^-7 ^12 ^-14 minecraft:dark_oak_log
fill ^7 ^10 ^-15 ^8 ^12 ^-14 minecraft:dark_oak_log
fill ^-7 ^13 ^-15 ^-6 ^15 ^-14 minecraft:dark_oak_log
fill ^6 ^13 ^-15 ^7 ^15 ^-14 minecraft:dark_oak_log
fill ^-6 ^16 ^-15 ^-5 ^18 ^-14 minecraft:dark_oak_log
fill ^5 ^16 ^-15 ^6 ^18 ^-14 minecraft:dark_oak_log
fill ^-5 ^19 ^-15 ^-4 ^21 ^-14 minecraft:dark_oak_log
fill ^4 ^19 ^-15 ^5 ^21 ^-14 minecraft:dark_oak_log
fill ^-4 ^22 ^-15 ^-3 ^24 ^-14 minecraft:dark_oak_log
fill ^3 ^22 ^-15 ^4 ^24 ^-14 minecraft:dark_oak_log
fill ^-3 ^25 ^-15 ^-2 ^27 ^-14 minecraft:dark_oak_log
fill ^2 ^25 ^-15 ^3 ^27 ^-14 minecraft:dark_oak_log
fill ^-2 ^28 ^-15 ^-1 ^29 ^-14 minecraft:dark_oak_log
fill ^1 ^28 ^-15 ^2 ^29 ^-14 minecraft:dark_oak_log
fill ^-9 ^7 ^-15 ^9 ^8 ^-14 minecraft:spruce_planks
fill ^-7 ^14 ^-15 ^7 ^15 ^-14 minecraft:spruce_planks
fill ^-5 ^21 ^-15 ^5 ^22 ^-14 minecraft:spruce_planks
fill ^-11 ^1 ^14 ^-10 ^3 ^15 minecraft:dark_oak_log
fill ^10 ^1 ^14 ^11 ^3 ^15 minecraft:dark_oak_log
fill ^-10 ^4 ^14 ^-9 ^6 ^15 minecraft:dark_oak_log
fill ^9 ^4 ^14 ^10 ^6 ^15 minecraft:dark_oak_log
fill ^-9 ^7 ^14 ^-8 ^9 ^15 minecraft:dark_oak_log
fill ^8 ^7 ^14 ^9 ^9 ^15 minecraft:dark_oak_log
fill ^-8 ^10 ^14 ^-7 ^12 ^15 minecraft:dark_oak_log
fill ^7 ^10 ^14 ^8 ^12 ^15 minecraft:dark_oak_log
fill ^-7 ^13 ^14 ^-6 ^15 ^15 minecraft:dark_oak_log
fill ^6 ^13 ^14 ^7 ^15 ^15 minecraft:dark_oak_log
fill ^-6 ^16 ^14 ^-5 ^18 ^15 minecraft:dark_oak_log
fill ^5 ^16 ^14 ^6 ^18 ^15 minecraft:dark_oak_log
fill ^-5 ^19 ^14 ^-4 ^21 ^15 minecraft:dark_oak_log
fill ^4 ^19 ^14 ^5 ^21 ^15 minecraft:dark_oak_log
fill ^-4 ^22 ^14 ^-3 ^24 ^15 minecraft:dark_oak_log
fill ^3 ^22 ^14 ^4 ^24 ^15 minecraft:dark_oak_log
fill ^-3 ^25 ^14 ^-2 ^27 ^15 minecraft:dark_oak_log
fill ^2 ^25 ^14 ^3 ^27 ^15 minecraft:dark_oak_log
fill ^-2 ^28 ^14 ^-1 ^29 ^15 minecraft:dark_oak_log
fill ^1 ^28 ^14 ^2 ^29 ^15 minecraft:dark_oak_log
fill ^-9 ^7 ^14 ^9 ^8 ^15 minecraft:spruce_planks
fill ^-7 ^14 ^14 ^7 ^15 ^15 minecraft:spruce_planks
fill ^-5 ^21 ^14 ^5 ^22 ^15 minecraft:spruce_planks
fill ^-3 ^29 ^-16 ^3 ^31 ^16 minecraft:dark_oak_log
fill ^-5 ^31 ^-17 ^5 ^32 ^-13 minecraft:spruce_planks
fill ^-5 ^31 ^13 ^5 ^32 ^17 minecraft:spruce_planks
fill ^-2 ^28 ^-2 ^2 ^30 ^2 minecraft:iron_block

# === TILTED VIKING SHIP HULL ===
fill ^-30 ^5 ^-1 ^-29 ^5 ^1 minecraft:dark_oak_log
fill ^-30 ^6 ^-2 ^-29 ^6 ^2 minecraft:dark_oak_planks
fill ^-30 ^7 ^-2 ^-29 ^7 ^2 minecraft:dark_oak_planks
fill ^-30 ^8 ^-3 ^-29 ^8 ^3 minecraft:spruce_planks
fill ^-30 ^9 ^-2 ^-29 ^9 ^2 minecraft:spruce_planks
fill ^-30 ^10 ^-2 ^-29 ^10 ^2 minecraft:oak_planks
fill ^-28 ^5 ^-1 ^-27 ^5 ^1 minecraft:dark_oak_log
fill ^-28 ^6 ^-2 ^-27 ^6 ^2 minecraft:dark_oak_planks
fill ^-28 ^7 ^-2 ^-27 ^7 ^2 minecraft:dark_oak_planks
fill ^-28 ^8 ^-3 ^-27 ^8 ^3 minecraft:spruce_planks
fill ^-28 ^9 ^-2 ^-27 ^9 ^2 minecraft:spruce_planks
fill ^-28 ^10 ^-2 ^-27 ^10 ^2 minecraft:oak_planks
fill ^-26 ^5 ^-1 ^-25 ^5 ^1 minecraft:dark_oak_log
fill ^-26 ^6 ^-2 ^-25 ^6 ^2 minecraft:dark_oak_planks
fill ^-26 ^7 ^-2 ^-25 ^7 ^2 minecraft:dark_oak_planks
fill ^-26 ^8 ^-3 ^-25 ^8 ^3 minecraft:spruce_planks
fill ^-26 ^9 ^-3 ^-25 ^9 ^3 minecraft:spruce_planks
fill ^-26 ^10 ^-3 ^-25 ^10 ^3 minecraft:oak_planks
fill ^-24 ^6 ^-1 ^-23 ^6 ^1 minecraft:dark_oak_log
fill ^-24 ^7 ^-2 ^-23 ^7 ^2 minecraft:dark_oak_planks
fill ^-24 ^8 ^-2 ^-23 ^8 ^2 minecraft:dark_oak_planks
fill ^-24 ^9 ^-3 ^-23 ^9 ^3 minecraft:spruce_planks
fill ^-24 ^10 ^-3 ^-23 ^10 ^3 minecraft:spruce_planks
fill ^-24 ^11 ^-3 ^-23 ^11 ^3 minecraft:oak_planks
fill ^-22 ^6 ^-1 ^-21 ^6 ^1 minecraft:dark_oak_log
fill ^-22 ^7 ^-2 ^-21 ^7 ^2 minecraft:dark_oak_planks
fill ^-22 ^8 ^-2 ^-21 ^8 ^2 minecraft:dark_oak_planks
fill ^-22 ^9 ^-3 ^-21 ^9 ^3 minecraft:spruce_planks
fill ^-22 ^10 ^-3 ^-21 ^10 ^3 minecraft:spruce_planks
fill ^-22 ^11 ^-3 ^-21 ^11 ^3 minecraft:oak_planks
fill ^-20 ^6 ^-1 ^-19 ^6 ^1 minecraft:dark_oak_log
fill ^-20 ^7 ^-2 ^-19 ^7 ^2 minecraft:dark_oak_planks
fill ^-20 ^8 ^-2 ^-19 ^8 ^2 minecraft:dark_oak_planks
fill ^-20 ^9 ^-3 ^-19 ^9 ^3 minecraft:spruce_planks
fill ^-20 ^10 ^-4 ^-19 ^10 ^4 minecraft:spruce_planks
fill ^-20 ^11 ^-4 ^-19 ^11 ^4 minecraft:oak_planks
fill ^-18 ^6 ^-1 ^-17 ^6 ^1 minecraft:dark_oak_log
fill ^-18 ^7 ^-2 ^-17 ^7 ^2 minecraft:dark_oak_planks
fill ^-18 ^8 ^-2 ^-17 ^8 ^2 minecraft:dark_oak_planks
fill ^-18 ^9 ^-3 ^-17 ^9 ^3 minecraft:spruce_planks
fill ^-18 ^10 ^-4 ^-17 ^10 ^4 minecraft:spruce_planks
fill ^-18 ^11 ^-4 ^-17 ^11 ^4 minecraft:oak_planks
fill ^-16 ^6 ^-1 ^-15 ^6 ^1 minecraft:dark_oak_log
fill ^-16 ^7 ^-2 ^-15 ^7 ^2 minecraft:dark_oak_planks
fill ^-16 ^8 ^-2 ^-15 ^8 ^2 minecraft:dark_oak_planks
fill ^-16 ^9 ^-3 ^-15 ^9 ^3 minecraft:spruce_planks
fill ^-16 ^10 ^-4 ^-15 ^10 ^4 minecraft:spruce_planks
fill ^-16 ^11 ^-4 ^-15 ^11 ^4 minecraft:oak_planks
fill ^-14 ^7 ^-1 ^-13 ^7 ^1 minecraft:dark_oak_log
fill ^-14 ^8 ^-2 ^-13 ^8 ^2 minecraft:dark_oak_planks
fill ^-14 ^9 ^-2 ^-13 ^9 ^2 minecraft:dark_oak_planks
fill ^-14 ^10 ^-3 ^-13 ^10 ^3 minecraft:spruce_planks
fill ^-14 ^11 ^-5 ^-13 ^11 ^5 minecraft:spruce_planks
fill ^-14 ^12 ^-5 ^-13 ^12 ^5 minecraft:oak_planks
fill ^-12 ^7 ^-1 ^-11 ^7 ^1 minecraft:dark_oak_log
fill ^-12 ^8 ^-2 ^-11 ^8 ^2 minecraft:dark_oak_planks
fill ^-12 ^9 ^-2 ^-11 ^9 ^2 minecraft:dark_oak_planks
fill ^-12 ^10 ^-3 ^-11 ^10 ^3 minecraft:spruce_planks
fill ^-12 ^11 ^-5 ^-11 ^11 ^5 minecraft:spruce_planks
fill ^-12 ^12 ^-5 ^-11 ^12 ^5 minecraft:oak_planks
fill ^-10 ^7 ^-1 ^-9 ^7 ^1 minecraft:dark_oak_log
fill ^-10 ^8 ^-2 ^-9 ^8 ^2 minecraft:dark_oak_planks
fill ^-10 ^9 ^-2 ^-9 ^9 ^2 minecraft:dark_oak_planks
fill ^-10 ^10 ^-3 ^-9 ^10 ^3 minecraft:spruce_planks
fill ^-10 ^11 ^-5 ^-9 ^11 ^5 minecraft:spruce_planks
fill ^-10 ^12 ^-5 ^-9 ^12 ^5 minecraft:oak_planks
fill ^-8 ^7 ^-1 ^-7 ^7 ^1 minecraft:dark_oak_log
fill ^-8 ^8 ^-2 ^-7 ^8 ^2 minecraft:dark_oak_planks
fill ^-8 ^9 ^-3 ^-7 ^9 ^3 minecraft:dark_oak_planks
fill ^-8 ^10 ^-4 ^-7 ^10 ^4 minecraft:spruce_planks
fill ^-8 ^11 ^-6 ^-7 ^11 ^6 minecraft:spruce_planks
fill ^-8 ^12 ^-6 ^-7 ^12 ^6 minecraft:oak_planks
fill ^-6 ^7 ^-1 ^-5 ^7 ^1 minecraft:dark_oak_log
fill ^-6 ^8 ^-2 ^-5 ^8 ^2 minecraft:dark_oak_planks
fill ^-6 ^9 ^-3 ^-5 ^9 ^3 minecraft:dark_oak_planks
fill ^-6 ^10 ^-4 ^-5 ^10 ^4 minecraft:spruce_planks
fill ^-6 ^11 ^-6 ^-5 ^11 ^6 minecraft:spruce_planks
fill ^-6 ^12 ^-6 ^-5 ^12 ^6 minecraft:oak_planks
fill ^-4 ^8 ^-1 ^-3 ^8 ^1 minecraft:dark_oak_log
fill ^-4 ^9 ^-2 ^-3 ^9 ^2 minecraft:dark_oak_planks
fill ^-4 ^10 ^-3 ^-3 ^10 ^3 minecraft:dark_oak_planks
fill ^-4 ^11 ^-4 ^-3 ^11 ^4 minecraft:spruce_planks
fill ^-4 ^12 ^-6 ^-3 ^12 ^6 minecraft:spruce_planks
fill ^-4 ^13 ^-6 ^-3 ^13 ^6 minecraft:oak_planks
fill ^-2 ^8 ^-1 ^-1 ^8 ^1 minecraft:dark_oak_log
fill ^-2 ^9 ^-2 ^-1 ^9 ^2 minecraft:dark_oak_planks
fill ^-2 ^10 ^-4 ^-1 ^10 ^4 minecraft:dark_oak_planks
fill ^-2 ^11 ^-5 ^-1 ^11 ^5 minecraft:spruce_planks
fill ^-2 ^12 ^-7 ^-1 ^12 ^7 minecraft:spruce_planks
fill ^-2 ^13 ^-7 ^-1 ^13 ^7 minecraft:oak_planks
fill ^ ^8 ^-1 ^1 ^8 ^1 minecraft:dark_oak_log
fill ^ ^9 ^-2 ^1 ^9 ^2 minecraft:dark_oak_planks
fill ^ ^10 ^-4 ^1 ^10 ^4 minecraft:dark_oak_planks
fill ^ ^11 ^-5 ^1 ^11 ^5 minecraft:spruce_planks
fill ^ ^12 ^-7 ^1 ^12 ^7 minecraft:spruce_planks
fill ^ ^13 ^-7 ^1 ^13 ^7 minecraft:oak_planks
fill ^2 ^8 ^-1 ^3 ^8 ^1 minecraft:dark_oak_log
fill ^2 ^9 ^-2 ^3 ^9 ^2 minecraft:dark_oak_planks
fill ^2 ^10 ^-4 ^3 ^10 ^4 minecraft:dark_oak_planks
fill ^2 ^11 ^-5 ^3 ^11 ^5 minecraft:spruce_planks
fill ^2 ^12 ^-7 ^3 ^12 ^7 minecraft:spruce_planks
fill ^2 ^13 ^-7 ^3 ^13 ^7 minecraft:oak_planks
fill ^4 ^8 ^-1 ^5 ^8 ^1 minecraft:dark_oak_log
fill ^4 ^9 ^-2 ^5 ^9 ^2 minecraft:dark_oak_planks
fill ^4 ^10 ^-3 ^5 ^10 ^3 minecraft:dark_oak_planks
fill ^4 ^11 ^-4 ^5 ^11 ^4 minecraft:spruce_planks
fill ^4 ^12 ^-6 ^5 ^12 ^6 minecraft:spruce_planks
fill ^4 ^13 ^-6 ^5 ^13 ^6 minecraft:oak_planks
fill ^6 ^9 ^-1 ^7 ^9 ^1 minecraft:dark_oak_log
fill ^6 ^10 ^-2 ^7 ^10 ^2 minecraft:dark_oak_planks
fill ^6 ^11 ^-3 ^7 ^11 ^3 minecraft:dark_oak_planks
fill ^6 ^12 ^-4 ^7 ^12 ^4 minecraft:spruce_planks
fill ^6 ^13 ^-6 ^7 ^13 ^6 minecraft:spruce_planks
fill ^6 ^14 ^-6 ^7 ^14 ^6 minecraft:oak_planks
fill ^8 ^9 ^-1 ^9 ^9 ^1 minecraft:dark_oak_log
fill ^8 ^10 ^-2 ^9 ^10 ^2 minecraft:dark_oak_planks
fill ^8 ^11 ^-3 ^9 ^11 ^3 minecraft:dark_oak_planks
fill ^8 ^12 ^-4 ^9 ^12 ^4 minecraft:spruce_planks
fill ^8 ^13 ^-6 ^9 ^13 ^6 minecraft:spruce_planks
fill ^8 ^14 ^-6 ^9 ^14 ^6 minecraft:oak_planks
fill ^10 ^9 ^-1 ^11 ^9 ^1 minecraft:dark_oak_log
fill ^10 ^10 ^-2 ^11 ^10 ^2 minecraft:dark_oak_planks
fill ^10 ^11 ^-2 ^11 ^11 ^2 minecraft:dark_oak_planks
fill ^10 ^12 ^-3 ^11 ^12 ^3 minecraft:spruce_planks
fill ^10 ^13 ^-5 ^11 ^13 ^5 minecraft:spruce_planks
fill ^10 ^14 ^-5 ^11 ^14 ^5 minecraft:oak_planks
fill ^12 ^9 ^-1 ^13 ^9 ^1 minecraft:dark_oak_log
fill ^12 ^10 ^-2 ^13 ^10 ^2 minecraft:dark_oak_planks
fill ^12 ^11 ^-2 ^13 ^11 ^2 minecraft:dark_oak_planks
fill ^12 ^12 ^-3 ^13 ^12 ^3 minecraft:spruce_planks
fill ^12 ^13 ^-5 ^13 ^13 ^5 minecraft:spruce_planks
fill ^12 ^14 ^-5 ^13 ^14 ^5 minecraft:oak_planks
fill ^14 ^9 ^-1 ^15 ^9 ^1 minecraft:dark_oak_log
fill ^14 ^10 ^-2 ^15 ^10 ^2 minecraft:dark_oak_planks
fill ^14 ^11 ^-2 ^15 ^11 ^2 minecraft:dark_oak_planks
fill ^14 ^12 ^-3 ^15 ^12 ^3 minecraft:spruce_planks
fill ^14 ^13 ^-5 ^15 ^13 ^5 minecraft:spruce_planks
fill ^14 ^14 ^-5 ^15 ^14 ^5 minecraft:oak_planks
fill ^16 ^10 ^-1 ^17 ^10 ^1 minecraft:dark_oak_log
fill ^16 ^11 ^-2 ^17 ^11 ^2 minecraft:dark_oak_planks
fill ^16 ^12 ^-2 ^17 ^12 ^2 minecraft:dark_oak_planks
fill ^16 ^13 ^-3 ^17 ^13 ^3 minecraft:spruce_planks
fill ^16 ^14 ^-4 ^17 ^14 ^4 minecraft:spruce_planks
fill ^16 ^15 ^-4 ^17 ^15 ^4 minecraft:oak_planks
fill ^18 ^10 ^-1 ^19 ^10 ^1 minecraft:dark_oak_log
fill ^18 ^11 ^-2 ^19 ^11 ^2 minecraft:dark_oak_planks
fill ^18 ^12 ^-2 ^19 ^12 ^2 minecraft:dark_oak_planks
fill ^18 ^13 ^-3 ^19 ^13 ^3 minecraft:spruce_planks
fill ^18 ^14 ^-4 ^19 ^14 ^4 minecraft:spruce_planks
fill ^18 ^15 ^-4 ^19 ^15 ^4 minecraft:oak_planks
fill ^20 ^10 ^-1 ^21 ^10 ^1 minecraft:dark_oak_log
fill ^20 ^11 ^-2 ^21 ^11 ^2 minecraft:dark_oak_planks
fill ^20 ^12 ^-2 ^21 ^12 ^2 minecraft:dark_oak_planks
fill ^20 ^13 ^-3 ^21 ^13 ^3 minecraft:spruce_planks
fill ^20 ^14 ^-4 ^21 ^14 ^4 minecraft:spruce_planks
fill ^20 ^15 ^-4 ^21 ^15 ^4 minecraft:oak_planks
fill ^22 ^10 ^-1 ^23 ^10 ^1 minecraft:dark_oak_log
fill ^22 ^11 ^-2 ^23 ^11 ^2 minecraft:dark_oak_planks
fill ^22 ^12 ^-2 ^23 ^12 ^2 minecraft:dark_oak_planks
fill ^22 ^13 ^-3 ^23 ^13 ^3 minecraft:spruce_planks
fill ^22 ^14 ^-3 ^23 ^14 ^3 minecraft:spruce_planks
fill ^22 ^15 ^-3 ^23 ^15 ^3 minecraft:oak_planks
fill ^24 ^10 ^-1 ^25 ^10 ^1 minecraft:dark_oak_log
fill ^24 ^11 ^-2 ^25 ^11 ^2 minecraft:dark_oak_planks
fill ^24 ^12 ^-2 ^25 ^12 ^2 minecraft:dark_oak_planks
fill ^24 ^13 ^-3 ^25 ^13 ^3 minecraft:spruce_planks
fill ^24 ^14 ^-3 ^25 ^14 ^3 minecraft:spruce_planks
fill ^24 ^15 ^-3 ^25 ^15 ^3 minecraft:oak_planks
fill ^26 ^11 ^-1 ^27 ^11 ^1 minecraft:dark_oak_log
fill ^26 ^12 ^-2 ^27 ^12 ^2 minecraft:dark_oak_planks
fill ^26 ^13 ^-2 ^27 ^13 ^2 minecraft:dark_oak_planks
fill ^26 ^14 ^-3 ^27 ^14 ^3 minecraft:spruce_planks
fill ^26 ^15 ^-3 ^27 ^15 ^3 minecraft:spruce_planks
fill ^26 ^16 ^-3 ^27 ^16 ^3 minecraft:oak_planks
fill ^28 ^11 ^-1 ^29 ^11 ^1 minecraft:dark_oak_log
fill ^28 ^12 ^-2 ^29 ^12 ^2 minecraft:dark_oak_planks
fill ^28 ^13 ^-2 ^29 ^13 ^2 minecraft:dark_oak_planks
fill ^28 ^14 ^-3 ^29 ^14 ^3 minecraft:spruce_planks
fill ^28 ^15 ^-2 ^29 ^15 ^2 minecraft:spruce_planks
fill ^28 ^16 ^-2 ^29 ^16 ^2 minecraft:oak_planks
fill ^30 ^11 ^-1 ^30 ^11 ^1 minecraft:dark_oak_log
fill ^30 ^12 ^-2 ^30 ^12 ^2 minecraft:dark_oak_planks
fill ^30 ^13 ^-2 ^30 ^13 ^2 minecraft:dark_oak_planks
fill ^30 ^14 ^-3 ^30 ^14 ^3 minecraft:spruce_planks
fill ^30 ^15 ^-2 ^30 ^15 ^2 minecraft:spruce_planks
fill ^30 ^16 ^-2 ^30 ^16 ^2 minecraft:oak_planks
setblock ^-30 ^10 ^-2 minecraft:dark_oak_planks
setblock ^-29 ^10 ^-2 minecraft:dark_oak_planks
setblock ^-30 ^10 ^2 minecraft:dark_oak_planks
setblock ^-29 ^10 ^2 minecraft:dark_oak_planks
setblock ^-28 ^10 ^-2 minecraft:dark_oak_planks
setblock ^-27 ^10 ^-2 minecraft:dark_oak_planks
setblock ^-28 ^10 ^2 minecraft:dark_oak_planks
setblock ^-27 ^10 ^2 minecraft:dark_oak_planks
setblock ^-26 ^10 ^-3 minecraft:dark_oak_planks
setblock ^-25 ^10 ^-3 minecraft:dark_oak_planks
setblock ^-26 ^10 ^3 minecraft:dark_oak_planks
setblock ^-25 ^10 ^3 minecraft:dark_oak_planks
setblock ^-24 ^11 ^-3 minecraft:dark_oak_planks
setblock ^-23 ^11 ^-3 minecraft:dark_oak_planks
setblock ^-24 ^11 ^3 minecraft:dark_oak_planks
setblock ^-23 ^11 ^3 minecraft:dark_oak_planks
setblock ^-22 ^11 ^-3 minecraft:dark_oak_planks
setblock ^-21 ^11 ^-3 minecraft:dark_oak_planks
setblock ^-22 ^11 ^3 minecraft:dark_oak_planks
setblock ^-21 ^11 ^3 minecraft:dark_oak_planks
setblock ^-20 ^11 ^-4 minecraft:dark_oak_planks
setblock ^-19 ^11 ^-4 minecraft:dark_oak_planks
setblock ^-20 ^11 ^4 minecraft:dark_oak_planks
setblock ^-19 ^11 ^4 minecraft:dark_oak_planks
setblock ^-18 ^11 ^-4 minecraft:dark_oak_planks
setblock ^-17 ^11 ^-4 minecraft:dark_oak_planks
setblock ^-18 ^11 ^4 minecraft:dark_oak_planks
setblock ^-17 ^11 ^4 minecraft:dark_oak_planks
setblock ^-16 ^11 ^-4 minecraft:dark_oak_planks
setblock ^-15 ^11 ^-4 minecraft:dark_oak_planks
setblock ^-16 ^11 ^4 minecraft:dark_oak_planks
setblock ^-15 ^11 ^4 minecraft:dark_oak_planks
setblock ^-14 ^12 ^-5 minecraft:dark_oak_planks
setblock ^-13 ^12 ^-5 minecraft:dark_oak_planks
setblock ^-14 ^12 ^5 minecraft:dark_oak_planks
setblock ^-13 ^12 ^5 minecraft:dark_oak_planks
setblock ^-12 ^12 ^-5 minecraft:dark_oak_planks
setblock ^-11 ^12 ^-5 minecraft:dark_oak_planks
setblock ^-12 ^12 ^5 minecraft:dark_oak_planks
setblock ^-11 ^12 ^5 minecraft:dark_oak_planks
setblock ^-10 ^12 ^-5 minecraft:dark_oak_planks
setblock ^-9 ^12 ^-5 minecraft:dark_oak_planks
setblock ^-10 ^12 ^5 minecraft:dark_oak_planks
setblock ^-9 ^12 ^5 minecraft:dark_oak_planks
setblock ^-8 ^12 ^-6 minecraft:dark_oak_planks
setblock ^-7 ^12 ^-6 minecraft:dark_oak_planks
setblock ^-8 ^12 ^6 minecraft:dark_oak_planks
setblock ^-7 ^12 ^6 minecraft:dark_oak_planks
setblock ^-6 ^12 ^-6 minecraft:dark_oak_planks
setblock ^-5 ^12 ^-6 minecraft:dark_oak_planks
setblock ^-6 ^12 ^6 minecraft:dark_oak_planks
setblock ^-5 ^12 ^6 minecraft:dark_oak_planks
setblock ^-4 ^13 ^-6 minecraft:dark_oak_planks
setblock ^-3 ^13 ^-6 minecraft:dark_oak_planks
setblock ^-4 ^13 ^6 minecraft:dark_oak_planks
setblock ^-3 ^13 ^6 minecraft:dark_oak_planks
setblock ^-2 ^13 ^-7 minecraft:dark_oak_planks
setblock ^-1 ^13 ^-7 minecraft:dark_oak_planks
setblock ^-2 ^13 ^7 minecraft:dark_oak_planks
setblock ^-1 ^13 ^7 minecraft:dark_oak_planks
setblock ^ ^13 ^-7 minecraft:dark_oak_planks
setblock ^1 ^13 ^-7 minecraft:dark_oak_planks
setblock ^ ^13 ^7 minecraft:dark_oak_planks
setblock ^1 ^13 ^7 minecraft:dark_oak_planks
setblock ^2 ^13 ^-7 minecraft:dark_oak_planks
setblock ^3 ^13 ^-7 minecraft:dark_oak_planks
setblock ^2 ^13 ^7 minecraft:dark_oak_planks
setblock ^3 ^13 ^7 minecraft:dark_oak_planks
setblock ^4 ^13 ^-6 minecraft:dark_oak_planks
setblock ^5 ^13 ^-6 minecraft:dark_oak_planks
setblock ^4 ^13 ^6 minecraft:dark_oak_planks
setblock ^5 ^13 ^6 minecraft:dark_oak_planks
setblock ^6 ^14 ^-6 minecraft:dark_oak_planks
setblock ^7 ^14 ^-6 minecraft:dark_oak_planks
setblock ^6 ^14 ^6 minecraft:dark_oak_planks
setblock ^7 ^14 ^6 minecraft:dark_oak_planks
setblock ^8 ^14 ^-6 minecraft:dark_oak_planks
setblock ^9 ^14 ^-6 minecraft:dark_oak_planks
setblock ^8 ^14 ^6 minecraft:dark_oak_planks
setblock ^9 ^14 ^6 minecraft:dark_oak_planks
setblock ^10 ^14 ^-5 minecraft:dark_oak_planks
setblock ^11 ^14 ^-5 minecraft:dark_oak_planks
setblock ^10 ^14 ^5 minecraft:dark_oak_planks
setblock ^11 ^14 ^5 minecraft:dark_oak_planks
setblock ^12 ^14 ^-5 minecraft:dark_oak_planks
setblock ^13 ^14 ^-5 minecraft:dark_oak_planks
setblock ^12 ^14 ^5 minecraft:dark_oak_planks
setblock ^13 ^14 ^5 minecraft:dark_oak_planks
setblock ^14 ^14 ^-5 minecraft:dark_oak_planks
setblock ^15 ^14 ^-5 minecraft:dark_oak_planks
setblock ^14 ^14 ^5 minecraft:dark_oak_planks
setblock ^15 ^14 ^5 minecraft:dark_oak_planks
setblock ^16 ^15 ^-4 minecraft:dark_oak_planks
setblock ^17 ^15 ^-4 minecraft:dark_oak_planks
setblock ^16 ^15 ^4 minecraft:dark_oak_planks
setblock ^17 ^15 ^4 minecraft:dark_oak_planks
setblock ^18 ^15 ^-4 minecraft:dark_oak_planks
setblock ^19 ^15 ^-4 minecraft:dark_oak_planks
setblock ^18 ^15 ^4 minecraft:dark_oak_planks
setblock ^19 ^15 ^4 minecraft:dark_oak_planks
setblock ^20 ^15 ^-4 minecraft:dark_oak_planks
setblock ^21 ^15 ^-4 minecraft:dark_oak_planks
setblock ^20 ^15 ^4 minecraft:dark_oak_planks
setblock ^21 ^15 ^4 minecraft:dark_oak_planks
setblock ^22 ^15 ^-3 minecraft:dark_oak_planks
setblock ^23 ^15 ^-3 minecraft:dark_oak_planks
setblock ^22 ^15 ^3 minecraft:dark_oak_planks
setblock ^23 ^15 ^3 minecraft:dark_oak_planks
setblock ^24 ^15 ^-3 minecraft:dark_oak_planks
setblock ^25 ^15 ^-3 minecraft:dark_oak_planks
setblock ^24 ^15 ^3 minecraft:dark_oak_planks
setblock ^25 ^15 ^3 minecraft:dark_oak_planks
setblock ^26 ^16 ^-3 minecraft:dark_oak_planks
setblock ^27 ^16 ^-3 minecraft:dark_oak_planks
setblock ^26 ^16 ^3 minecraft:dark_oak_planks
setblock ^27 ^16 ^3 minecraft:dark_oak_planks
setblock ^28 ^16 ^-2 minecraft:dark_oak_planks
setblock ^29 ^16 ^-2 minecraft:dark_oak_planks
setblock ^28 ^16 ^2 minecraft:dark_oak_planks
setblock ^29 ^16 ^2 minecraft:dark_oak_planks
setblock ^30 ^16 ^-2 minecraft:dark_oak_planks
setblock ^30 ^16 ^-2 minecraft:dark_oak_planks
setblock ^30 ^16 ^2 minecraft:dark_oak_planks
setblock ^30 ^16 ^2 minecraft:dark_oak_planks

# === RAILS, BENCHES & RIDE SEATING ===
setblock ^-30 ^11 ^-2 minecraft:spruce_fence
setblock ^-30 ^11 ^2 minecraft:spruce_fence
setblock ^-28 ^11 ^-2 minecraft:spruce_fence
setblock ^-28 ^11 ^2 minecraft:spruce_fence
setblock ^-26 ^11 ^-3 minecraft:spruce_fence
setblock ^-26 ^11 ^3 minecraft:spruce_fence
setblock ^-24 ^12 ^-3 minecraft:spruce_fence
setblock ^-24 ^12 ^3 minecraft:spruce_fence
setblock ^-22 ^12 ^-3 minecraft:spruce_fence
setblock ^-22 ^12 ^3 minecraft:spruce_fence
setblock ^-20 ^12 ^-4 minecraft:spruce_fence
setblock ^-20 ^12 ^4 minecraft:spruce_fence
setblock ^-18 ^12 ^-4 minecraft:spruce_fence
setblock ^-18 ^12 ^4 minecraft:spruce_fence
setblock ^-16 ^12 ^-4 minecraft:spruce_fence
setblock ^-16 ^12 ^4 minecraft:spruce_fence
setblock ^-14 ^13 ^-5 minecraft:spruce_fence
setblock ^-14 ^13 ^5 minecraft:spruce_fence
setblock ^-12 ^13 ^-5 minecraft:spruce_fence
setblock ^-12 ^13 ^5 minecraft:spruce_fence
setblock ^-10 ^13 ^-5 minecraft:spruce_fence
setblock ^-10 ^13 ^5 minecraft:spruce_fence
setblock ^-8 ^13 ^-6 minecraft:spruce_fence
setblock ^-8 ^13 ^6 minecraft:spruce_fence
setblock ^-6 ^13 ^-6 minecraft:spruce_fence
setblock ^-6 ^13 ^6 minecraft:spruce_fence
setblock ^-4 ^14 ^-6 minecraft:spruce_fence
setblock ^-4 ^14 ^6 minecraft:spruce_fence
setblock ^-2 ^14 ^-7 minecraft:spruce_fence
setblock ^-2 ^14 ^7 minecraft:spruce_fence
setblock ^ ^14 ^-7 minecraft:spruce_fence
setblock ^ ^14 ^7 minecraft:spruce_fence
setblock ^2 ^14 ^-7 minecraft:spruce_fence
setblock ^2 ^14 ^7 minecraft:spruce_fence
setblock ^4 ^14 ^-6 minecraft:spruce_fence
setblock ^4 ^14 ^6 minecraft:spruce_fence
setblock ^6 ^15 ^-6 minecraft:spruce_fence
setblock ^6 ^15 ^6 minecraft:spruce_fence
setblock ^8 ^15 ^-6 minecraft:spruce_fence
setblock ^8 ^15 ^6 minecraft:spruce_fence
setblock ^10 ^15 ^-5 minecraft:spruce_fence
setblock ^10 ^15 ^5 minecraft:spruce_fence
setblock ^12 ^15 ^-5 minecraft:spruce_fence
setblock ^12 ^15 ^5 minecraft:spruce_fence
setblock ^14 ^15 ^-5 minecraft:spruce_fence
setblock ^14 ^15 ^5 minecraft:spruce_fence
setblock ^16 ^16 ^-4 minecraft:spruce_fence
setblock ^16 ^16 ^4 minecraft:spruce_fence
setblock ^18 ^16 ^-4 minecraft:spruce_fence
setblock ^18 ^16 ^4 minecraft:spruce_fence
setblock ^20 ^16 ^-4 minecraft:spruce_fence
setblock ^20 ^16 ^4 minecraft:spruce_fence
setblock ^22 ^16 ^-3 minecraft:spruce_fence
setblock ^22 ^16 ^3 minecraft:spruce_fence
setblock ^24 ^16 ^-3 minecraft:spruce_fence
setblock ^24 ^16 ^3 minecraft:spruce_fence
setblock ^26 ^17 ^-3 minecraft:spruce_fence
setblock ^26 ^17 ^3 minecraft:spruce_fence
setblock ^28 ^17 ^-2 minecraft:spruce_fence
setblock ^28 ^17 ^2 minecraft:spruce_fence
setblock ^30 ^17 ^-2 minecraft:spruce_fence
setblock ^30 ^17 ^2 minecraft:spruce_fence
fill ^-30 ^11 ^-2 ^-30 ^11 ^2 minecraft:spruce_fence
fill ^30 ^17 ^-2 ^30 ^17 ^2 minecraft:spruce_fence
fill ^-20 ^12 ^-2 ^-19 ^12 ^2 minecraft:red_wool
setblock ^-20 ^13 ^-2 minecraft:iron_bars
setblock ^-20 ^13 ^2 minecraft:iron_bars
fill ^-14 ^13 ^-3 ^-13 ^13 ^3 minecraft:red_wool
setblock ^-14 ^14 ^-3 minecraft:iron_bars
setblock ^-14 ^14 ^3 minecraft:iron_bars
fill ^-8 ^13 ^-4 ^-7 ^13 ^4 minecraft:red_wool
setblock ^-8 ^14 ^-4 minecraft:iron_bars
setblock ^-8 ^14 ^4 minecraft:iron_bars
fill ^-2 ^14 ^-5 ^-1 ^14 ^5 minecraft:red_wool
setblock ^-2 ^15 ^-5 minecraft:iron_bars
setblock ^-2 ^15 ^5 minecraft:iron_bars
fill ^4 ^14 ^-4 ^5 ^14 ^4 minecraft:red_wool
setblock ^4 ^15 ^-4 minecraft:iron_bars
setblock ^4 ^15 ^4 minecraft:iron_bars
fill ^10 ^15 ^-3 ^11 ^15 ^3 minecraft:red_wool
setblock ^10 ^16 ^-3 minecraft:iron_bars
setblock ^10 ^16 ^3 minecraft:iron_bars
fill ^16 ^16 ^-2 ^17 ^16 ^2 minecraft:red_wool
setblock ^16 ^17 ^-2 minecraft:iron_bars
setblock ^16 ^17 ^2 minecraft:iron_bars
fill ^22 ^16 ^-1 ^23 ^16 ^1 minecraft:red_wool
setblock ^22 ^17 ^-1 minecraft:iron_bars
setblock ^22 ^17 ^1 minecraft:iron_bars

# === DECORATIVE VIKING SHIELDS ===
setblock ^-22 ^10 ^-4 minecraft:red_wool
setblock ^-23 ^10 ^-4 minecraft:red_wool
setblock ^-21 ^10 ^-4 minecraft:red_wool
setblock ^-22 ^11 ^-4 minecraft:red_wool
setblock ^-22 ^9 ^-4 minecraft:red_wool
setblock ^-22 ^10 ^-4 minecraft:gold_block
setblock ^-22 ^10 ^4 minecraft:red_wool
setblock ^-23 ^10 ^4 minecraft:red_wool
setblock ^-21 ^10 ^4 minecraft:red_wool
setblock ^-22 ^11 ^4 minecraft:red_wool
setblock ^-22 ^9 ^4 minecraft:red_wool
setblock ^-22 ^10 ^4 minecraft:gold_block
setblock ^-16 ^10 ^-5 minecraft:blue_wool
setblock ^-17 ^10 ^-5 minecraft:blue_wool
setblock ^-15 ^10 ^-5 minecraft:blue_wool
setblock ^-16 ^11 ^-5 minecraft:blue_wool
setblock ^-16 ^9 ^-5 minecraft:blue_wool
setblock ^-16 ^10 ^-5 minecraft:gold_block
setblock ^-16 ^10 ^5 minecraft:blue_wool
setblock ^-17 ^10 ^5 minecraft:blue_wool
setblock ^-15 ^10 ^5 minecraft:blue_wool
setblock ^-16 ^11 ^5 minecraft:blue_wool
setblock ^-16 ^9 ^5 minecraft:blue_wool
setblock ^-16 ^10 ^5 minecraft:gold_block
setblock ^-10 ^11 ^-6 minecraft:red_wool
setblock ^-11 ^11 ^-6 minecraft:red_wool
setblock ^-9 ^11 ^-6 minecraft:red_wool
setblock ^-10 ^12 ^-6 minecraft:red_wool
setblock ^-10 ^10 ^-6 minecraft:red_wool
setblock ^-10 ^11 ^-6 minecraft:gold_block
setblock ^-10 ^11 ^6 minecraft:red_wool
setblock ^-11 ^11 ^6 minecraft:red_wool
setblock ^-9 ^11 ^6 minecraft:red_wool
setblock ^-10 ^12 ^6 minecraft:red_wool
setblock ^-10 ^10 ^6 minecraft:red_wool
setblock ^-10 ^11 ^6 minecraft:gold_block
setblock ^-4 ^12 ^-7 minecraft:blue_wool
setblock ^-5 ^12 ^-7 minecraft:blue_wool
setblock ^-3 ^12 ^-7 minecraft:blue_wool
setblock ^-4 ^13 ^-7 minecraft:blue_wool
setblock ^-4 ^11 ^-7 minecraft:blue_wool
setblock ^-4 ^12 ^-7 minecraft:gold_block
setblock ^-4 ^12 ^7 minecraft:blue_wool
setblock ^-5 ^12 ^7 minecraft:blue_wool
setblock ^-3 ^12 ^7 minecraft:blue_wool
setblock ^-4 ^13 ^7 minecraft:blue_wool
setblock ^-4 ^11 ^7 minecraft:blue_wool
setblock ^-4 ^12 ^7 minecraft:gold_block
setblock ^2 ^12 ^-8 minecraft:red_wool
setblock ^1 ^12 ^-8 minecraft:red_wool
setblock ^3 ^12 ^-8 minecraft:red_wool
setblock ^2 ^13 ^-8 minecraft:red_wool
setblock ^2 ^11 ^-8 minecraft:red_wool
setblock ^2 ^12 ^-8 minecraft:gold_block
setblock ^2 ^12 ^8 minecraft:red_wool
setblock ^1 ^12 ^8 minecraft:red_wool
setblock ^3 ^12 ^8 minecraft:red_wool
setblock ^2 ^13 ^8 minecraft:red_wool
setblock ^2 ^11 ^8 minecraft:red_wool
setblock ^2 ^12 ^8 minecraft:gold_block
setblock ^8 ^13 ^-7 minecraft:blue_wool
setblock ^7 ^13 ^-7 minecraft:blue_wool
setblock ^9 ^13 ^-7 minecraft:blue_wool
setblock ^8 ^14 ^-7 minecraft:blue_wool
setblock ^8 ^12 ^-7 minecraft:blue_wool
setblock ^8 ^13 ^-7 minecraft:gold_block
setblock ^8 ^13 ^7 minecraft:blue_wool
setblock ^7 ^13 ^7 minecraft:blue_wool
setblock ^9 ^13 ^7 minecraft:blue_wool
setblock ^8 ^14 ^7 minecraft:blue_wool
setblock ^8 ^12 ^7 minecraft:blue_wool
setblock ^8 ^13 ^7 minecraft:gold_block
setblock ^14 ^13 ^-6 minecraft:red_wool
setblock ^13 ^13 ^-6 minecraft:red_wool
setblock ^15 ^13 ^-6 minecraft:red_wool
setblock ^14 ^14 ^-6 minecraft:red_wool
setblock ^14 ^12 ^-6 minecraft:red_wool
setblock ^14 ^13 ^-6 minecraft:gold_block
setblock ^14 ^13 ^6 minecraft:red_wool
setblock ^13 ^13 ^6 minecraft:red_wool
setblock ^15 ^13 ^6 minecraft:red_wool
setblock ^14 ^14 ^6 minecraft:red_wool
setblock ^14 ^12 ^6 minecraft:red_wool
setblock ^14 ^13 ^6 minecraft:gold_block
setblock ^20 ^14 ^-5 minecraft:blue_wool
setblock ^19 ^14 ^-5 minecraft:blue_wool
setblock ^21 ^14 ^-5 minecraft:blue_wool
setblock ^20 ^15 ^-5 minecraft:blue_wool
setblock ^20 ^13 ^-5 minecraft:blue_wool
setblock ^20 ^14 ^-5 minecraft:gold_block
setblock ^20 ^14 ^5 minecraft:blue_wool
setblock ^19 ^14 ^5 minecraft:blue_wool
setblock ^21 ^14 ^5 minecraft:blue_wool
setblock ^20 ^15 ^5 minecraft:blue_wool
setblock ^20 ^13 ^5 minecraft:blue_wool
setblock ^20 ^14 ^5 minecraft:gold_block

# === SUSPENSION CHAINS / RIDE ARMS ===
setblock ^ ^28 ^-9 minecraft:iron_chain
setblock ^-1 ^27 ^-9 minecraft:iron_chain
setblock ^-2 ^26 ^-8 minecraft:iron_chain
setblock ^-3 ^25 ^-8 minecraft:iron_chain
setblock ^-4 ^24 ^-8 minecraft:iron_chain
setblock ^-5 ^23 ^-7 minecraft:iron_chain
setblock ^-6 ^22 ^-7 minecraft:iron_chain
setblock ^-7 ^21 ^-7 minecraft:iron_chain
setblock ^-8 ^20 ^-6 minecraft:iron_chain
setblock ^-9 ^19 ^-6 minecraft:iron_chain
setblock ^-10 ^18 ^-6 minecraft:iron_chain
setblock ^-11 ^17 ^-5 minecraft:iron_chain
setblock ^-12 ^16 ^-5 minecraft:iron_chain
fill ^-13 ^15 ^-5 ^-11 ^17 ^-5 minecraft:iron_block
setblock ^ ^28 ^-9 minecraft:iron_chain
setblock ^1 ^27 ^-9 minecraft:iron_chain
setblock ^2 ^26 ^-8 minecraft:iron_chain
setblock ^3 ^25 ^-8 minecraft:iron_chain
setblock ^4 ^24 ^-8 minecraft:iron_chain
setblock ^5 ^23 ^-7 minecraft:iron_chain
setblock ^6 ^22 ^-7 minecraft:iron_chain
setblock ^7 ^21 ^-7 minecraft:iron_chain
setblock ^8 ^20 ^-6 minecraft:iron_chain
setblock ^9 ^19 ^-6 minecraft:iron_chain
setblock ^10 ^18 ^-6 minecraft:iron_chain
setblock ^11 ^17 ^-5 minecraft:iron_chain
setblock ^12 ^16 ^-5 minecraft:iron_chain
fill ^11 ^15 ^-5 ^13 ^17 ^-5 minecraft:iron_block
setblock ^ ^28 ^9 minecraft:iron_chain
setblock ^-1 ^27 ^9 minecraft:iron_chain
setblock ^-2 ^26 ^8 minecraft:iron_chain
setblock ^-3 ^25 ^8 minecraft:iron_chain
setblock ^-4 ^24 ^8 minecraft:iron_chain
setblock ^-5 ^23 ^7 minecraft:iron_chain
setblock ^-6 ^22 ^7 minecraft:iron_chain
setblock ^-7 ^21 ^7 minecraft:iron_chain
setblock ^-8 ^20 ^6 minecraft:iron_chain
setblock ^-9 ^19 ^6 minecraft:iron_chain
setblock ^-10 ^18 ^6 minecraft:iron_chain
setblock ^-11 ^17 ^5 minecraft:iron_chain
setblock ^-12 ^16 ^5 minecraft:iron_chain
fill ^-13 ^15 ^5 ^-11 ^17 ^5 minecraft:iron_block
setblock ^ ^28 ^9 minecraft:iron_chain
setblock ^1 ^27 ^9 minecraft:iron_chain
setblock ^2 ^26 ^8 minecraft:iron_chain
setblock ^3 ^25 ^8 minecraft:iron_chain
setblock ^4 ^24 ^8 minecraft:iron_chain
setblock ^5 ^23 ^7 minecraft:iron_chain
setblock ^6 ^22 ^7 minecraft:iron_chain
setblock ^7 ^21 ^7 minecraft:iron_chain
setblock ^8 ^20 ^6 minecraft:iron_chain
setblock ^9 ^19 ^6 minecraft:iron_chain
setblock ^10 ^18 ^6 minecraft:iron_chain
setblock ^11 ^17 ^5 minecraft:iron_chain
setblock ^12 ^16 ^5 minecraft:iron_chain
fill ^11 ^15 ^5 ^13 ^17 ^5 minecraft:iron_block
fill ^-2 ^28 ^-11 ^2 ^29 ^11 minecraft:iron_block

# === DRAGON HEAD BOW ===
fill ^31 ^16 ^-1 ^31 ^17 ^1 minecraft:spruce_log
fill ^32 ^17 ^-1 ^32 ^18 ^1 minecraft:spruce_log
fill ^33 ^18 ^-1 ^33 ^19 ^1 minecraft:spruce_log
fill ^34 ^19 ^-1 ^34 ^20 ^1 minecraft:spruce_log
fill ^35 ^20 ^-2 ^36 ^21 ^2 minecraft:dark_oak_planks
fill ^37 ^20 ^-1 ^38 ^20 ^1 minecraft:spruce_planks
setblock ^36 ^21 ^-2 minecraft:sea_lantern
setblock ^36 ^21 ^2 minecraft:sea_lantern
setblock ^34 ^22 ^-2 minecraft:gold_block
setblock ^34 ^22 ^2 minecraft:gold_block
setblock ^35 ^23 ^-2 minecraft:gold_block
setblock ^35 ^23 ^2 minecraft:gold_block
setblock ^39 ^19 ^ minecraft:red_wool
setblock ^38 ^19 ^ minecraft:orange_wool

# === CURLED VIKING STERN ===
fill ^-31 ^10 ^-1 ^-31 ^11 ^1 minecraft:dark_oak_log
fill ^-32 ^11 ^-1 ^-32 ^12 ^1 minecraft:dark_oak_log
fill ^-33 ^12 ^-1 ^-33 ^13 ^1 minecraft:dark_oak_log
fill ^-34 ^13 ^-1 ^-34 ^14 ^1 minecraft:dark_oak_log
fill ^-35 ^14 ^-1 ^-35 ^15 ^1 minecraft:dark_oak_log
fill ^-35 ^15 ^-1 ^-35 ^16 ^1 minecraft:dark_oak_log
fill ^-34 ^16 ^-1 ^-34 ^17 ^1 minecraft:dark_oak_log
fill ^-33 ^17 ^-1 ^-33 ^18 ^1 minecraft:dark_oak_log
setblock ^-32 ^18 ^ minecraft:gold_block
setblock ^-33 ^18 ^-1 minecraft:gold_block
setblock ^-33 ^18 ^1 minecraft:gold_block

# === SUPPORT DECORATIONS & RUNIC COLOR PANELS ===
fill ^-2 ^22 ^-16 ^2 ^26 ^-16 minecraft:black_wool
fill ^-1 ^25 ^-16 ^1 ^25 ^-16 minecraft:red_wool
fill ^ ^22 ^-16 ^ ^25 ^-16 minecraft:red_wool
setblock ^ ^24 ^-16 minecraft:gold_block
fill ^-2 ^22 ^16 ^2 ^26 ^16 minecraft:black_wool
fill ^-1 ^25 ^16 ^1 ^25 ^16 minecraft:red_wool
fill ^ ^22 ^16 ^ ^25 ^16 minecraft:red_wool
setblock ^ ^24 ^16 minecraft:gold_block

# === ATMOSPHERIC LIGHTING ===
fill ^-24 ^9 ^-11 ^-24 ^11 ^-11 minecraft:dark_oak_fence
setblock ^-24 ^12 ^-11 minecraft:lantern
fill ^-18 ^9 ^-11 ^-18 ^11 ^-11 minecraft:dark_oak_fence
setblock ^-18 ^12 ^-11 minecraft:lantern
fill ^-12 ^9 ^-11 ^-12 ^11 ^-11 minecraft:dark_oak_fence
setblock ^-12 ^12 ^-11 minecraft:lantern
fill ^12 ^9 ^-11 ^12 ^11 ^-11 minecraft:dark_oak_fence
setblock ^12 ^12 ^-11 minecraft:lantern
fill ^18 ^9 ^-11 ^18 ^11 ^-11 minecraft:dark_oak_fence
setblock ^18 ^12 ^-11 minecraft:lantern
fill ^24 ^9 ^-11 ^24 ^11 ^-11 minecraft:dark_oak_fence
setblock ^24 ^12 ^-11 minecraft:lantern
fill ^-12 ^ ^11 ^-12 ^2 ^11 minecraft:dark_oak_fence
setblock ^-12 ^3 ^11 minecraft:lantern
fill ^ ^ ^11 ^ ^2 ^11 minecraft:dark_oak_fence
setblock ^ ^3 ^11 minecraft:lantern
fill ^12 ^ ^11 ^12 ^2 ^11 minecraft:dark_oak_fence
setblock ^12 ^3 ^11 minecraft:lantern
fill ^-8 ^-1 ^-20 ^-8 ^1 ^-20 minecraft:cobblestone_wall
setblock ^-8 ^2 ^-20 minecraft:campfire
fill ^8 ^-1 ^-20 ^8 ^1 ^-20 minecraft:cobblestone_wall
setblock ^8 ^2 ^-20 minecraft:campfire

# === VIKING CARGO DETAILS ===
setblock ^-25 ^12 ^4 minecraft:barrel
setblock ^-22 ^12 ^3 minecraft:barrel
setblock ^-19 ^12 ^4 minecraft:barrel
setblock ^-24 ^12 ^-3 minecraft:hay_block
setblock ^-21 ^12 ^-4 minecraft:hay_block

# === END OF BUILD ===
# Tip: run the function while standing on flat ground with plenty of open space.
# The local-left end is the raised dragon-head bow.
