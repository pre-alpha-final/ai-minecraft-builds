say [Skyfire] build_started
# SKYFIRE ROLLER COASTER - Minecraft Bedrock Edition
# Run with: /function theme_park_skyfire_roller_coaster
# Stand at the desired station center, face a CARDINAL direction, and look horizontally.
# Your feet are the origin. Caret coordinates are ^left ^up ^forward.
# Approximate footprint: ^left -41..41, ^up -1..43, ^forward -24..69.
# Best used on flat ground with cheats enabled. The function does not clear the whole ride area.
# Track curves are placed without fixed rail_direction states so Bedrock rotates/connects them from neighbors.

# === ENTRANCE PLAZA AND SKYFIRE MARQUEE ===
fill ^-11 ^-1 ^-24 ^11 ^-1 ^-10 minecraft:smooth_stone
fill ^-10 ^-1 ^-23 ^10 ^-1 ^-22 minecraft:yellow_concrete
fill ^-10 ^-1 ^-19 ^10 ^-1 ^-18 minecraft:orange_concrete
fill ^-10 ^-1 ^-15 ^10 ^-1 ^-14 minecraft:red_concrete
fill ^-7 ^ ^-22 ^-6 ^8 ^-22 minecraft:polished_deepslate
fill ^6 ^ ^-22 ^7 ^8 ^-22 minecraft:polished_deepslate
fill ^-7 ^8 ^-22 ^7 ^9 ^-22 minecraft:polished_deepslate
fill ^-5 ^6 ^-22 ^5 ^7 ^-22 minecraft:red_concrete
fill ^-4 ^7 ^-22 ^4 ^7 ^-22 minecraft:orange_concrete
setblock ^-5 ^8 ^-22 minecraft:sea_lantern
setblock ^5 ^8 ^-22 minecraft:sea_lantern
setblock ^-7 ^5 ^-22 minecraft:sea_lantern
setblock ^7 ^5 ^-22 minecraft:sea_lantern
setblock ^-2 ^10 ^-22 minecraft:red_concrete
setblock ^-1 ^10 ^-22 minecraft:orange_concrete
setblock ^ ^10 ^-22 minecraft:yellow_concrete
setblock ^1 ^10 ^-22 minecraft:orange_concrete
setblock ^2 ^10 ^-22 minecraft:red_concrete
setblock ^-1 ^11 ^-22 minecraft:red_concrete
setblock ^ ^11 ^-22 minecraft:orange_concrete
setblock ^1 ^11 ^-22 minecraft:red_concrete
setblock ^ ^12 ^-22 minecraft:red_concrete
fill ^-10 ^ ^-17 ^-10 ^3 ^-17 minecraft:polished_blackstone_brick_wall
setblock ^-10 ^4 ^-17 minecraft:sea_lantern
fill ^10 ^ ^-17 ^10 ^3 ^-17 minecraft:polished_blackstone_brick_wall
setblock ^10 ^4 ^-17 minecraft:sea_lantern

# === COVERED STATION ===
fill ^-9 ^ ^-10 ^9 ^13 ^19 minecraft:air
fill ^-9 ^-1 ^-10 ^9 ^-1 ^19 minecraft:stone_bricks
fill ^-8 ^-1 ^-9 ^8 ^-1 ^18 minecraft:deepslate_tiles
fill ^-7 ^ ^-8 ^-7 ^10 ^18 minecraft:quartz_block
fill ^7 ^ ^-8 ^7 ^10 ^18 minecraft:quartz_block
fill ^-7 ^ ^-8 ^-7 ^10 ^-8 minecraft:quartz_block
fill ^7 ^ ^-8 ^7 ^10 ^-8 minecraft:quartz_block
setblock ^-7 ^7 ^-8 minecraft:sea_lantern
setblock ^7 ^7 ^-8 minecraft:sea_lantern
fill ^-7 ^ ^-2 ^-7 ^10 ^-2 minecraft:quartz_block
fill ^7 ^ ^-2 ^7 ^10 ^-2 minecraft:quartz_block
setblock ^-7 ^7 ^-2 minecraft:sea_lantern
setblock ^7 ^7 ^-2 minecraft:sea_lantern
fill ^-7 ^ ^4 ^-7 ^10 ^4 minecraft:quartz_block
fill ^7 ^ ^4 ^7 ^10 ^4 minecraft:quartz_block
setblock ^-7 ^7 ^4 minecraft:sea_lantern
setblock ^7 ^7 ^4 minecraft:sea_lantern
fill ^-7 ^ ^10 ^-7 ^10 ^10 minecraft:quartz_block
fill ^7 ^ ^10 ^7 ^10 ^10 minecraft:quartz_block
setblock ^-7 ^7 ^10 minecraft:sea_lantern
setblock ^7 ^7 ^10 minecraft:sea_lantern
fill ^-7 ^ ^16 ^-7 ^10 ^16 minecraft:quartz_block
fill ^7 ^ ^16 ^7 ^10 ^16 minecraft:quartz_block
setblock ^-7 ^7 ^16 minecraft:sea_lantern
setblock ^7 ^7 ^16 minecraft:sea_lantern
fill ^-7 ^ ^18 ^-7 ^10 ^18 minecraft:quartz_block
fill ^7 ^ ^18 ^7 ^10 ^18 minecraft:quartz_block
setblock ^-7 ^7 ^18 minecraft:sea_lantern
setblock ^7 ^7 ^18 minecraft:sea_lantern
fill ^-8 ^11 ^-9 ^8 ^12 ^19 minecraft:dark_prismarine
fill ^-6 ^11 ^-7 ^6 ^11 ^17 minecraft:light_blue_stained_glass
fill ^-8 ^12 ^-7 ^8 ^12 ^-7 minecraft:quartz_block
fill ^-8 ^12 ^-1 ^8 ^12 ^-1 minecraft:quartz_block
fill ^-8 ^12 ^5 ^8 ^12 ^5 minecraft:quartz_block
fill ^-8 ^12 ^11 ^8 ^12 ^11 minecraft:quartz_block
fill ^-8 ^12 ^17 ^8 ^12 ^17 minecraft:quartz_block
fill ^-6 ^3 ^-7 ^-2 ^3 ^16 minecraft:quartz_block
fill ^2 ^3 ^-7 ^6 ^3 ^16 minecraft:quartz_block
fill ^-6 ^4 ^-7 ^-6 ^5 ^16 minecraft:iron_bars
fill ^6 ^4 ^-7 ^6 ^5 ^16 minecraft:iron_bars
fill ^-2 ^4 ^-7 ^-2 ^4 ^16 minecraft:iron_bars
fill ^2 ^4 ^-7 ^2 ^4 ^16 minecraft:iron_bars
fill ^-2 ^4 ^-4 ^-2 ^4 ^-3 minecraft:air
fill ^2 ^4 ^-4 ^2 ^4 ^-3 minecraft:air
fill ^-2 ^4 ^2 ^-2 ^4 ^3 minecraft:air
fill ^2 ^4 ^2 ^2 ^4 ^3 minecraft:air
fill ^-2 ^4 ^8 ^-2 ^4 ^9 minecraft:air
fill ^2 ^4 ^8 ^2 ^4 ^9 minecraft:air
fill ^-2 ^4 ^14 ^-2 ^4 ^15 minecraft:air
fill ^2 ^4 ^14 ^2 ^4 ^15 minecraft:air
fill ^-8 ^ ^-9 ^-8 ^2 ^-9 minecraft:stone_bricks
fill ^-7 ^ ^-8 ^-7 ^2 ^-8 minecraft:stone_bricks
fill ^-6 ^ ^-7 ^-6 ^2 ^-7 minecraft:stone_bricks
fill ^8 ^ ^-9 ^8 ^2 ^-9 minecraft:stone_bricks
fill ^7 ^ ^-8 ^7 ^2 ^-8 minecraft:stone_bricks
fill ^6 ^ ^-7 ^6 ^2 ^-7 minecraft:stone_bricks
fill ^-8 ^3 ^-9 ^-2 ^3 ^-8 minecraft:quartz_block
fill ^2 ^3 ^-9 ^8 ^3 ^-8 minecraft:quartz_block
fill ^-8 ^4 ^18 ^8 ^7 ^18 minecraft:red_stained_glass
fill ^-8 ^8 ^18 ^8 ^9 ^18 minecraft:orange_concrete
setblock ^-6 ^7 ^18 minecraft:sea_lantern
setblock ^6 ^7 ^18 minecraft:sea_lantern
fill ^-1 ^4 ^18 ^1 ^10 ^18 minecraft:air

# === QUEUE, TICKET BOOTH, AND OPERATOR CABIN ===
fill ^-17 ^-1 ^-10 ^-10 ^-1 ^18 minecraft:smooth_stone
fill ^-17 ^ ^-10 ^-17 ^1 ^18 minecraft:iron_bars
fill ^-10 ^ ^-10 ^-10 ^1 ^18 minecraft:iron_bars
fill ^-16 ^ ^-9 ^-11 ^ ^-9 minecraft:iron_bars
fill ^-16 ^ ^-3 ^-11 ^ ^-3 minecraft:iron_bars
fill ^-16 ^ ^3 ^-11 ^ ^3 minecraft:iron_bars
fill ^-16 ^ ^9 ^-11 ^ ^9 minecraft:iron_bars
fill ^-16 ^ ^15 ^-11 ^ ^15 minecraft:iron_bars
fill ^-14 ^ ^-9 ^-13 ^ ^-9 minecraft:air
fill ^-14 ^ ^-3 ^-13 ^ ^-3 minecraft:air
fill ^-14 ^ ^3 ^-13 ^ ^3 minecraft:air
fill ^-14 ^ ^9 ^-13 ^ ^9 minecraft:air
fill ^-14 ^ ^15 ^-13 ^ ^15 minecraft:air
fill ^18 ^-1 ^-8 ^24 ^-1 ^2 minecraft:stone_bricks
fill ^18 ^ ^-8 ^24 ^5 ^2 minecraft:yellow_concrete hollow
fill ^19 ^1 ^-7 ^23 ^4 ^1 minecraft:air
fill ^18 ^2 ^-6 ^18 ^3 ^ minecraft:glass
fill ^24 ^2 ^-6 ^24 ^3 ^ minecraft:glass
fill ^19 ^2 ^-8 ^23 ^3 ^-8 minecraft:glass
fill ^17 ^6 ^-9 ^25 ^6 ^3 minecraft:red_concrete
setblock ^18 ^5 ^-8 minecraft:sea_lantern
setblock ^24 ^5 ^-8 minecraft:sea_lantern
fill ^3 ^4 ^9 ^6 ^8 ^15 minecraft:polished_deepslate hollow
fill ^4 ^5 ^10 ^5 ^7 ^14 minecraft:air
fill ^3 ^5 ^10 ^3 ^7 ^14 minecraft:glass
fill ^6 ^5 ^10 ^6 ^7 ^14 minecraft:glass
fill ^4 ^5 ^15 ^5 ^7 ^15 minecraft:glass
fill ^3 ^9 ^9 ^6 ^9 ^15 minecraft:orange_concrete
setblock ^4 ^8 ^10 minecraft:sea_lantern
setblock ^5 ^4 ^13 minecraft:chest
# Open-air fly-through slot for the elevated crossover above the station.
fill ^-9 ^10 ^9 ^9 ^14 ^9 minecraft:air

# === BRAKE-TUNNEL RINGS AND SPLASH LAGOON ===
fill ^28 ^ ^45 ^28 ^13 ^45 minecraft:purple_concrete
fill ^34 ^ ^45 ^34 ^13 ^45 minecraft:purple_concrete
fill ^28 ^13 ^45 ^34 ^13 ^45 minecraft:magenta_concrete
setblock ^29 ^12 ^45 minecraft:sea_lantern
setblock ^33 ^12 ^45 minecraft:sea_lantern
fill ^28 ^ ^49 ^28 ^13 ^49 minecraft:purple_concrete
fill ^34 ^ ^49 ^34 ^13 ^49 minecraft:purple_concrete
fill ^28 ^13 ^49 ^34 ^13 ^49 minecraft:magenta_concrete
setblock ^29 ^12 ^49 minecraft:sea_lantern
setblock ^33 ^12 ^49 minecraft:sea_lantern
fill ^28 ^ ^53 ^28 ^13 ^53 minecraft:purple_concrete
fill ^34 ^ ^53 ^34 ^13 ^53 minecraft:purple_concrete
fill ^28 ^13 ^53 ^34 ^13 ^53 minecraft:magenta_concrete
setblock ^29 ^12 ^53 minecraft:sea_lantern
setblock ^33 ^12 ^53 minecraft:sea_lantern
fill ^27 ^-1 ^42 ^35 ^-1 ^56 minecraft:deepslate_tiles
fill ^29 ^ ^43 ^33 ^ ^55 minecraft:black_concrete
fill ^-40 ^-1 ^43 ^-34 ^-1 ^60 minecraft:dark_prismarine
fill ^-28 ^-1 ^43 ^-22 ^-1 ^60 minecraft:dark_prismarine
fill ^-39 ^ ^44 ^-34 ^ ^59 minecraft:water
fill ^-28 ^ ^44 ^-23 ^ ^59 minecraft:water
setblock ^-36 ^1 ^44 minecraft:sea_lantern
setblock ^-26 ^1 ^44 minecraft:sea_lantern
setblock ^-36 ^1 ^51 minecraft:sea_lantern
setblock ^-26 ^1 ^51 minecraft:sea_lantern
setblock ^-36 ^1 ^59 minecraft:sea_lantern
setblock ^-26 ^1 ^59 minecraft:sea_lantern
fill ^-34 ^ ^43 ^-34 ^2 ^60 minecraft:prismarine_bricks
fill ^-28 ^ ^43 ^-28 ^2 ^60 minecraft:prismarine_bricks

# === COASTER SUPPORT TOWERS ===
fill ^-2 ^ ^20 ^-2 ^7 ^20 minecraft:blue_concrete
fill ^2 ^ ^20 ^2 ^7 ^20 minecraft:blue_concrete
fill ^-2 ^8 ^20 ^2 ^8 ^20 minecraft:yellow_concrete
fill ^-2 ^ ^26 ^-2 ^13 ^26 minecraft:blue_concrete
fill ^2 ^ ^26 ^2 ^13 ^26 minecraft:blue_concrete
fill ^-2 ^14 ^26 ^2 ^14 ^26 minecraft:yellow_concrete
setblock ^-1 ^7 ^26 minecraft:light_blue_concrete
setblock ^1 ^7 ^26 minecraft:light_blue_concrete
fill ^-2 ^ ^32 ^-2 ^19 ^32 minecraft:blue_concrete
fill ^2 ^ ^32 ^2 ^19 ^32 minecraft:blue_concrete
fill ^-2 ^20 ^32 ^2 ^20 ^32 minecraft:yellow_concrete
setblock ^-1 ^10 ^32 minecraft:light_blue_concrete
setblock ^1 ^10 ^32 minecraft:light_blue_concrete
fill ^-2 ^ ^38 ^-2 ^25 ^38 minecraft:blue_concrete
fill ^2 ^ ^38 ^2 ^25 ^38 minecraft:blue_concrete
fill ^-2 ^26 ^38 ^2 ^26 ^38 minecraft:yellow_concrete
setblock ^-1 ^13 ^38 minecraft:light_blue_concrete
setblock ^1 ^13 ^38 minecraft:light_blue_concrete
fill ^-2 ^ ^44 ^-2 ^31 ^44 minecraft:blue_concrete
fill ^2 ^ ^44 ^2 ^31 ^44 minecraft:blue_concrete
fill ^-2 ^32 ^44 ^2 ^32 ^44 minecraft:yellow_concrete
setblock ^-1 ^16 ^44 minecraft:light_blue_concrete
setblock ^1 ^16 ^44 minecraft:light_blue_concrete
fill ^-2 ^ ^50 ^-2 ^37 ^50 minecraft:blue_concrete
fill ^2 ^ ^50 ^2 ^37 ^50 minecraft:blue_concrete
fill ^-2 ^38 ^50 ^2 ^38 ^50 minecraft:yellow_concrete
setblock ^-1 ^19 ^50 minecraft:light_blue_concrete
setblock ^1 ^19 ^50 minecraft:light_blue_concrete
fill ^5 ^ ^55 ^5 ^32 ^55 minecraft:blue_concrete
fill ^5 ^ ^59 ^5 ^32 ^59 minecraft:blue_concrete
fill ^5 ^33 ^55 ^5 ^33 ^59 minecraft:yellow_concrete
setblock ^5 ^17 ^56 minecraft:light_blue_concrete
setblock ^5 ^17 ^58 minecraft:light_blue_concrete
fill ^10 ^ ^55 ^10 ^27 ^55 minecraft:blue_concrete
fill ^10 ^ ^59 ^10 ^27 ^59 minecraft:blue_concrete
fill ^10 ^28 ^55 ^10 ^28 ^59 minecraft:yellow_concrete
setblock ^10 ^14 ^56 minecraft:light_blue_concrete
setblock ^10 ^14 ^58 minecraft:light_blue_concrete
fill ^15 ^ ^55 ^15 ^22 ^55 minecraft:blue_concrete
fill ^15 ^ ^59 ^15 ^22 ^59 minecraft:blue_concrete
fill ^15 ^23 ^55 ^15 ^23 ^59 minecraft:yellow_concrete
setblock ^15 ^12 ^56 minecraft:light_blue_concrete
setblock ^15 ^12 ^58 minecraft:light_blue_concrete
fill ^20 ^ ^55 ^20 ^17 ^55 minecraft:blue_concrete
fill ^20 ^ ^59 ^20 ^17 ^59 minecraft:blue_concrete
fill ^20 ^18 ^55 ^20 ^18 ^59 minecraft:yellow_concrete
setblock ^20 ^9 ^56 minecraft:light_blue_concrete
setblock ^20 ^9 ^58 minecraft:light_blue_concrete
fill ^25 ^ ^55 ^25 ^12 ^55 minecraft:blue_concrete
fill ^25 ^ ^59 ^25 ^12 ^59 minecraft:blue_concrete
fill ^25 ^13 ^55 ^25 ^13 ^59 minecraft:yellow_concrete
setblock ^25 ^7 ^56 minecraft:light_blue_concrete
setblock ^25 ^7 ^58 minecraft:light_blue_concrete
fill ^30 ^ ^55 ^30 ^7 ^55 minecraft:blue_concrete
fill ^30 ^ ^59 ^30 ^7 ^59 minecraft:blue_concrete
fill ^30 ^8 ^55 ^30 ^8 ^59 minecraft:yellow_concrete
fill ^29 ^ ^54 ^29 ^7 ^54 minecraft:blue_concrete
fill ^33 ^ ^54 ^33 ^7 ^54 minecraft:blue_concrete
fill ^29 ^8 ^54 ^33 ^8 ^54 minecraft:yellow_concrete
fill ^29 ^ ^48 ^29 ^7 ^48 minecraft:blue_concrete
fill ^33 ^ ^48 ^33 ^7 ^48 minecraft:blue_concrete
fill ^29 ^8 ^48 ^33 ^8 ^48 minecraft:yellow_concrete
fill ^29 ^ ^42 ^29 ^7 ^42 minecraft:blue_concrete
fill ^33 ^ ^42 ^33 ^7 ^42 minecraft:blue_concrete
fill ^29 ^8 ^42 ^33 ^8 ^42 minecraft:yellow_concrete
fill ^29 ^ ^38 ^29 ^11 ^38 minecraft:blue_concrete
fill ^33 ^ ^38 ^33 ^11 ^38 minecraft:blue_concrete
fill ^29 ^12 ^38 ^33 ^12 ^38 minecraft:yellow_concrete
setblock ^30 ^6 ^38 minecraft:light_blue_concrete
setblock ^32 ^6 ^38 minecraft:light_blue_concrete
fill ^29 ^ ^34 ^29 ^15 ^34 minecraft:blue_concrete
fill ^33 ^ ^34 ^33 ^15 ^34 minecraft:blue_concrete
fill ^29 ^16 ^34 ^33 ^16 ^34 minecraft:yellow_concrete
setblock ^30 ^8 ^34 minecraft:light_blue_concrete
setblock ^32 ^8 ^34 minecraft:light_blue_concrete
fill ^29 ^ ^30 ^29 ^19 ^30 minecraft:blue_concrete
fill ^33 ^ ^30 ^33 ^19 ^30 minecraft:blue_concrete
fill ^29 ^20 ^30 ^33 ^20 ^30 minecraft:yellow_concrete
setblock ^30 ^10 ^30 minecraft:light_blue_concrete
setblock ^32 ^10 ^30 minecraft:light_blue_concrete
fill ^29 ^ ^26 ^29 ^16 ^26 minecraft:blue_concrete
fill ^33 ^ ^26 ^33 ^16 ^26 minecraft:blue_concrete
fill ^29 ^17 ^26 ^33 ^17 ^26 minecraft:yellow_concrete
setblock ^30 ^9 ^26 minecraft:light_blue_concrete
setblock ^32 ^9 ^26 minecraft:light_blue_concrete
fill ^29 ^ ^22 ^29 ^12 ^22 minecraft:blue_concrete
fill ^33 ^ ^22 ^33 ^12 ^22 minecraft:blue_concrete
fill ^29 ^13 ^22 ^33 ^13 ^22 minecraft:yellow_concrete
setblock ^30 ^7 ^22 minecraft:light_blue_concrete
setblock ^32 ^7 ^22 minecraft:light_blue_concrete
fill ^29 ^ ^18 ^29 ^8 ^18 minecraft:blue_concrete
fill ^33 ^ ^18 ^33 ^8 ^18 minecraft:blue_concrete
fill ^29 ^9 ^18 ^33 ^9 ^18 minecraft:yellow_concrete
setblock ^30 ^5 ^18 minecraft:light_blue_concrete
setblock ^32 ^5 ^18 minecraft:light_blue_concrete
fill ^25 ^ ^7 ^25 ^7 ^7 minecraft:blue_concrete
fill ^25 ^ ^11 ^25 ^7 ^11 minecraft:blue_concrete
fill ^25 ^8 ^7 ^25 ^8 ^11 minecraft:yellow_concrete
fill ^17 ^ ^7 ^17 ^7 ^7 minecraft:blue_concrete
fill ^17 ^ ^11 ^17 ^7 ^11 minecraft:blue_concrete
fill ^17 ^8 ^7 ^17 ^8 ^11 minecraft:yellow_concrete
fill ^9 ^ ^7 ^9 ^7 ^7 minecraft:blue_concrete
fill ^9 ^ ^11 ^9 ^7 ^11 minecraft:blue_concrete
fill ^9 ^8 ^7 ^9 ^8 ^11 minecraft:yellow_concrete
fill ^1 ^ ^7 ^1 ^7 ^7 minecraft:blue_concrete
fill ^1 ^ ^11 ^1 ^7 ^11 minecraft:blue_concrete
fill ^1 ^8 ^7 ^1 ^8 ^11 minecraft:yellow_concrete
fill ^-7 ^ ^7 ^-7 ^7 ^7 minecraft:blue_concrete
fill ^-7 ^ ^11 ^-7 ^7 ^11 minecraft:blue_concrete
fill ^-7 ^8 ^7 ^-7 ^8 ^11 minecraft:yellow_concrete
fill ^-15 ^ ^7 ^-15 ^7 ^7 minecraft:blue_concrete
fill ^-15 ^ ^11 ^-15 ^7 ^11 minecraft:blue_concrete
fill ^-15 ^8 ^7 ^-15 ^8 ^11 minecraft:yellow_concrete
fill ^-23 ^ ^7 ^-23 ^7 ^7 minecraft:blue_concrete
fill ^-23 ^ ^11 ^-23 ^7 ^11 minecraft:blue_concrete
fill ^-23 ^8 ^7 ^-23 ^8 ^11 minecraft:yellow_concrete
fill ^-33 ^ ^14 ^-33 ^7 ^14 minecraft:blue_concrete
fill ^-29 ^ ^14 ^-29 ^7 ^14 minecraft:blue_concrete
fill ^-33 ^8 ^14 ^-29 ^8 ^14 minecraft:yellow_concrete
fill ^-33 ^ ^20 ^-33 ^11 ^20 minecraft:blue_concrete
fill ^-29 ^ ^20 ^-29 ^11 ^20 minecraft:blue_concrete
fill ^-33 ^12 ^20 ^-29 ^12 ^20 minecraft:yellow_concrete
setblock ^-32 ^6 ^20 minecraft:light_blue_concrete
setblock ^-30 ^6 ^20 minecraft:light_blue_concrete
fill ^-33 ^ ^25 ^-33 ^16 ^25 minecraft:blue_concrete
fill ^-29 ^ ^25 ^-29 ^16 ^25 minecraft:blue_concrete
fill ^-33 ^17 ^25 ^-29 ^17 ^25 minecraft:yellow_concrete
setblock ^-32 ^9 ^25 minecraft:light_blue_concrete
setblock ^-30 ^9 ^25 minecraft:light_blue_concrete
fill ^-33 ^ ^29 ^-33 ^19 ^29 minecraft:blue_concrete
fill ^-29 ^ ^29 ^-29 ^19 ^29 minecraft:blue_concrete
fill ^-33 ^20 ^29 ^-29 ^20 ^29 minecraft:yellow_concrete
setblock ^-32 ^10 ^29 minecraft:light_blue_concrete
setblock ^-30 ^10 ^29 minecraft:light_blue_concrete
fill ^-33 ^ ^34 ^-33 ^14 ^34 minecraft:blue_concrete
fill ^-29 ^ ^34 ^-29 ^14 ^34 minecraft:blue_concrete
fill ^-33 ^15 ^34 ^-29 ^15 ^34 minecraft:yellow_concrete
setblock ^-32 ^8 ^34 minecraft:light_blue_concrete
setblock ^-30 ^8 ^34 minecraft:light_blue_concrete
fill ^-33 ^ ^39 ^-33 ^9 ^39 minecraft:blue_concrete
fill ^-29 ^ ^39 ^-29 ^9 ^39 minecraft:blue_concrete
fill ^-33 ^10 ^39 ^-29 ^10 ^39 minecraft:yellow_concrete
setblock ^-32 ^5 ^39 minecraft:light_blue_concrete
setblock ^-30 ^5 ^39 minecraft:light_blue_concrete
fill ^-33 ^ ^46 ^-33 ^7 ^46 minecraft:blue_concrete
fill ^-29 ^ ^46 ^-29 ^7 ^46 minecraft:blue_concrete
fill ^-33 ^8 ^46 ^-29 ^8 ^46 minecraft:yellow_concrete
fill ^-33 ^ ^54 ^-33 ^7 ^54 minecraft:blue_concrete
fill ^-29 ^ ^54 ^-29 ^7 ^54 minecraft:blue_concrete
fill ^-33 ^8 ^54 ^-29 ^8 ^54 minecraft:yellow_concrete
fill ^-33 ^ ^60 ^-33 ^7 ^60 minecraft:blue_concrete
fill ^-29 ^ ^60 ^-29 ^7 ^60 minecraft:blue_concrete
fill ^-33 ^8 ^60 ^-29 ^8 ^60 minecraft:yellow_concrete
fill ^-27 ^ ^59 ^-27 ^7 ^59 minecraft:blue_concrete
fill ^-27 ^ ^63 ^-27 ^7 ^63 minecraft:blue_concrete
fill ^-27 ^8 ^59 ^-27 ^8 ^63 minecraft:yellow_concrete
fill ^-22 ^ ^59 ^-22 ^9 ^59 minecraft:blue_concrete
fill ^-22 ^ ^63 ^-22 ^9 ^63 minecraft:blue_concrete
fill ^-22 ^10 ^59 ^-22 ^10 ^63 minecraft:yellow_concrete
setblock ^-22 ^5 ^60 minecraft:light_blue_concrete
setblock ^-22 ^5 ^62 minecraft:light_blue_concrete
fill ^-18 ^ ^59 ^-18 ^13 ^59 minecraft:blue_concrete
fill ^-18 ^ ^63 ^-18 ^13 ^63 minecraft:blue_concrete
fill ^-18 ^14 ^59 ^-18 ^14 ^63 minecraft:yellow_concrete
setblock ^-18 ^7 ^60 minecraft:light_blue_concrete
setblock ^-18 ^7 ^62 minecraft:light_blue_concrete
fill ^-14 ^ ^59 ^-14 ^17 ^59 minecraft:blue_concrete
fill ^-14 ^ ^63 ^-14 ^17 ^63 minecraft:blue_concrete
fill ^-14 ^18 ^59 ^-14 ^18 ^63 minecraft:yellow_concrete
setblock ^-14 ^9 ^60 minecraft:light_blue_concrete
setblock ^-14 ^9 ^62 minecraft:light_blue_concrete
fill ^-10 ^ ^59 ^-10 ^14 ^59 minecraft:blue_concrete
fill ^-10 ^ ^63 ^-10 ^14 ^63 minecraft:blue_concrete
fill ^-10 ^15 ^59 ^-10 ^15 ^63 minecraft:yellow_concrete
setblock ^-10 ^8 ^60 minecraft:light_blue_concrete
setblock ^-10 ^8 ^62 minecraft:light_blue_concrete
fill ^-6 ^ ^59 ^-6 ^10 ^59 minecraft:blue_concrete
fill ^-6 ^ ^63 ^-6 ^10 ^63 minecraft:blue_concrete
fill ^-6 ^11 ^59 ^-6 ^11 ^63 minecraft:yellow_concrete
setblock ^-6 ^6 ^60 minecraft:light_blue_concrete
setblock ^-6 ^6 ^62 minecraft:light_blue_concrete
fill ^ ^ ^59 ^ ^7 ^59 minecraft:blue_concrete
fill ^ ^ ^63 ^ ^7 ^63 minecraft:blue_concrete
fill ^ ^8 ^59 ^ ^8 ^63 minecraft:yellow_concrete
fill ^6 ^ ^59 ^6 ^7 ^59 minecraft:blue_concrete
fill ^6 ^ ^63 ^6 ^7 ^63 minecraft:blue_concrete
fill ^6 ^8 ^59 ^6 ^8 ^63 minecraft:yellow_concrete
fill ^9 ^ ^56 ^9 ^7 ^56 minecraft:blue_concrete
fill ^13 ^ ^56 ^13 ^7 ^56 minecraft:blue_concrete
fill ^9 ^8 ^56 ^13 ^8 ^56 minecraft:yellow_concrete
fill ^9 ^ ^48 ^9 ^7 ^48 minecraft:blue_concrete
fill ^13 ^ ^48 ^13 ^7 ^48 minecraft:blue_concrete
fill ^9 ^8 ^48 ^13 ^8 ^48 minecraft:yellow_concrete
fill ^9 ^ ^42 ^9 ^10 ^42 minecraft:blue_concrete
fill ^13 ^ ^42 ^13 ^10 ^42 minecraft:blue_concrete
fill ^9 ^11 ^42 ^13 ^11 ^42 minecraft:yellow_concrete
setblock ^10 ^6 ^42 minecraft:light_blue_concrete
setblock ^12 ^6 ^42 minecraft:light_blue_concrete
fill ^9 ^ ^38 ^9 ^14 ^38 minecraft:blue_concrete
fill ^13 ^ ^38 ^13 ^14 ^38 minecraft:blue_concrete
fill ^9 ^15 ^38 ^13 ^15 ^38 minecraft:yellow_concrete
setblock ^10 ^8 ^38 minecraft:light_blue_concrete
setblock ^12 ^8 ^38 minecraft:light_blue_concrete
fill ^9 ^ ^35 ^9 ^16 ^35 minecraft:blue_concrete
fill ^13 ^ ^35 ^13 ^16 ^35 minecraft:blue_concrete
fill ^9 ^17 ^35 ^13 ^17 ^35 minecraft:yellow_concrete
setblock ^10 ^9 ^35 minecraft:light_blue_concrete
setblock ^12 ^9 ^35 minecraft:light_blue_concrete
fill ^9 ^ ^31 ^9 ^12 ^31 minecraft:blue_concrete
fill ^13 ^ ^31 ^13 ^12 ^31 minecraft:blue_concrete
fill ^9 ^13 ^31 ^13 ^13 ^31 minecraft:yellow_concrete
setblock ^10 ^7 ^31 minecraft:light_blue_concrete
setblock ^12 ^7 ^31 minecraft:light_blue_concrete
fill ^9 ^ ^27 ^9 ^8 ^27 minecraft:blue_concrete
fill ^13 ^ ^27 ^13 ^8 ^27 minecraft:blue_concrete
fill ^9 ^9 ^27 ^13 ^9 ^27 minecraft:yellow_concrete
setblock ^10 ^5 ^27 minecraft:light_blue_concrete
setblock ^12 ^5 ^27 minecraft:light_blue_concrete
fill ^9 ^ ^20 ^9 ^7 ^20 minecraft:blue_concrete
fill ^13 ^ ^20 ^13 ^7 ^20 minecraft:blue_concrete
fill ^9 ^8 ^20 ^13 ^8 ^20 minecraft:yellow_concrete
fill ^9 ^ ^13 ^9 ^8 ^13 minecraft:blue_concrete
fill ^13 ^ ^13 ^13 ^8 ^13 minecraft:blue_concrete
fill ^9 ^9 ^13 ^13 ^9 ^13 minecraft:yellow_concrete
setblock ^10 ^5 ^13 minecraft:light_blue_concrete
setblock ^12 ^5 ^13 minecraft:light_blue_concrete
fill ^9 ^ ^10 ^9 ^11 ^10 minecraft:blue_concrete
fill ^13 ^ ^10 ^13 ^11 ^10 minecraft:blue_concrete
fill ^9 ^12 ^10 ^13 ^12 ^10 minecraft:yellow_concrete
setblock ^10 ^6 ^10 minecraft:light_blue_concrete
setblock ^12 ^6 ^10 minecraft:light_blue_concrete
fill ^9 ^ ^7 ^9 ^14 ^7 minecraft:blue_concrete
fill ^13 ^ ^7 ^13 ^14 ^7 minecraft:blue_concrete
fill ^9 ^15 ^7 ^13 ^15 ^7 minecraft:yellow_concrete
setblock ^10 ^8 ^7 minecraft:light_blue_concrete
setblock ^12 ^8 ^7 minecraft:light_blue_concrete
fill ^9 ^ ^4 ^9 ^11 ^4 minecraft:blue_concrete
fill ^13 ^ ^4 ^13 ^11 ^4 minecraft:blue_concrete
fill ^9 ^12 ^4 ^13 ^12 ^4 minecraft:yellow_concrete
setblock ^10 ^6 ^4 minecraft:light_blue_concrete
setblock ^12 ^6 ^4 minecraft:light_blue_concrete
fill ^9 ^ ^1 ^9 ^8 ^1 minecraft:blue_concrete
fill ^13 ^ ^1 ^13 ^8 ^1 minecraft:blue_concrete
fill ^9 ^9 ^1 ^13 ^9 ^1 minecraft:yellow_concrete
setblock ^10 ^5 ^1 minecraft:light_blue_concrete
setblock ^12 ^5 ^1 minecraft:light_blue_concrete
fill ^9 ^ ^-2 ^9 ^5 ^-2 minecraft:blue_concrete
fill ^13 ^ ^-2 ^13 ^5 ^-2 minecraft:blue_concrete
fill ^9 ^6 ^-2 ^13 ^6 ^-2 minecraft:yellow_concrete
fill ^9 ^ ^-6 ^9 ^2 ^-6 minecraft:blue_concrete
fill ^13 ^ ^-6 ^13 ^2 ^-6 minecraft:blue_concrete
fill ^9 ^3 ^-6 ^13 ^3 ^-6 minecraft:yellow_concrete

# === LIFT CATWALK, SAFETY RAIL, AND BEACON LIGHTS ===
setblock ^2 ^3 ^15 minecraft:smooth_stone
setblock ^3 ^4 ^15 minecraft:iron_bars
setblock ^2 ^4 ^15 minecraft:sea_lantern
setblock ^2 ^4 ^16 minecraft:smooth_stone
setblock ^3 ^5 ^16 minecraft:iron_bars
setblock ^2 ^5 ^17 minecraft:smooth_stone
setblock ^3 ^6 ^17 minecraft:iron_bars
setblock ^2 ^6 ^18 minecraft:smooth_stone
setblock ^3 ^7 ^18 minecraft:iron_bars
setblock ^2 ^7 ^19 minecraft:smooth_stone
setblock ^3 ^8 ^19 minecraft:iron_bars
setblock ^2 ^8 ^20 minecraft:smooth_stone
setblock ^3 ^9 ^20 minecraft:iron_bars
setblock ^2 ^9 ^20 minecraft:sea_lantern
setblock ^2 ^9 ^21 minecraft:smooth_stone
setblock ^3 ^10 ^21 minecraft:iron_bars
setblock ^2 ^10 ^22 minecraft:smooth_stone
setblock ^3 ^11 ^22 minecraft:iron_bars
setblock ^2 ^11 ^23 minecraft:smooth_stone
setblock ^3 ^12 ^23 minecraft:iron_bars
setblock ^2 ^12 ^24 minecraft:smooth_stone
setblock ^3 ^13 ^24 minecraft:iron_bars
setblock ^2 ^13 ^25 minecraft:smooth_stone
setblock ^3 ^14 ^25 minecraft:iron_bars
setblock ^2 ^14 ^25 minecraft:sea_lantern
setblock ^2 ^14 ^26 minecraft:smooth_stone
setblock ^3 ^15 ^26 minecraft:iron_bars
setblock ^2 ^15 ^27 minecraft:smooth_stone
setblock ^3 ^16 ^27 minecraft:iron_bars
setblock ^2 ^16 ^28 minecraft:smooth_stone
setblock ^3 ^17 ^28 minecraft:iron_bars
setblock ^2 ^17 ^29 minecraft:smooth_stone
setblock ^3 ^18 ^29 minecraft:iron_bars
setblock ^2 ^18 ^30 minecraft:smooth_stone
setblock ^3 ^19 ^30 minecraft:iron_bars
setblock ^2 ^19 ^30 minecraft:sea_lantern
setblock ^2 ^19 ^31 minecraft:smooth_stone
setblock ^3 ^20 ^31 minecraft:iron_bars
setblock ^2 ^20 ^32 minecraft:smooth_stone
setblock ^3 ^21 ^32 minecraft:iron_bars
setblock ^2 ^21 ^33 minecraft:smooth_stone
setblock ^3 ^22 ^33 minecraft:iron_bars
setblock ^2 ^22 ^34 minecraft:smooth_stone
setblock ^3 ^23 ^34 minecraft:iron_bars
setblock ^2 ^23 ^35 minecraft:smooth_stone
setblock ^3 ^24 ^35 minecraft:iron_bars
setblock ^2 ^24 ^35 minecraft:sea_lantern
setblock ^2 ^24 ^36 minecraft:smooth_stone
setblock ^3 ^25 ^36 minecraft:iron_bars
setblock ^2 ^25 ^37 minecraft:smooth_stone
setblock ^3 ^26 ^37 minecraft:iron_bars
setblock ^2 ^26 ^38 minecraft:smooth_stone
setblock ^3 ^27 ^38 minecraft:iron_bars
setblock ^2 ^27 ^39 minecraft:smooth_stone
setblock ^3 ^28 ^39 minecraft:iron_bars
setblock ^2 ^28 ^40 minecraft:smooth_stone
setblock ^3 ^29 ^40 minecraft:iron_bars
setblock ^2 ^29 ^40 minecraft:sea_lantern
setblock ^2 ^29 ^41 minecraft:smooth_stone
setblock ^3 ^30 ^41 minecraft:iron_bars
setblock ^2 ^30 ^42 minecraft:smooth_stone
setblock ^3 ^31 ^42 minecraft:iron_bars
setblock ^2 ^31 ^43 minecraft:smooth_stone
setblock ^3 ^32 ^43 minecraft:iron_bars
setblock ^2 ^32 ^44 minecraft:smooth_stone
setblock ^3 ^33 ^44 minecraft:iron_bars
setblock ^2 ^33 ^45 minecraft:smooth_stone
setblock ^3 ^34 ^45 minecraft:iron_bars
setblock ^2 ^34 ^45 minecraft:sea_lantern
setblock ^2 ^34 ^46 minecraft:smooth_stone
setblock ^3 ^35 ^46 minecraft:iron_bars
setblock ^2 ^35 ^47 minecraft:smooth_stone
setblock ^3 ^36 ^47 minecraft:iron_bars
setblock ^2 ^36 ^48 minecraft:smooth_stone
setblock ^3 ^37 ^48 minecraft:iron_bars
setblock ^2 ^37 ^49 minecraft:smooth_stone
setblock ^3 ^38 ^49 minecraft:iron_bars
setblock ^2 ^38 ^50 minecraft:smooth_stone
setblock ^3 ^39 ^50 minecraft:iron_bars
setblock ^2 ^39 ^50 minecraft:sea_lantern
fill ^-3 ^39 ^51 ^-2 ^39 ^57 minecraft:smooth_stone
fill ^-4 ^40 ^51 ^-4 ^41 ^57 minecraft:iron_bars
setblock ^-3 ^40 ^52 minecraft:sea_lantern
setblock ^-3 ^40 ^56 minecraft:sea_lantern

# === CONTINUOUS TRACK BED AND RAIL ROUTE ===
setblock ^ ^3 ^-9 minecraft:red_concrete
setblock ^ ^3 ^-8 minecraft:red_concrete
setblock ^ ^3 ^-7 minecraft:red_concrete
setblock ^ ^3 ^-6 minecraft:red_concrete
setblock ^ ^3 ^-5 minecraft:red_concrete
setblock ^ ^3 ^-4 minecraft:red_concrete
setblock ^ ^3 ^-3 minecraft:red_concrete
setblock ^ ^3 ^-2 minecraft:red_concrete
setblock ^ ^3 ^-1 minecraft:red_concrete
setblock ^ ^3 ^ minecraft:red_concrete
setblock ^ ^3 ^1 minecraft:red_concrete
setblock ^ ^3 ^2 minecraft:red_concrete
setblock ^ ^3 ^3 minecraft:red_concrete
setblock ^ ^3 ^4 minecraft:red_concrete
setblock ^ ^3 ^5 minecraft:red_concrete
setblock ^ ^3 ^6 minecraft:red_concrete
setblock ^ ^3 ^7 minecraft:red_concrete
setblock ^ ^3 ^8 minecraft:red_concrete
setblock ^ ^3 ^9 minecraft:red_concrete
setblock ^ ^3 ^10 minecraft:red_concrete
setblock ^ ^3 ^11 minecraft:red_concrete
setblock ^ ^3 ^12 minecraft:red_concrete
setblock ^ ^3 ^13 minecraft:red_concrete
setblock ^ ^3 ^14 minecraft:red_concrete
setblock ^ ^3 ^15 minecraft:red_concrete
setblock ^ ^4 ^16 minecraft:red_concrete
setblock ^ ^5 ^17 minecraft:red_concrete
setblock ^ ^6 ^18 minecraft:red_concrete
setblock ^ ^7 ^19 minecraft:red_concrete
setblock ^ ^8 ^20 minecraft:red_concrete
setblock ^ ^9 ^21 minecraft:red_concrete
setblock ^ ^10 ^22 minecraft:red_concrete
setblock ^ ^11 ^23 minecraft:red_concrete
setblock ^ ^12 ^24 minecraft:red_concrete
setblock ^ ^13 ^25 minecraft:red_concrete
setblock ^ ^14 ^26 minecraft:red_concrete
setblock ^ ^15 ^27 minecraft:red_concrete
setblock ^ ^16 ^28 minecraft:red_concrete
setblock ^ ^17 ^29 minecraft:red_concrete
setblock ^ ^18 ^30 minecraft:red_concrete
setblock ^ ^19 ^31 minecraft:red_concrete
setblock ^ ^20 ^32 minecraft:red_concrete
setblock ^ ^21 ^33 minecraft:red_concrete
setblock ^ ^22 ^34 minecraft:red_concrete
setblock ^ ^23 ^35 minecraft:red_concrete
setblock ^ ^24 ^36 minecraft:red_concrete
setblock ^ ^25 ^37 minecraft:red_concrete
setblock ^ ^26 ^38 minecraft:red_concrete
setblock ^ ^27 ^39 minecraft:red_concrete
setblock ^ ^28 ^40 minecraft:red_concrete
setblock ^ ^29 ^41 minecraft:red_concrete
setblock ^ ^30 ^42 minecraft:red_concrete
setblock ^ ^31 ^43 minecraft:red_concrete
setblock ^ ^32 ^44 minecraft:red_concrete
setblock ^ ^33 ^45 minecraft:red_concrete
setblock ^ ^34 ^46 minecraft:red_concrete
setblock ^ ^35 ^47 minecraft:red_concrete
setblock ^ ^36 ^48 minecraft:red_concrete
setblock ^ ^37 ^49 minecraft:red_concrete
setblock ^ ^38 ^50 minecraft:red_concrete
setblock ^ ^38 ^51 minecraft:red_concrete
setblock ^ ^38 ^52 minecraft:red_concrete
setblock ^ ^38 ^53 minecraft:red_concrete
setblock ^ ^38 ^54 minecraft:red_concrete
setblock ^ ^38 ^55 minecraft:red_concrete
setblock ^ ^38 ^56 minecraft:red_concrete
setblock ^ ^38 ^57 minecraft:red_concrete
setblock ^1 ^37 ^57 minecraft:red_concrete
setblock ^2 ^36 ^57 minecraft:red_concrete
setblock ^3 ^35 ^57 minecraft:red_concrete
setblock ^4 ^34 ^57 minecraft:red_concrete
setblock ^5 ^33 ^57 minecraft:red_concrete
setblock ^6 ^32 ^57 minecraft:red_concrete
setblock ^7 ^31 ^57 minecraft:red_concrete
setblock ^8 ^30 ^57 minecraft:red_concrete
setblock ^9 ^29 ^57 minecraft:red_concrete
setblock ^10 ^28 ^57 minecraft:red_concrete
setblock ^11 ^27 ^57 minecraft:red_concrete
setblock ^12 ^26 ^57 minecraft:red_concrete
setblock ^13 ^25 ^57 minecraft:red_concrete
setblock ^14 ^24 ^57 minecraft:red_concrete
setblock ^15 ^23 ^57 minecraft:red_concrete
setblock ^16 ^22 ^57 minecraft:red_concrete
setblock ^17 ^21 ^57 minecraft:red_concrete
setblock ^18 ^20 ^57 minecraft:red_concrete
setblock ^19 ^19 ^57 minecraft:red_concrete
setblock ^20 ^18 ^57 minecraft:red_concrete
setblock ^21 ^17 ^57 minecraft:red_concrete
setblock ^22 ^16 ^57 minecraft:red_concrete
setblock ^23 ^15 ^57 minecraft:red_concrete
setblock ^24 ^14 ^57 minecraft:red_concrete
setblock ^25 ^13 ^57 minecraft:red_concrete
setblock ^26 ^12 ^57 minecraft:red_concrete
setblock ^27 ^11 ^57 minecraft:red_concrete
setblock ^28 ^10 ^57 minecraft:red_concrete
setblock ^29 ^9 ^57 minecraft:red_concrete
setblock ^30 ^8 ^57 minecraft:red_concrete
setblock ^31 ^8 ^57 minecraft:red_concrete
setblock ^31 ^8 ^56 minecraft:red_concrete
setblock ^31 ^8 ^55 minecraft:red_concrete
setblock ^31 ^8 ^54 minecraft:red_concrete
setblock ^31 ^8 ^53 minecraft:red_concrete
setblock ^31 ^8 ^52 minecraft:red_concrete
setblock ^31 ^8 ^51 minecraft:red_concrete
setblock ^31 ^8 ^50 minecraft:red_concrete
setblock ^31 ^8 ^49 minecraft:red_concrete
setblock ^31 ^8 ^48 minecraft:red_concrete
setblock ^31 ^8 ^47 minecraft:red_concrete
setblock ^31 ^8 ^46 minecraft:red_concrete
setblock ^31 ^8 ^45 minecraft:red_concrete
setblock ^31 ^8 ^44 minecraft:red_concrete
setblock ^31 ^8 ^43 minecraft:red_concrete
setblock ^31 ^8 ^42 minecraft:red_concrete
setblock ^31 ^9 ^41 minecraft:red_concrete
setblock ^31 ^10 ^40 minecraft:red_concrete
setblock ^31 ^11 ^39 minecraft:red_concrete
setblock ^31 ^12 ^38 minecraft:red_concrete
setblock ^31 ^13 ^37 minecraft:red_concrete
setblock ^31 ^14 ^36 minecraft:red_concrete
setblock ^31 ^15 ^35 minecraft:red_concrete
setblock ^31 ^16 ^34 minecraft:red_concrete
setblock ^31 ^17 ^33 minecraft:red_concrete
setblock ^31 ^18 ^32 minecraft:red_concrete
setblock ^31 ^19 ^31 minecraft:red_concrete
setblock ^31 ^20 ^30 minecraft:red_concrete
setblock ^31 ^20 ^29 minecraft:red_concrete
setblock ^31 ^19 ^28 minecraft:red_concrete
setblock ^31 ^18 ^27 minecraft:red_concrete
setblock ^31 ^17 ^26 minecraft:red_concrete
setblock ^31 ^16 ^25 minecraft:red_concrete
setblock ^31 ^15 ^24 minecraft:red_concrete
setblock ^31 ^14 ^23 minecraft:red_concrete
setblock ^31 ^13 ^22 minecraft:red_concrete
setblock ^31 ^12 ^21 minecraft:red_concrete
setblock ^31 ^11 ^20 minecraft:red_concrete
setblock ^31 ^10 ^19 minecraft:red_concrete
setblock ^31 ^9 ^18 minecraft:red_concrete
setblock ^31 ^8 ^17 minecraft:red_concrete
setblock ^31 ^8 ^16 minecraft:red_concrete
setblock ^31 ^8 ^15 minecraft:red_concrete
setblock ^31 ^8 ^14 minecraft:red_concrete
setblock ^31 ^8 ^13 minecraft:red_concrete
setblock ^31 ^8 ^12 minecraft:red_concrete
setblock ^31 ^8 ^11 minecraft:red_concrete
setblock ^31 ^8 ^10 minecraft:red_concrete
setblock ^31 ^8 ^9 minecraft:red_concrete
setblock ^30 ^8 ^9 minecraft:red_concrete
setblock ^29 ^8 ^9 minecraft:red_concrete
setblock ^28 ^8 ^9 minecraft:red_concrete
setblock ^27 ^8 ^9 minecraft:red_concrete
setblock ^26 ^8 ^9 minecraft:red_concrete
setblock ^25 ^8 ^9 minecraft:red_concrete
setblock ^24 ^8 ^9 minecraft:red_concrete
setblock ^23 ^8 ^9 minecraft:red_concrete
setblock ^22 ^8 ^9 minecraft:red_concrete
setblock ^21 ^8 ^9 minecraft:red_concrete
setblock ^20 ^8 ^9 minecraft:red_concrete
setblock ^19 ^8 ^9 minecraft:red_concrete
setblock ^18 ^8 ^9 minecraft:red_concrete
setblock ^17 ^8 ^9 minecraft:red_concrete
setblock ^16 ^8 ^9 minecraft:red_concrete
setblock ^15 ^8 ^9 minecraft:red_concrete
setblock ^14 ^8 ^9 minecraft:red_concrete
setblock ^13 ^8 ^9 minecraft:red_concrete
setblock ^12 ^8 ^9 minecraft:red_concrete
setblock ^11 ^8 ^9 minecraft:red_concrete
setblock ^10 ^8 ^9 minecraft:red_concrete
setblock ^9 ^8 ^9 minecraft:red_concrete
setblock ^8 ^8 ^9 minecraft:red_concrete
setblock ^7 ^8 ^9 minecraft:red_concrete
setblock ^6 ^8 ^9 minecraft:red_concrete
setblock ^5 ^8 ^9 minecraft:red_concrete
setblock ^4 ^8 ^9 minecraft:red_concrete
setblock ^3 ^8 ^9 minecraft:red_concrete
setblock ^2 ^8 ^9 minecraft:red_concrete
setblock ^1 ^8 ^9 minecraft:red_concrete
setblock ^ ^8 ^9 minecraft:red_concrete
setblock ^-1 ^8 ^9 minecraft:red_concrete
setblock ^-2 ^8 ^9 minecraft:red_concrete
setblock ^-3 ^8 ^9 minecraft:red_concrete
setblock ^-4 ^8 ^9 minecraft:red_concrete
setblock ^-5 ^8 ^9 minecraft:red_concrete
setblock ^-6 ^8 ^9 minecraft:red_concrete
setblock ^-7 ^8 ^9 minecraft:red_concrete
setblock ^-8 ^8 ^9 minecraft:red_concrete
setblock ^-9 ^8 ^9 minecraft:red_concrete
setblock ^-10 ^8 ^9 minecraft:red_concrete
setblock ^-11 ^8 ^9 minecraft:red_concrete
setblock ^-12 ^8 ^9 minecraft:red_concrete
setblock ^-13 ^8 ^9 minecraft:red_concrete
setblock ^-14 ^8 ^9 minecraft:red_concrete
setblock ^-15 ^8 ^9 minecraft:red_concrete
setblock ^-16 ^8 ^9 minecraft:red_concrete
setblock ^-17 ^8 ^9 minecraft:red_concrete
setblock ^-18 ^8 ^9 minecraft:red_concrete
setblock ^-19 ^8 ^9 minecraft:red_concrete
setblock ^-20 ^8 ^9 minecraft:red_concrete
setblock ^-21 ^8 ^9 minecraft:red_concrete
setblock ^-22 ^8 ^9 minecraft:red_concrete
setblock ^-23 ^8 ^9 minecraft:red_concrete
setblock ^-24 ^8 ^9 minecraft:red_concrete
setblock ^-25 ^8 ^9 minecraft:red_concrete
setblock ^-26 ^8 ^9 minecraft:red_concrete
setblock ^-27 ^8 ^9 minecraft:red_concrete
setblock ^-28 ^8 ^9 minecraft:red_concrete
setblock ^-29 ^8 ^9 minecraft:red_concrete
setblock ^-30 ^8 ^9 minecraft:red_concrete
setblock ^-31 ^8 ^9 minecraft:red_concrete
setblock ^-31 ^8 ^10 minecraft:red_concrete
setblock ^-31 ^8 ^11 minecraft:red_concrete
setblock ^-31 ^8 ^12 minecraft:red_concrete
setblock ^-31 ^8 ^13 minecraft:red_concrete
setblock ^-31 ^8 ^14 minecraft:red_concrete
setblock ^-31 ^8 ^15 minecraft:red_concrete
setblock ^-31 ^8 ^16 minecraft:red_concrete
setblock ^-31 ^9 ^17 minecraft:red_concrete
setblock ^-31 ^10 ^18 minecraft:red_concrete
setblock ^-31 ^11 ^19 minecraft:red_concrete
setblock ^-31 ^12 ^20 minecraft:red_concrete
setblock ^-31 ^13 ^21 minecraft:red_concrete
setblock ^-31 ^14 ^22 minecraft:red_concrete
setblock ^-31 ^15 ^23 minecraft:red_concrete
setblock ^-31 ^16 ^24 minecraft:red_concrete
setblock ^-31 ^17 ^25 minecraft:red_concrete
setblock ^-31 ^18 ^26 minecraft:red_concrete
setblock ^-31 ^19 ^27 minecraft:red_concrete
setblock ^-31 ^20 ^28 minecraft:red_concrete
setblock ^-31 ^20 ^29 minecraft:red_concrete
setblock ^-31 ^19 ^30 minecraft:red_concrete
setblock ^-31 ^18 ^31 minecraft:red_concrete
setblock ^-31 ^17 ^32 minecraft:red_concrete
setblock ^-31 ^16 ^33 minecraft:red_concrete
setblock ^-31 ^15 ^34 minecraft:red_concrete
setblock ^-31 ^14 ^35 minecraft:red_concrete
setblock ^-31 ^13 ^36 minecraft:red_concrete
setblock ^-31 ^12 ^37 minecraft:red_concrete
setblock ^-31 ^11 ^38 minecraft:red_concrete
setblock ^-31 ^10 ^39 minecraft:red_concrete
setblock ^-31 ^9 ^40 minecraft:red_concrete
setblock ^-31 ^8 ^41 minecraft:red_concrete
setblock ^-31 ^8 ^42 minecraft:red_concrete
setblock ^-31 ^8 ^43 minecraft:red_concrete
setblock ^-31 ^8 ^44 minecraft:red_concrete
setblock ^-31 ^8 ^45 minecraft:red_concrete
setblock ^-31 ^8 ^46 minecraft:red_concrete
setblock ^-31 ^8 ^47 minecraft:red_concrete
setblock ^-31 ^8 ^48 minecraft:red_concrete
setblock ^-31 ^8 ^49 minecraft:red_concrete
setblock ^-31 ^8 ^50 minecraft:red_concrete
setblock ^-31 ^8 ^51 minecraft:red_concrete
setblock ^-31 ^8 ^52 minecraft:red_concrete
setblock ^-31 ^8 ^53 minecraft:red_concrete
setblock ^-31 ^8 ^54 minecraft:red_concrete
setblock ^-31 ^8 ^55 minecraft:red_concrete
setblock ^-31 ^8 ^56 minecraft:red_concrete
setblock ^-31 ^8 ^57 minecraft:red_concrete
setblock ^-31 ^8 ^58 minecraft:red_concrete
setblock ^-31 ^8 ^59 minecraft:red_concrete
setblock ^-31 ^8 ^60 minecraft:red_concrete
setblock ^-31 ^8 ^61 minecraft:red_concrete
setblock ^-30 ^8 ^61 minecraft:red_concrete
setblock ^-29 ^8 ^61 minecraft:red_concrete
setblock ^-28 ^8 ^61 minecraft:red_concrete
setblock ^-27 ^8 ^61 minecraft:red_concrete
setblock ^-26 ^8 ^61 minecraft:red_concrete
setblock ^-25 ^8 ^61 minecraft:red_concrete
setblock ^-24 ^8 ^61 minecraft:red_concrete
setblock ^-23 ^9 ^61 minecraft:red_concrete
setblock ^-22 ^10 ^61 minecraft:red_concrete
setblock ^-21 ^11 ^61 minecraft:red_concrete
setblock ^-20 ^12 ^61 minecraft:red_concrete
setblock ^-19 ^13 ^61 minecraft:red_concrete
setblock ^-18 ^14 ^61 minecraft:red_concrete
setblock ^-17 ^15 ^61 minecraft:red_concrete
setblock ^-16 ^16 ^61 minecraft:red_concrete
setblock ^-15 ^17 ^61 minecraft:red_concrete
setblock ^-14 ^18 ^61 minecraft:red_concrete
setblock ^-13 ^18 ^61 minecraft:red_concrete
setblock ^-12 ^17 ^61 minecraft:red_concrete
setblock ^-11 ^16 ^61 minecraft:red_concrete
setblock ^-10 ^15 ^61 minecraft:red_concrete
setblock ^-9 ^14 ^61 minecraft:red_concrete
setblock ^-8 ^13 ^61 minecraft:red_concrete
setblock ^-7 ^12 ^61 minecraft:red_concrete
setblock ^-6 ^11 ^61 minecraft:red_concrete
setblock ^-5 ^10 ^61 minecraft:red_concrete
setblock ^-4 ^9 ^61 minecraft:red_concrete
setblock ^-3 ^8 ^61 minecraft:red_concrete
setblock ^-2 ^8 ^61 minecraft:red_concrete
setblock ^-1 ^8 ^61 minecraft:red_concrete
setblock ^ ^8 ^61 minecraft:red_concrete
setblock ^1 ^8 ^61 minecraft:red_concrete
setblock ^2 ^8 ^61 minecraft:red_concrete
setblock ^3 ^8 ^61 minecraft:red_concrete
setblock ^4 ^8 ^61 minecraft:red_concrete
setblock ^5 ^8 ^61 minecraft:red_concrete
setblock ^6 ^8 ^61 minecraft:red_concrete
setblock ^7 ^8 ^61 minecraft:red_concrete
setblock ^8 ^8 ^61 minecraft:red_concrete
setblock ^9 ^8 ^61 minecraft:red_concrete
setblock ^10 ^8 ^61 minecraft:red_concrete
setblock ^11 ^8 ^61 minecraft:red_concrete
setblock ^11 ^8 ^60 minecraft:red_concrete
setblock ^11 ^8 ^59 minecraft:red_concrete
setblock ^11 ^8 ^58 minecraft:red_concrete
setblock ^11 ^8 ^57 minecraft:red_concrete
setblock ^11 ^8 ^56 minecraft:red_concrete
setblock ^11 ^8 ^55 minecraft:red_concrete
setblock ^11 ^8 ^54 minecraft:red_concrete
setblock ^11 ^8 ^53 minecraft:red_concrete
setblock ^11 ^8 ^52 minecraft:red_concrete
setblock ^11 ^8 ^51 minecraft:red_concrete
setblock ^11 ^8 ^50 minecraft:red_concrete
setblock ^11 ^8 ^49 minecraft:red_concrete
setblock ^11 ^8 ^48 minecraft:red_concrete
setblock ^11 ^8 ^47 minecraft:red_concrete
setblock ^11 ^8 ^46 minecraft:red_concrete
setblock ^11 ^8 ^45 minecraft:red_concrete
setblock ^11 ^9 ^44 minecraft:red_concrete
setblock ^11 ^10 ^43 minecraft:red_concrete
setblock ^11 ^11 ^42 minecraft:red_concrete
setblock ^11 ^12 ^41 minecraft:red_concrete
setblock ^11 ^13 ^40 minecraft:red_concrete
setblock ^11 ^14 ^39 minecraft:red_concrete
setblock ^11 ^15 ^38 minecraft:red_concrete
setblock ^11 ^16 ^37 minecraft:red_concrete
setblock ^11 ^17 ^36 minecraft:red_concrete
setblock ^11 ^17 ^35 minecraft:red_concrete
setblock ^11 ^16 ^34 minecraft:red_concrete
setblock ^11 ^15 ^33 minecraft:red_concrete
setblock ^11 ^14 ^32 minecraft:red_concrete
setblock ^11 ^13 ^31 minecraft:red_concrete
setblock ^11 ^12 ^30 minecraft:red_concrete
setblock ^11 ^11 ^29 minecraft:red_concrete
setblock ^11 ^10 ^28 minecraft:red_concrete
setblock ^11 ^9 ^27 minecraft:red_concrete
setblock ^11 ^8 ^26 minecraft:red_concrete
setblock ^11 ^8 ^25 minecraft:red_concrete
setblock ^11 ^8 ^24 minecraft:red_concrete
setblock ^11 ^8 ^23 minecraft:red_concrete
setblock ^11 ^8 ^22 minecraft:red_concrete
setblock ^11 ^8 ^21 minecraft:red_concrete
setblock ^11 ^8 ^20 minecraft:red_concrete
setblock ^11 ^8 ^19 minecraft:red_concrete
setblock ^11 ^8 ^18 minecraft:red_concrete
setblock ^11 ^8 ^17 minecraft:red_concrete
setblock ^11 ^8 ^16 minecraft:red_concrete
setblock ^11 ^8 ^15 minecraft:red_concrete
setblock ^11 ^8 ^14 minecraft:red_concrete
setblock ^11 ^9 ^13 minecraft:red_concrete
setblock ^11 ^10 ^12 minecraft:red_concrete
setblock ^11 ^11 ^11 minecraft:red_concrete
setblock ^11 ^12 ^10 minecraft:red_concrete
setblock ^11 ^13 ^9 minecraft:red_concrete
setblock ^11 ^14 ^8 minecraft:red_concrete
setblock ^11 ^15 ^7 minecraft:red_concrete
setblock ^11 ^14 ^6 minecraft:red_concrete
setblock ^11 ^13 ^5 minecraft:red_concrete
setblock ^11 ^12 ^4 minecraft:red_concrete
setblock ^11 ^11 ^3 minecraft:red_concrete
setblock ^11 ^10 ^2 minecraft:red_concrete
setblock ^11 ^9 ^1 minecraft:red_concrete
setblock ^11 ^8 ^ minecraft:red_concrete
setblock ^11 ^7 ^-1 minecraft:red_concrete
setblock ^11 ^6 ^-2 minecraft:red_concrete
setblock ^11 ^5 ^-3 minecraft:red_concrete
setblock ^11 ^4 ^-4 minecraft:red_concrete
setblock ^11 ^3 ^-5 minecraft:red_concrete
setblock ^11 ^3 ^-6 minecraft:red_concrete
setblock ^11 ^3 ^-7 minecraft:red_concrete
setblock ^11 ^3 ^-8 minecraft:red_concrete
setblock ^11 ^3 ^-9 minecraft:red_concrete
setblock ^11 ^3 ^-10 minecraft:red_concrete
setblock ^11 ^3 ^-11 minecraft:red_concrete
setblock ^11 ^3 ^-12 minecraft:red_concrete
setblock ^10 ^3 ^-12 minecraft:red_concrete
setblock ^9 ^3 ^-12 minecraft:red_concrete
setblock ^8 ^3 ^-12 minecraft:red_concrete
setblock ^7 ^3 ^-12 minecraft:red_concrete
setblock ^6 ^3 ^-12 minecraft:red_concrete
setblock ^5 ^3 ^-12 minecraft:red_concrete
setblock ^4 ^3 ^-12 minecraft:red_concrete
setblock ^3 ^3 ^-12 minecraft:red_concrete
setblock ^2 ^3 ^-12 minecraft:red_concrete
setblock ^1 ^3 ^-12 minecraft:red_concrete
setblock ^ ^3 ^-12 minecraft:red_concrete
setblock ^ ^3 ^-11 minecraft:red_concrete
setblock ^ ^3 ^-10 minecraft:red_concrete
setblock ^ ^3 ^-9 minecraft:redstone_block
setblock ^ ^3 ^-5 minecraft:redstone_block
setblock ^ ^3 ^-1 minecraft:redstone_block
setblock ^ ^3 ^3 minecraft:redstone_block
setblock ^ ^3 ^7 minecraft:redstone_block
setblock ^ ^3 ^11 minecraft:redstone_block
setblock ^ ^4 ^16 minecraft:redstone_block
setblock ^ ^6 ^18 minecraft:redstone_block
setblock ^ ^8 ^20 minecraft:redstone_block
setblock ^ ^10 ^22 minecraft:redstone_block
setblock ^ ^12 ^24 minecraft:redstone_block
setblock ^ ^14 ^26 minecraft:redstone_block
setblock ^ ^16 ^28 minecraft:redstone_block
setblock ^ ^18 ^30 minecraft:redstone_block
setblock ^ ^20 ^32 minecraft:redstone_block
setblock ^ ^22 ^34 minecraft:redstone_block
setblock ^ ^24 ^36 minecraft:redstone_block
setblock ^ ^26 ^38 minecraft:redstone_block
setblock ^ ^28 ^40 minecraft:redstone_block
setblock ^ ^30 ^42 minecraft:redstone_block
setblock ^ ^32 ^44 minecraft:redstone_block
setblock ^ ^34 ^46 minecraft:redstone_block
setblock ^ ^36 ^48 minecraft:redstone_block
setblock ^ ^38 ^50 minecraft:redstone_block
setblock ^ ^38 ^52 minecraft:redstone_block
setblock ^ ^38 ^55 minecraft:redstone_block
setblock ^31 ^8 ^55 minecraft:redstone_block
setblock ^31 ^8 ^50 minecraft:redstone_block
setblock ^31 ^8 ^45 minecraft:redstone_block
setblock ^31 ^10 ^40 minecraft:redstone_block
setblock ^31 ^12 ^38 minecraft:redstone_block
setblock ^31 ^14 ^36 minecraft:redstone_block
setblock ^31 ^16 ^34 minecraft:redstone_block
setblock ^31 ^18 ^32 minecraft:redstone_block
setblock ^31 ^20 ^30 minecraft:redstone_block
setblock ^30 ^8 ^9 minecraft:redstone_block
setblock ^20 ^8 ^9 minecraft:redstone_block
setblock ^10 ^8 ^9 minecraft:redstone_block
setblock ^-10 ^8 ^9 minecraft:redstone_block
setblock ^-20 ^8 ^9 minecraft:redstone_block
setblock ^-30 ^8 ^9 minecraft:redstone_block
setblock ^-31 ^9 ^17 minecraft:redstone_block
setblock ^-31 ^11 ^19 minecraft:redstone_block
setblock ^-31 ^13 ^21 minecraft:redstone_block
setblock ^-31 ^15 ^23 minecraft:redstone_block
setblock ^-31 ^17 ^25 minecraft:redstone_block
setblock ^-31 ^19 ^27 minecraft:redstone_block
setblock ^-31 ^8 ^45 minecraft:redstone_block
setblock ^-31 ^8 ^51 minecraft:redstone_block
setblock ^-31 ^8 ^57 minecraft:redstone_block
setblock ^-23 ^9 ^61 minecraft:redstone_block
setblock ^-21 ^11 ^61 minecraft:redstone_block
setblock ^-19 ^13 ^61 minecraft:redstone_block
setblock ^-17 ^15 ^61 minecraft:redstone_block
setblock ^-15 ^17 ^61 minecraft:redstone_block
setblock ^11 ^8 ^60 minecraft:redstone_block
setblock ^11 ^8 ^54 minecraft:redstone_block
setblock ^11 ^8 ^48 minecraft:redstone_block
setblock ^11 ^9 ^44 minecraft:redstone_block
setblock ^11 ^11 ^42 minecraft:redstone_block
setblock ^11 ^13 ^40 minecraft:redstone_block
setblock ^11 ^15 ^38 minecraft:redstone_block
setblock ^11 ^17 ^36 minecraft:redstone_block
setblock ^11 ^8 ^25 minecraft:redstone_block
setblock ^11 ^8 ^20 minecraft:redstone_block
setblock ^11 ^8 ^15 minecraft:redstone_block
setblock ^11 ^9 ^13 minecraft:redstone_block
setblock ^11 ^11 ^11 minecraft:redstone_block
setblock ^11 ^13 ^9 minecraft:redstone_block
setblock ^11 ^15 ^7 minecraft:redstone_block
setblock ^11 ^3 ^-6 minecraft:redstone_block
setblock ^11 ^3 ^-9 minecraft:redstone_block
setblock ^10 ^3 ^-12 minecraft:redstone_block
setblock ^9 ^3 ^-12 minecraft:redstone_block
setblock ^8 ^3 ^-12 minecraft:redstone_block
setblock ^7 ^3 ^-12 minecraft:redstone_block
setblock ^6 ^3 ^-12 minecraft:redstone_block
setblock ^5 ^3 ^-12 minecraft:redstone_block
setblock ^4 ^3 ^-12 minecraft:redstone_block
setblock ^3 ^3 ^-12 minecraft:redstone_block
setblock ^2 ^3 ^-12 minecraft:redstone_block
setblock ^1 ^3 ^-12 minecraft:redstone_block
setblock ^ ^4 ^-9 minecraft:golden_rail
setblock ^ ^4 ^-8 minecraft:rail
setblock ^ ^4 ^-7 minecraft:rail
setblock ^ ^4 ^-6 minecraft:rail
setblock ^ ^4 ^-5 minecraft:golden_rail
setblock ^ ^4 ^-4 minecraft:rail
setblock ^ ^4 ^-3 minecraft:rail
setblock ^ ^4 ^-2 minecraft:rail
setblock ^ ^4 ^-1 minecraft:golden_rail
setblock ^ ^4 ^ minecraft:rail
setblock ^ ^4 ^1 minecraft:rail
setblock ^ ^4 ^2 minecraft:rail
setblock ^ ^4 ^3 minecraft:golden_rail
setblock ^ ^4 ^4 minecraft:rail
setblock ^ ^4 ^5 minecraft:rail
setblock ^ ^4 ^6 minecraft:rail
setblock ^ ^4 ^7 minecraft:golden_rail
setblock ^ ^4 ^8 minecraft:rail
setblock ^ ^4 ^9 minecraft:rail
setblock ^ ^4 ^10 minecraft:rail
setblock ^ ^4 ^11 minecraft:golden_rail
setblock ^ ^4 ^12 minecraft:rail
setblock ^ ^4 ^13 minecraft:rail
setblock ^ ^4 ^14 minecraft:rail
setblock ^ ^4 ^15 minecraft:rail
setblock ^ ^5 ^16 minecraft:golden_rail
setblock ^ ^6 ^17 minecraft:rail
setblock ^ ^7 ^18 minecraft:golden_rail
setblock ^ ^8 ^19 minecraft:rail
setblock ^ ^9 ^20 minecraft:golden_rail
setblock ^ ^10 ^21 minecraft:rail
setblock ^ ^11 ^22 minecraft:golden_rail
setblock ^ ^12 ^23 minecraft:rail
setblock ^ ^13 ^24 minecraft:golden_rail
setblock ^ ^14 ^25 minecraft:rail
setblock ^ ^15 ^26 minecraft:golden_rail
setblock ^ ^16 ^27 minecraft:rail
setblock ^ ^17 ^28 minecraft:golden_rail
setblock ^ ^18 ^29 minecraft:rail
setblock ^ ^19 ^30 minecraft:golden_rail
setblock ^ ^20 ^31 minecraft:rail
setblock ^ ^21 ^32 minecraft:golden_rail
setblock ^ ^22 ^33 minecraft:rail
setblock ^ ^23 ^34 minecraft:golden_rail
setblock ^ ^24 ^35 minecraft:rail
setblock ^ ^25 ^36 minecraft:golden_rail
setblock ^ ^26 ^37 minecraft:rail
setblock ^ ^27 ^38 minecraft:golden_rail
setblock ^ ^28 ^39 minecraft:rail
setblock ^ ^29 ^40 minecraft:golden_rail
setblock ^ ^30 ^41 minecraft:rail
setblock ^ ^31 ^42 minecraft:golden_rail
setblock ^ ^32 ^43 minecraft:rail
setblock ^ ^33 ^44 minecraft:golden_rail
setblock ^ ^34 ^45 minecraft:rail
setblock ^ ^35 ^46 minecraft:golden_rail
setblock ^ ^36 ^47 minecraft:rail
setblock ^ ^37 ^48 minecraft:golden_rail
setblock ^ ^38 ^49 minecraft:rail
setblock ^ ^39 ^50 minecraft:golden_rail
setblock ^ ^39 ^51 minecraft:rail
setblock ^ ^39 ^52 minecraft:golden_rail
setblock ^ ^39 ^53 minecraft:rail
setblock ^ ^39 ^54 minecraft:rail
setblock ^ ^39 ^55 minecraft:golden_rail
setblock ^ ^39 ^56 minecraft:rail
setblock ^ ^39 ^57 minecraft:rail
setblock ^1 ^38 ^57 minecraft:rail
setblock ^2 ^37 ^57 minecraft:rail
setblock ^3 ^36 ^57 minecraft:rail
setblock ^4 ^35 ^57 minecraft:rail
setblock ^5 ^34 ^57 minecraft:rail
setblock ^6 ^33 ^57 minecraft:rail
setblock ^7 ^32 ^57 minecraft:rail
setblock ^8 ^31 ^57 minecraft:rail
setblock ^9 ^30 ^57 minecraft:rail
setblock ^10 ^29 ^57 minecraft:rail
setblock ^11 ^28 ^57 minecraft:rail
setblock ^12 ^27 ^57 minecraft:rail
setblock ^13 ^26 ^57 minecraft:rail
setblock ^14 ^25 ^57 minecraft:rail
setblock ^15 ^24 ^57 minecraft:rail
setblock ^16 ^23 ^57 minecraft:rail
setblock ^17 ^22 ^57 minecraft:rail
setblock ^18 ^21 ^57 minecraft:rail
setblock ^19 ^20 ^57 minecraft:rail
setblock ^20 ^19 ^57 minecraft:rail
setblock ^21 ^18 ^57 minecraft:rail
setblock ^22 ^17 ^57 minecraft:rail
setblock ^23 ^16 ^57 minecraft:rail
setblock ^24 ^15 ^57 minecraft:rail
setblock ^25 ^14 ^57 minecraft:rail
setblock ^26 ^13 ^57 minecraft:rail
setblock ^27 ^12 ^57 minecraft:rail
setblock ^28 ^11 ^57 minecraft:rail
setblock ^29 ^10 ^57 minecraft:rail
setblock ^30 ^9 ^57 minecraft:rail
setblock ^31 ^9 ^57 minecraft:rail
setblock ^31 ^9 ^56 minecraft:rail
setblock ^31 ^9 ^55 minecraft:golden_rail
setblock ^31 ^9 ^54 minecraft:rail
setblock ^31 ^9 ^53 minecraft:rail
setblock ^31 ^9 ^52 minecraft:rail
setblock ^31 ^9 ^51 minecraft:rail
setblock ^31 ^9 ^50 minecraft:golden_rail
setblock ^31 ^9 ^49 minecraft:rail
setblock ^31 ^9 ^48 minecraft:rail
setblock ^31 ^9 ^47 minecraft:rail
setblock ^31 ^9 ^46 minecraft:rail
setblock ^31 ^9 ^45 minecraft:golden_rail
setblock ^31 ^9 ^44 minecraft:rail
setblock ^31 ^9 ^43 minecraft:rail
setblock ^31 ^9 ^42 minecraft:rail
setblock ^31 ^10 ^41 minecraft:rail
setblock ^31 ^11 ^40 minecraft:golden_rail
setblock ^31 ^12 ^39 minecraft:rail
setblock ^31 ^13 ^38 minecraft:golden_rail
setblock ^31 ^14 ^37 minecraft:rail
setblock ^31 ^15 ^36 minecraft:golden_rail
setblock ^31 ^16 ^35 minecraft:rail
setblock ^31 ^17 ^34 minecraft:golden_rail
setblock ^31 ^18 ^33 minecraft:rail
setblock ^31 ^19 ^32 minecraft:golden_rail
setblock ^31 ^20 ^31 minecraft:rail
setblock ^31 ^21 ^30 minecraft:golden_rail
setblock ^31 ^21 ^29 minecraft:rail
setblock ^31 ^20 ^28 minecraft:rail
setblock ^31 ^19 ^27 minecraft:rail
setblock ^31 ^18 ^26 minecraft:rail
setblock ^31 ^17 ^25 minecraft:rail
setblock ^31 ^16 ^24 minecraft:rail
setblock ^31 ^15 ^23 minecraft:rail
setblock ^31 ^14 ^22 minecraft:rail
setblock ^31 ^13 ^21 minecraft:rail
setblock ^31 ^12 ^20 minecraft:rail
setblock ^31 ^11 ^19 minecraft:rail
setblock ^31 ^10 ^18 minecraft:rail
setblock ^31 ^9 ^17 minecraft:rail
setblock ^31 ^9 ^16 minecraft:rail
setblock ^31 ^9 ^15 minecraft:rail
setblock ^31 ^9 ^14 minecraft:rail
setblock ^31 ^9 ^13 minecraft:rail
setblock ^31 ^9 ^12 minecraft:rail
setblock ^31 ^9 ^11 minecraft:rail
setblock ^31 ^9 ^10 minecraft:rail
setblock ^31 ^9 ^9 minecraft:rail
setblock ^30 ^9 ^9 minecraft:golden_rail
setblock ^29 ^9 ^9 minecraft:rail
setblock ^28 ^9 ^9 minecraft:rail
setblock ^27 ^9 ^9 minecraft:rail
setblock ^26 ^9 ^9 minecraft:rail
setblock ^25 ^9 ^9 minecraft:rail
setblock ^24 ^9 ^9 minecraft:rail
setblock ^23 ^9 ^9 minecraft:rail
setblock ^22 ^9 ^9 minecraft:rail
setblock ^21 ^9 ^9 minecraft:rail
setblock ^20 ^9 ^9 minecraft:golden_rail
setblock ^19 ^9 ^9 minecraft:rail
setblock ^18 ^9 ^9 minecraft:rail
setblock ^17 ^9 ^9 minecraft:rail
setblock ^16 ^9 ^9 minecraft:rail
setblock ^15 ^9 ^9 minecraft:rail
setblock ^14 ^9 ^9 minecraft:rail
setblock ^13 ^9 ^9 minecraft:rail
setblock ^12 ^9 ^9 minecraft:rail
setblock ^11 ^9 ^9 minecraft:rail
setblock ^10 ^9 ^9 minecraft:golden_rail
setblock ^9 ^9 ^9 minecraft:rail
setblock ^8 ^9 ^9 minecraft:rail
setblock ^7 ^9 ^9 minecraft:rail
setblock ^6 ^9 ^9 minecraft:rail
setblock ^5 ^9 ^9 minecraft:rail
setblock ^4 ^9 ^9 minecraft:rail
setblock ^3 ^9 ^9 minecraft:rail
setblock ^2 ^9 ^9 minecraft:rail
setblock ^1 ^9 ^9 minecraft:rail
setblock ^ ^9 ^9 minecraft:rail
setblock ^-1 ^9 ^9 minecraft:rail
setblock ^-2 ^9 ^9 minecraft:rail
setblock ^-3 ^9 ^9 minecraft:rail
setblock ^-4 ^9 ^9 minecraft:rail
setblock ^-5 ^9 ^9 minecraft:rail
setblock ^-6 ^9 ^9 minecraft:rail
setblock ^-7 ^9 ^9 minecraft:rail
setblock ^-8 ^9 ^9 minecraft:rail
setblock ^-9 ^9 ^9 minecraft:rail
setblock ^-10 ^9 ^9 minecraft:golden_rail
setblock ^-11 ^9 ^9 minecraft:rail
setblock ^-12 ^9 ^9 minecraft:rail
setblock ^-13 ^9 ^9 minecraft:rail
setblock ^-14 ^9 ^9 minecraft:rail
setblock ^-15 ^9 ^9 minecraft:rail
setblock ^-16 ^9 ^9 minecraft:rail
setblock ^-17 ^9 ^9 minecraft:rail
setblock ^-18 ^9 ^9 minecraft:rail
setblock ^-19 ^9 ^9 minecraft:rail
setblock ^-20 ^9 ^9 minecraft:golden_rail
setblock ^-21 ^9 ^9 minecraft:rail
setblock ^-22 ^9 ^9 minecraft:rail
setblock ^-23 ^9 ^9 minecraft:rail
setblock ^-24 ^9 ^9 minecraft:rail
setblock ^-25 ^9 ^9 minecraft:rail
setblock ^-26 ^9 ^9 minecraft:rail
setblock ^-27 ^9 ^9 minecraft:rail
setblock ^-28 ^9 ^9 minecraft:rail
setblock ^-29 ^9 ^9 minecraft:rail
setblock ^-30 ^9 ^9 minecraft:golden_rail
setblock ^-31 ^9 ^9 minecraft:rail
setblock ^-31 ^9 ^10 minecraft:rail
setblock ^-31 ^9 ^11 minecraft:rail
setblock ^-31 ^9 ^12 minecraft:rail
setblock ^-31 ^9 ^13 minecraft:rail
setblock ^-31 ^9 ^14 minecraft:rail
setblock ^-31 ^9 ^15 minecraft:rail
setblock ^-31 ^9 ^16 minecraft:rail
setblock ^-31 ^10 ^17 minecraft:golden_rail
setblock ^-31 ^11 ^18 minecraft:rail
setblock ^-31 ^12 ^19 minecraft:golden_rail
setblock ^-31 ^13 ^20 minecraft:rail
setblock ^-31 ^14 ^21 minecraft:golden_rail
setblock ^-31 ^15 ^22 minecraft:rail
setblock ^-31 ^16 ^23 minecraft:golden_rail
setblock ^-31 ^17 ^24 minecraft:rail
setblock ^-31 ^18 ^25 minecraft:golden_rail
setblock ^-31 ^19 ^26 minecraft:rail
setblock ^-31 ^20 ^27 minecraft:golden_rail
setblock ^-31 ^21 ^28 minecraft:rail
setblock ^-31 ^21 ^29 minecraft:rail
setblock ^-31 ^20 ^30 minecraft:rail
setblock ^-31 ^19 ^31 minecraft:rail
setblock ^-31 ^18 ^32 minecraft:rail
setblock ^-31 ^17 ^33 minecraft:rail
setblock ^-31 ^16 ^34 minecraft:rail
setblock ^-31 ^15 ^35 minecraft:rail
setblock ^-31 ^14 ^36 minecraft:rail
setblock ^-31 ^13 ^37 minecraft:rail
setblock ^-31 ^12 ^38 minecraft:rail
setblock ^-31 ^11 ^39 minecraft:rail
setblock ^-31 ^10 ^40 minecraft:rail
setblock ^-31 ^9 ^41 minecraft:rail
setblock ^-31 ^9 ^42 minecraft:rail
setblock ^-31 ^9 ^43 minecraft:rail
setblock ^-31 ^9 ^44 minecraft:rail
setblock ^-31 ^9 ^45 minecraft:golden_rail
setblock ^-31 ^9 ^46 minecraft:rail
setblock ^-31 ^9 ^47 minecraft:rail
setblock ^-31 ^9 ^48 minecraft:rail
setblock ^-31 ^9 ^49 minecraft:rail
setblock ^-31 ^9 ^50 minecraft:rail
setblock ^-31 ^9 ^51 minecraft:golden_rail
setblock ^-31 ^9 ^52 minecraft:rail
setblock ^-31 ^9 ^53 minecraft:rail
setblock ^-31 ^9 ^54 minecraft:rail
setblock ^-31 ^9 ^55 minecraft:rail
setblock ^-31 ^9 ^56 minecraft:rail
setblock ^-31 ^9 ^57 minecraft:golden_rail
setblock ^-31 ^9 ^58 minecraft:rail
setblock ^-31 ^9 ^59 minecraft:rail
setblock ^-31 ^9 ^60 minecraft:rail
setblock ^-31 ^9 ^61 minecraft:rail
setblock ^-30 ^9 ^61 minecraft:rail
setblock ^-29 ^9 ^61 minecraft:rail
setblock ^-28 ^9 ^61 minecraft:rail
setblock ^-27 ^9 ^61 minecraft:rail
setblock ^-26 ^9 ^61 minecraft:rail
setblock ^-25 ^9 ^61 minecraft:rail
setblock ^-24 ^9 ^61 minecraft:rail
setblock ^-23 ^10 ^61 minecraft:golden_rail
setblock ^-22 ^11 ^61 minecraft:rail
setblock ^-21 ^12 ^61 minecraft:golden_rail
setblock ^-20 ^13 ^61 minecraft:rail
setblock ^-19 ^14 ^61 minecraft:golden_rail
setblock ^-18 ^15 ^61 minecraft:rail
setblock ^-17 ^16 ^61 minecraft:golden_rail
setblock ^-16 ^17 ^61 minecraft:rail
setblock ^-15 ^18 ^61 minecraft:golden_rail
setblock ^-14 ^19 ^61 minecraft:rail
setblock ^-13 ^19 ^61 minecraft:rail
setblock ^-12 ^18 ^61 minecraft:rail
setblock ^-11 ^17 ^61 minecraft:rail
setblock ^-10 ^16 ^61 minecraft:rail
setblock ^-9 ^15 ^61 minecraft:rail
setblock ^-8 ^14 ^61 minecraft:rail
setblock ^-7 ^13 ^61 minecraft:rail
setblock ^-6 ^12 ^61 minecraft:rail
setblock ^-5 ^11 ^61 minecraft:rail
setblock ^-4 ^10 ^61 minecraft:rail
setblock ^-3 ^9 ^61 minecraft:rail
setblock ^-2 ^9 ^61 minecraft:rail
setblock ^-1 ^9 ^61 minecraft:rail
setblock ^ ^9 ^61 minecraft:rail
setblock ^1 ^9 ^61 minecraft:rail
setblock ^2 ^9 ^61 minecraft:rail
setblock ^3 ^9 ^61 minecraft:rail
setblock ^4 ^9 ^61 minecraft:rail
setblock ^5 ^9 ^61 minecraft:rail
setblock ^6 ^9 ^61 minecraft:rail
setblock ^7 ^9 ^61 minecraft:rail
setblock ^8 ^9 ^61 minecraft:rail
setblock ^9 ^9 ^61 minecraft:rail
setblock ^10 ^9 ^61 minecraft:rail
setblock ^11 ^9 ^61 minecraft:rail
setblock ^11 ^9 ^60 minecraft:golden_rail
setblock ^11 ^9 ^59 minecraft:rail
setblock ^11 ^9 ^58 minecraft:rail
setblock ^11 ^9 ^57 minecraft:rail
setblock ^11 ^9 ^56 minecraft:rail
setblock ^11 ^9 ^55 minecraft:rail
setblock ^11 ^9 ^54 minecraft:golden_rail
setblock ^11 ^9 ^53 minecraft:rail
setblock ^11 ^9 ^52 minecraft:rail
setblock ^11 ^9 ^51 minecraft:rail
setblock ^11 ^9 ^50 minecraft:rail
setblock ^11 ^9 ^49 minecraft:rail
setblock ^11 ^9 ^48 minecraft:golden_rail
setblock ^11 ^9 ^47 minecraft:rail
setblock ^11 ^9 ^46 minecraft:rail
setblock ^11 ^9 ^45 minecraft:rail
setblock ^11 ^10 ^44 minecraft:golden_rail
setblock ^11 ^11 ^43 minecraft:rail
setblock ^11 ^12 ^42 minecraft:golden_rail
setblock ^11 ^13 ^41 minecraft:rail
setblock ^11 ^14 ^40 minecraft:golden_rail
setblock ^11 ^15 ^39 minecraft:rail
setblock ^11 ^16 ^38 minecraft:golden_rail
setblock ^11 ^17 ^37 minecraft:rail
setblock ^11 ^18 ^36 minecraft:golden_rail
setblock ^11 ^18 ^35 minecraft:rail
setblock ^11 ^17 ^34 minecraft:rail
setblock ^11 ^16 ^33 minecraft:rail
setblock ^11 ^15 ^32 minecraft:rail
setblock ^11 ^14 ^31 minecraft:rail
setblock ^11 ^13 ^30 minecraft:rail
setblock ^11 ^12 ^29 minecraft:rail
setblock ^11 ^11 ^28 minecraft:rail
setblock ^11 ^10 ^27 minecraft:rail
setblock ^11 ^9 ^26 minecraft:rail
setblock ^11 ^9 ^25 minecraft:golden_rail
setblock ^11 ^9 ^24 minecraft:rail
setblock ^11 ^9 ^23 minecraft:rail
setblock ^11 ^9 ^22 minecraft:rail
setblock ^11 ^9 ^21 minecraft:rail
setblock ^11 ^9 ^20 minecraft:golden_rail
setblock ^11 ^9 ^19 minecraft:rail
setblock ^11 ^9 ^18 minecraft:rail
setblock ^11 ^9 ^17 minecraft:rail
setblock ^11 ^9 ^16 minecraft:rail
setblock ^11 ^9 ^15 minecraft:golden_rail
setblock ^11 ^9 ^14 minecraft:rail
setblock ^11 ^10 ^13 minecraft:golden_rail
setblock ^11 ^11 ^12 minecraft:rail
setblock ^11 ^12 ^11 minecraft:golden_rail
setblock ^11 ^13 ^10 minecraft:rail
setblock ^11 ^14 ^9 minecraft:golden_rail
setblock ^11 ^15 ^8 minecraft:rail
setblock ^11 ^16 ^7 minecraft:golden_rail
setblock ^11 ^15 ^6 minecraft:rail
setblock ^11 ^14 ^5 minecraft:rail
setblock ^11 ^13 ^4 minecraft:rail
setblock ^11 ^12 ^3 minecraft:rail
setblock ^11 ^11 ^2 minecraft:rail
setblock ^11 ^10 ^1 minecraft:rail
setblock ^11 ^9 ^ minecraft:rail
setblock ^11 ^8 ^-1 minecraft:rail
setblock ^11 ^7 ^-2 minecraft:rail
setblock ^11 ^6 ^-3 minecraft:rail
setblock ^11 ^5 ^-4 minecraft:rail
setblock ^11 ^4 ^-5 minecraft:rail
setblock ^11 ^4 ^-6 minecraft:golden_rail
setblock ^11 ^4 ^-7 minecraft:rail
setblock ^11 ^4 ^-8 minecraft:rail
setblock ^11 ^4 ^-9 minecraft:golden_rail
setblock ^11 ^4 ^-10 minecraft:rail
setblock ^11 ^4 ^-11 minecraft:rail
setblock ^11 ^4 ^-12 minecraft:rail
setblock ^10 ^4 ^-12 minecraft:golden_rail
setblock ^9 ^4 ^-12 minecraft:golden_rail
setblock ^8 ^4 ^-12 minecraft:golden_rail
setblock ^7 ^4 ^-12 minecraft:golden_rail
setblock ^6 ^4 ^-12 minecraft:golden_rail
setblock ^5 ^4 ^-12 minecraft:golden_rail
setblock ^4 ^4 ^-12 minecraft:golden_rail
setblock ^3 ^4 ^-12 minecraft:golden_rail
setblock ^2 ^4 ^-12 minecraft:golden_rail
setblock ^1 ^4 ^-12 minecraft:golden_rail
setblock ^ ^4 ^-12 minecraft:rail
setblock ^ ^4 ^-11 minecraft:rail
setblock ^ ^4 ^-10 minecraft:rail

# === TRACK-SIDE LIGHTING AND THEMING ===
setblock ^-2 ^40 ^51 minecraft:sea_lantern
setblock ^-2 ^40 ^56 minecraft:sea_lantern
setblock ^29 ^10 ^54 minecraft:sea_lantern
setblock ^33 ^10 ^48 minecraft:sea_lantern
setblock ^29 ^22 ^29 minecraft:sea_lantern
setblock ^-29 ^22 ^29 minecraft:sea_lantern
setblock ^-29 ^10 ^48 minecraft:sea_lantern
setblock ^-33 ^10 ^57 minecraft:sea_lantern
setblock ^-13 ^20 ^63 minecraft:sea_lantern
setblock ^13 ^19 ^35 minecraft:sea_lantern
setblock ^13 ^17 ^7 minecraft:sea_lantern
fill ^6 ^ ^54 ^6 ^32 ^54 minecraft:red_concrete
setblock ^6 ^33 ^54 minecraft:shroomlight
setblock ^6 ^34 ^54 minecraft:orange_concrete
fill ^12 ^ ^54 ^12 ^26 ^54 minecraft:red_concrete
setblock ^12 ^27 ^54 minecraft:shroomlight
setblock ^12 ^28 ^54 minecraft:orange_concrete
fill ^18 ^ ^54 ^18 ^20 ^54 minecraft:red_concrete
setblock ^18 ^21 ^54 minecraft:shroomlight
setblock ^18 ^22 ^54 minecraft:orange_concrete
fill ^24 ^ ^54 ^24 ^14 ^54 minecraft:red_concrete
setblock ^24 ^15 ^54 minecraft:shroomlight
setblock ^24 ^16 ^54 minecraft:orange_concrete

# === LANDSCAPING, PARK FENCE, AND LAMPS ===
fill ^-22 ^ ^-8 ^-22 ^5 ^-8 minecraft:oak_log
fill ^-24 ^4 ^-10 ^-20 ^6 ^-6 minecraft:oak_leaves
fill ^-23 ^7 ^-9 ^-21 ^7 ^-7 minecraft:oak_leaves
fill ^-26 ^ ^2 ^-26 ^5 ^2 minecraft:oak_log
fill ^-28 ^4 ^ ^-24 ^6 ^4 minecraft:oak_leaves
fill ^-27 ^7 ^1 ^-25 ^7 ^3 minecraft:oak_leaves
fill ^-38 ^ ^18 ^-38 ^5 ^18 minecraft:oak_log
fill ^-40 ^4 ^16 ^-36 ^6 ^20 minecraft:oak_leaves
fill ^-39 ^7 ^17 ^-37 ^7 ^19 minecraft:oak_leaves
fill ^-38 ^ ^33 ^-38 ^5 ^33 minecraft:oak_log
fill ^-40 ^4 ^31 ^-36 ^6 ^35 minecraft:oak_leaves
fill ^-39 ^7 ^32 ^-37 ^7 ^34 minecraft:oak_leaves
fill ^-21 ^ ^31 ^-21 ^5 ^31 minecraft:oak_log
fill ^-23 ^4 ^29 ^-19 ^6 ^33 minecraft:oak_leaves
fill ^-22 ^7 ^30 ^-20 ^7 ^32 minecraft:oak_leaves
fill ^-18 ^ ^50 ^-18 ^5 ^50 minecraft:oak_log
fill ^-20 ^4 ^48 ^-16 ^6 ^52 minecraft:oak_leaves
fill ^-19 ^7 ^49 ^-17 ^7 ^51 minecraft:oak_leaves
fill ^20 ^ ^28 ^20 ^5 ^28 minecraft:oak_log
fill ^18 ^4 ^26 ^22 ^6 ^30 minecraft:oak_leaves
fill ^19 ^7 ^27 ^21 ^7 ^29 minecraft:oak_leaves
fill ^39 ^ ^18 ^39 ^5 ^18 minecraft:oak_log
fill ^37 ^4 ^16 ^41 ^6 ^20 minecraft:oak_leaves
fill ^38 ^7 ^17 ^40 ^7 ^19 minecraft:oak_leaves
fill ^40 ^ ^35 ^40 ^5 ^35 minecraft:oak_log
fill ^38 ^4 ^33 ^42 ^6 ^37 minecraft:oak_leaves
fill ^39 ^7 ^34 ^41 ^7 ^36 minecraft:oak_leaves
fill ^39 ^ ^65 ^39 ^5 ^65 minecraft:oak_log
fill ^37 ^4 ^63 ^41 ^6 ^67 minecraft:oak_leaves
fill ^38 ^7 ^64 ^40 ^7 ^66 minecraft:oak_leaves
fill ^22 ^ ^67 ^22 ^5 ^67 minecraft:oak_log
fill ^20 ^4 ^65 ^24 ^6 ^69 minecraft:oak_leaves
fill ^21 ^7 ^66 ^23 ^7 ^68 minecraft:oak_leaves
fill ^-17 ^ ^68 ^-17 ^5 ^68 minecraft:oak_log
fill ^-19 ^4 ^66 ^-15 ^6 ^70 minecraft:oak_leaves
fill ^-18 ^7 ^67 ^-16 ^7 ^69 minecraft:oak_leaves
fill ^-10 ^ ^-13 ^-10 ^4 ^-13 minecraft:polished_blackstone_brick_wall
setblock ^-10 ^5 ^-13 minecraft:sea_lantern
fill ^10 ^ ^-13 ^10 ^4 ^-13 minecraft:polished_blackstone_brick_wall
setblock ^10 ^5 ^-13 minecraft:sea_lantern
fill ^-20 ^ ^20 ^-20 ^4 ^20 minecraft:polished_blackstone_brick_wall
setblock ^-20 ^5 ^20 minecraft:sea_lantern
fill ^-20 ^ ^40 ^-20 ^4 ^40 minecraft:polished_blackstone_brick_wall
setblock ^-20 ^5 ^40 minecraft:sea_lantern
fill ^-20 ^ ^62 ^-20 ^4 ^62 minecraft:polished_blackstone_brick_wall
setblock ^-20 ^5 ^62 minecraft:sea_lantern
fill ^20 ^ ^20 ^20 ^4 ^20 minecraft:polished_blackstone_brick_wall
setblock ^20 ^5 ^20 minecraft:sea_lantern
fill ^20 ^ ^40 ^20 ^4 ^40 minecraft:polished_blackstone_brick_wall
setblock ^20 ^5 ^40 minecraft:sea_lantern
fill ^20 ^ ^64 ^20 ^4 ^64 minecraft:polished_blackstone_brick_wall
setblock ^20 ^5 ^64 minecraft:sea_lantern
fill ^-38 ^ ^10 ^-38 ^4 ^10 minecraft:polished_blackstone_brick_wall
setblock ^-38 ^5 ^10 minecraft:sea_lantern
fill ^38 ^ ^10 ^38 ^4 ^10 minecraft:polished_blackstone_brick_wall
setblock ^38 ^5 ^10 minecraft:sea_lantern
fill ^-38 ^ ^65 ^-38 ^4 ^65 minecraft:polished_blackstone_brick_wall
setblock ^-38 ^5 ^65 minecraft:sea_lantern
fill ^38 ^ ^65 ^38 ^4 ^65 minecraft:polished_blackstone_brick_wall
setblock ^38 ^5 ^65 minecraft:sea_lantern
fill ^-41 ^ ^-12 ^-41 ^1 ^69 minecraft:polished_blackstone_brick_wall
fill ^41 ^ ^-12 ^41 ^1 ^69 minecraft:polished_blackstone_brick_wall
fill ^-41 ^ ^69 ^41 ^1 ^69 minecraft:polished_blackstone_brick_wall
fill ^-41 ^ ^-12 ^-19 ^1 ^-12 minecraft:polished_blackstone_brick_wall
fill ^19 ^ ^-12 ^41 ^1 ^-12 minecraft:polished_blackstone_brick_wall
setblock ^-41 ^2 ^-12 minecraft:sea_lantern
setblock ^41 ^2 ^-12 minecraft:sea_lantern
setblock ^-41 ^2 ^69 minecraft:sea_lantern
setblock ^41 ^2 ^69 minecraft:sea_lantern

# === FINISH ===
# Place a minecart on the station rail near ^ ^4 ^ and board from either platform.
# If carts slow on the long circuit, add more redstone blocks beneath selected straight powered rails.
say [Skyfire] build_complete
