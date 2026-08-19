# GRAND INDOOR SWIMMING POOL / AQUATIC CENTER - Minecraft Bedrock Edition
# Stand at ground level at the CENTER of the building, then run this function.
# Main public entrance faces NEGATIVE Z.
# Uses relative ~ coordinates, so it can be placed anywhere without relying on player facing.
# Approximate footprint: 118 x 96 blocks. Approximate height: 28 blocks.
# This function builds a static indoor aquatic-center attraction.

# === SITE FOUNDATION & EXTERIOR APRON ===
fill ~-59 ~-3 ~-48 ~59 ~-3 ~48 minecraft:stone
fill ~-57 ~-2 ~-46 ~57 ~-2 ~46 minecraft:stone_bricks
fill ~-55 ~-1 ~-44 ~55 ~-1 ~44 minecraft:smooth_stone
fill ~-20 ~-1 ~-48 ~20 ~-1 ~-38 minecraft:polished_andesite
fill ~-4 ~-1 ~-48 ~4 ~-1 ~-36 minecraft:light_blue_concrete

# === MAIN BUILDING SHELL ===
fill ~-52 ~ ~-40 ~52 ~ ~40 minecraft:smooth_quartz
fill ~-52 ~1 ~-40 ~52 ~18 ~-40 minecraft:white_concrete
fill ~-52 ~1 ~40 ~52 ~18 ~40 minecraft:white_concrete
fill ~-52 ~1 ~-40 ~-52 ~18 ~40 minecraft:white_concrete
fill ~52 ~1 ~-40 ~52 ~18 ~40 minecraft:white_concrete
fill ~-42 ~6 ~-41 ~42 ~14 ~-41 minecraft:glass
fill ~-42 ~6 ~41 ~42 ~14 ~41 minecraft:glass
fill ~-53 ~6 ~-30 ~-53 ~14 ~30 minecraft:glass
fill ~53 ~6 ~-30 ~53 ~14 ~30 minecraft:glass
fill ~-54 ~19 ~-42 ~54 ~20 ~-40 minecraft:cyan_concrete
fill ~-54 ~19 ~40 ~54 ~20 ~42 minecraft:cyan_concrete
fill ~-54 ~19 ~-40 ~-52 ~20 ~40 minecraft:cyan_concrete
fill ~52 ~19 ~-40 ~54 ~20 ~40 minecraft:cyan_concrete

# === ROOF, TRUSSES & SKYLIGHTS ===
fill ~-52 ~21 ~-40 ~-34 ~21 ~40 minecraft:smooth_quartz
fill ~-28 ~21 ~-40 ~-10 ~21 ~40 minecraft:smooth_quartz
fill ~-4 ~21 ~-40 ~14 ~21 ~40 minecraft:smooth_quartz
fill ~20 ~21 ~-40 ~38 ~21 ~40 minecraft:smooth_quartz
fill ~44 ~21 ~-40 ~52 ~21 ~40 minecraft:smooth_quartz
fill ~-33 ~21 ~-34 ~-29 ~21 ~34 minecraft:glass
fill ~-9 ~21 ~-34 ~-5 ~21 ~34 minecraft:glass
fill ~15 ~21 ~-34 ~19 ~21 ~34 minecraft:glass
fill ~39 ~21 ~-34 ~43 ~21 ~34 minecraft:glass
fill ~-48 ~18 ~-38 ~-48 ~20 ~38 minecraft:iron_block
fill ~-36 ~18 ~-38 ~-36 ~20 ~38 minecraft:iron_block
fill ~-24 ~18 ~-38 ~-24 ~20 ~38 minecraft:iron_block
fill ~-12 ~18 ~-38 ~-12 ~20 ~38 minecraft:iron_block
fill ~ ~18 ~-38 ~ ~20 ~38 minecraft:iron_block
fill ~12 ~18 ~-38 ~12 ~20 ~38 minecraft:iron_block
fill ~24 ~18 ~-38 ~24 ~20 ~38 minecraft:iron_block
fill ~36 ~18 ~-38 ~36 ~20 ~38 minecraft:iron_block
fill ~48 ~18 ~-38 ~48 ~20 ~38 minecraft:iron_block
setblock ~-42 ~17 ~-30 minecraft:chain
setblock ~-42 ~16 ~-30 minecraft:sea_lantern
setblock ~-42 ~17 ~-15 minecraft:chain
setblock ~-42 ~16 ~-15 minecraft:sea_lantern
setblock ~-42 ~17 ~ minecraft:chain
setblock ~-42 ~16 ~ minecraft:sea_lantern
setblock ~-42 ~17 ~15 minecraft:chain
setblock ~-42 ~16 ~15 minecraft:sea_lantern
setblock ~-42 ~17 ~30 minecraft:chain
setblock ~-42 ~16 ~30 minecraft:sea_lantern
setblock ~-28 ~17 ~-30 minecraft:chain
setblock ~-28 ~16 ~-30 minecraft:sea_lantern
setblock ~-28 ~17 ~-15 minecraft:chain
setblock ~-28 ~16 ~-15 minecraft:sea_lantern
setblock ~-28 ~17 ~ minecraft:chain
setblock ~-28 ~16 ~ minecraft:sea_lantern
setblock ~-28 ~17 ~15 minecraft:chain
setblock ~-28 ~16 ~15 minecraft:sea_lantern
setblock ~-28 ~17 ~30 minecraft:chain
setblock ~-28 ~16 ~30 minecraft:sea_lantern
setblock ~-14 ~17 ~-30 minecraft:chain
setblock ~-14 ~16 ~-30 minecraft:sea_lantern
setblock ~-14 ~17 ~-15 minecraft:chain
setblock ~-14 ~16 ~-15 minecraft:sea_lantern
setblock ~-14 ~17 ~ minecraft:chain
setblock ~-14 ~16 ~ minecraft:sea_lantern
setblock ~-14 ~17 ~15 minecraft:chain
setblock ~-14 ~16 ~15 minecraft:sea_lantern
setblock ~-14 ~17 ~30 minecraft:chain
setblock ~-14 ~16 ~30 minecraft:sea_lantern
setblock ~ ~17 ~-30 minecraft:chain
setblock ~ ~16 ~-30 minecraft:sea_lantern
setblock ~ ~17 ~-15 minecraft:chain
setblock ~ ~16 ~-15 minecraft:sea_lantern
setblock ~ ~17 ~ minecraft:chain
setblock ~ ~16 ~ minecraft:sea_lantern
setblock ~ ~17 ~15 minecraft:chain
setblock ~ ~16 ~15 minecraft:sea_lantern
setblock ~ ~17 ~30 minecraft:chain
setblock ~ ~16 ~30 minecraft:sea_lantern
setblock ~14 ~17 ~-30 minecraft:chain
setblock ~14 ~16 ~-30 minecraft:sea_lantern
setblock ~14 ~17 ~-15 minecraft:chain
setblock ~14 ~16 ~-15 minecraft:sea_lantern
setblock ~14 ~17 ~ minecraft:chain
setblock ~14 ~16 ~ minecraft:sea_lantern
setblock ~14 ~17 ~15 minecraft:chain
setblock ~14 ~16 ~15 minecraft:sea_lantern
setblock ~14 ~17 ~30 minecraft:chain
setblock ~14 ~16 ~30 minecraft:sea_lantern
setblock ~28 ~17 ~-30 minecraft:chain
setblock ~28 ~16 ~-30 minecraft:sea_lantern
setblock ~28 ~17 ~-15 minecraft:chain
setblock ~28 ~16 ~-15 minecraft:sea_lantern
setblock ~28 ~17 ~ minecraft:chain
setblock ~28 ~16 ~ minecraft:sea_lantern
setblock ~28 ~17 ~15 minecraft:chain
setblock ~28 ~16 ~15 minecraft:sea_lantern
setblock ~28 ~17 ~30 minecraft:chain
setblock ~28 ~16 ~30 minecraft:sea_lantern
setblock ~42 ~17 ~-30 minecraft:chain
setblock ~42 ~16 ~-30 minecraft:sea_lantern
setblock ~42 ~17 ~-15 minecraft:chain
setblock ~42 ~16 ~-15 minecraft:sea_lantern
setblock ~42 ~17 ~ minecraft:chain
setblock ~42 ~16 ~ minecraft:sea_lantern
setblock ~42 ~17 ~15 minecraft:chain
setblock ~42 ~16 ~15 minecraft:sea_lantern
setblock ~42 ~17 ~30 minecraft:chain
setblock ~42 ~16 ~30 minecraft:sea_lantern

# === GLASS ENTRANCE ATRIUM ===
fill ~-18 ~1 ~-44 ~18 ~15 ~-44 minecraft:glass
fill ~-18 ~1 ~-44 ~-18 ~15 ~-34 minecraft:glass
fill ~18 ~1 ~-44 ~18 ~15 ~-34 minecraft:glass
fill ~-18 ~15 ~-44 ~18 ~16 ~-34 minecraft:smooth_quartz
fill ~-5 ~1 ~-45 ~5 ~6 ~-45 minecraft:glass
fill ~-4 ~1 ~-46 ~4 ~5 ~-46 minecraft:air
fill ~-10 ~7 ~-47 ~10 ~8 ~-42 minecraft:cyan_concrete
setblock ~-8 ~7 ~-48 minecraft:sea_lantern
setblock ~-4 ~7 ~-48 minecraft:sea_lantern
setblock ~ ~7 ~-48 minecraft:sea_lantern
setblock ~4 ~7 ~-48 minecraft:sea_lantern
setblock ~8 ~7 ~-48 minecraft:sea_lantern

# === RECEPTION / TICKETING ===
fill ~-14 ~1 ~-34 ~-2 ~2 ~-30 minecraft:quartz_block
fill ~-13 ~3 ~-34 ~-3 ~4 ~-34 minecraft:light_blue_concrete
setblock ~-12 ~5 ~-34 minecraft:sea_lantern
setblock ~-8 ~5 ~-34 minecraft:sea_lantern
setblock ~-4 ~5 ~-34 minecraft:sea_lantern

# === 50M-STYLE COMPETITION POOL ===
fill ~-42 ~-1 ~-22 ~10 ~-1 ~18 minecraft:stone_bricks
fill ~-40 ~-2 ~-20 ~8 ~-2 ~16 minecraft:prismarine
fill ~-39 ~-3 ~-19 ~7 ~-3 ~15 minecraft:dark_prismarine
fill ~-39 ~-2 ~-19 ~7 ~-1 ~15 minecraft:water
fill ~-44 ~ ~-24 ~12 ~ ~-22 minecraft:light_blue_concrete
fill ~-44 ~ ~18 ~12 ~ ~20 minecraft:light_blue_concrete
fill ~-44 ~ ~-22 ~-42 ~ ~18 minecraft:light_blue_concrete
fill ~10 ~ ~-22 ~12 ~ ~18 minecraft:light_blue_concrete
fill ~-38 ~ ~-17 ~6 ~ ~-17 minecraft:red_wool
fill ~-38 ~ ~-13 ~6 ~ ~-13 minecraft:yellow_wool
fill ~-38 ~ ~-9 ~6 ~ ~-9 minecraft:blue_wool
fill ~-38 ~ ~-5 ~6 ~ ~-5 minecraft:white_wool
fill ~-38 ~ ~-1 ~6 ~ ~-1 minecraft:white_wool
fill ~-38 ~ ~3 ~6 ~ ~3 minecraft:blue_wool
fill ~-38 ~ ~7 ~6 ~ ~7 minecraft:yellow_wool
fill ~-38 ~ ~11 ~6 ~ ~11 minecraft:red_wool
fill ~-35 ~-3 ~-15 ~-2 ~-3 ~-15 minecraft:black_concrete
fill ~-38 ~-3 ~-16 ~-35 ~-3 ~-14 minecraft:black_concrete
fill ~-35 ~-3 ~-11 ~-2 ~-3 ~-11 minecraft:black_concrete
fill ~-38 ~-3 ~-12 ~-35 ~-3 ~-10 minecraft:black_concrete
fill ~-35 ~-3 ~-7 ~-2 ~-3 ~-7 minecraft:black_concrete
fill ~-38 ~-3 ~-8 ~-35 ~-3 ~-6 minecraft:black_concrete
fill ~-35 ~-3 ~-3 ~-2 ~-3 ~-3 minecraft:black_concrete
fill ~-38 ~-3 ~-4 ~-35 ~-3 ~-2 minecraft:black_concrete
fill ~-35 ~-3 ~1 ~-2 ~-3 ~1 minecraft:black_concrete
fill ~-38 ~-3 ~ ~-35 ~-3 ~2 minecraft:black_concrete
fill ~-35 ~-3 ~5 ~-2 ~-3 ~5 minecraft:black_concrete
fill ~-38 ~-3 ~4 ~-35 ~-3 ~6 minecraft:black_concrete
fill ~-35 ~-3 ~9 ~-2 ~-3 ~9 minecraft:black_concrete
fill ~-38 ~-3 ~8 ~-35 ~-3 ~10 minecraft:black_concrete
fill ~-35 ~-3 ~13 ~-2 ~-3 ~13 minecraft:black_concrete
fill ~-38 ~-3 ~12 ~-35 ~-3 ~14 minecraft:black_concrete

# === STARTING BLOCKS ===
fill ~-43 ~1 ~-16 ~-41 ~2 ~-14 minecraft:smooth_quartz
fill ~-42 ~3 ~-16 ~-41 ~3 ~-14 minecraft:iron_block
setblock ~-41 ~4 ~-15 minecraft:sea_lantern
fill ~-43 ~1 ~-12 ~-41 ~2 ~-10 minecraft:smooth_quartz
fill ~-42 ~3 ~-12 ~-41 ~3 ~-10 minecraft:iron_block
setblock ~-41 ~4 ~-11 minecraft:sea_lantern
fill ~-43 ~1 ~-8 ~-41 ~2 ~-6 minecraft:smooth_quartz
fill ~-42 ~3 ~-8 ~-41 ~3 ~-6 minecraft:iron_block
setblock ~-41 ~4 ~-7 minecraft:sea_lantern
fill ~-43 ~1 ~-4 ~-41 ~2 ~-2 minecraft:smooth_quartz
fill ~-42 ~3 ~-4 ~-41 ~3 ~-2 minecraft:iron_block
setblock ~-41 ~4 ~-3 minecraft:sea_lantern
fill ~-43 ~1 ~ ~-41 ~2 ~2 minecraft:smooth_quartz
fill ~-42 ~3 ~ ~-41 ~3 ~2 minecraft:iron_block
setblock ~-41 ~4 ~1 minecraft:sea_lantern
fill ~-43 ~1 ~4 ~-41 ~2 ~6 minecraft:smooth_quartz
fill ~-42 ~3 ~4 ~-41 ~3 ~6 minecraft:iron_block
setblock ~-41 ~4 ~5 minecraft:sea_lantern
fill ~-43 ~1 ~8 ~-41 ~2 ~10 minecraft:smooth_quartz
fill ~-42 ~3 ~8 ~-41 ~3 ~10 minecraft:iron_block
setblock ~-41 ~4 ~9 minecraft:sea_lantern
fill ~-43 ~1 ~12 ~-41 ~2 ~14 minecraft:smooth_quartz
fill ~-42 ~3 ~12 ~-41 ~3 ~14 minecraft:iron_block
setblock ~-41 ~4 ~13 minecraft:sea_lantern

# === SCOREBOARD WALL ===
fill ~-50 ~5 ~-8 ~-49 ~13 ~8 minecraft:black_concrete
setblock ~-48 ~7 ~-5 minecraft:sea_lantern
setblock ~-48 ~7 ~ minecraft:sea_lantern
setblock ~-48 ~7 ~5 minecraft:sea_lantern
setblock ~-48 ~10 ~-5 minecraft:sea_lantern
setblock ~-48 ~10 ~ minecraft:sea_lantern
setblock ~-48 ~10 ~5 minecraft:sea_lantern
fill ~-48 ~4 ~-10 ~-48 ~14 ~10 minecraft:iron_block

# === DEEP DIVING WELL ===
fill ~18 ~-1 ~-22 ~42 ~-1 ~2 minecraft:stone_bricks
fill ~20 ~-5 ~-20 ~40 ~-2 ~ minecraft:prismarine
fill ~21 ~-6 ~-19 ~39 ~-6 ~-1 minecraft:dark_prismarine
fill ~21 ~-5 ~-19 ~39 ~-1 ~-1 minecraft:water
fill ~16 ~ ~-24 ~44 ~ ~-22 minecraft:cyan_concrete
fill ~16 ~ ~2 ~44 ~ ~4 minecraft:cyan_concrete
fill ~16 ~ ~-22 ~18 ~ ~2 minecraft:cyan_concrete
fill ~42 ~ ~-22 ~44 ~ ~2 minecraft:cyan_concrete
fill ~24 ~1 ~-17 ~24 ~6 ~-17 minecraft:quartz_pillar
fill ~22 ~6 ~-18 ~28 ~6 ~-16 minecraft:smooth_quartz
setblock ~27 ~7 ~-17 minecraft:sea_lantern
fill ~30 ~1 ~-17 ~30 ~10 ~-17 minecraft:quartz_pillar
fill ~28 ~10 ~-18 ~34 ~10 ~-16 minecraft:smooth_quartz
setblock ~33 ~11 ~-17 minecraft:sea_lantern
fill ~36 ~1 ~-17 ~36 ~14 ~-17 minecraft:quartz_pillar
fill ~34 ~14 ~-18 ~40 ~14 ~-16 minecraft:smooth_quartz
setblock ~39 ~15 ~-17 minecraft:sea_lantern
fill ~22 ~7 ~-18 ~28 ~7 ~-18 minecraft:iron_bars
fill ~22 ~7 ~-16 ~28 ~7 ~-16 minecraft:iron_bars
fill ~28 ~11 ~-18 ~34 ~11 ~-18 minecraft:iron_bars
fill ~28 ~11 ~-16 ~34 ~11 ~-16 minecraft:iron_bars
fill ~34 ~15 ~-18 ~40 ~15 ~-18 minecraft:iron_bars
fill ~34 ~15 ~-16 ~40 ~15 ~-16 minecraft:iron_bars

# === LEISURE / FAMILY POOL ===
fill ~18 ~-1 ~9 ~44 ~-1 ~31 minecraft:stone_bricks
fill ~20 ~-2 ~11 ~42 ~-2 ~29 minecraft:prismarine
fill ~22 ~-2 ~13 ~40 ~-1 ~27 minecraft:water
fill ~16 ~-1 ~15 ~20 ~-1 ~25 minecraft:stone_bricks
fill ~42 ~-1 ~15 ~46 ~-1 ~25 minecraft:stone_bricks
fill ~18 ~-2 ~17 ~22 ~-1 ~23 minecraft:water
fill ~40 ~-2 ~17 ~44 ~-1 ~23 minecraft:water
fill ~16 ~ ~8 ~46 ~ ~10 minecraft:yellow_concrete
fill ~16 ~ ~30 ~46 ~ ~32 minecraft:yellow_concrete
fill ~16 ~ ~10 ~18 ~ ~30 minecraft:yellow_concrete
fill ~44 ~ ~10 ~46 ~ ~30 minecraft:yellow_concrete

# === SPLASH FOUNTAIN ===
fill ~31 ~ ~20 ~31 ~5 ~20 minecraft:quartz_pillar
fill ~27 ~6 ~16 ~35 ~6 ~24 minecraft:red_concrete
fill ~28 ~7 ~17 ~34 ~7 ~23 minecraft:white_concrete
setblock ~31 ~8 ~20 minecraft:sea_lantern
setblock ~28 ~5 ~16 minecraft:water
setblock ~28 ~5 ~24 minecraft:water
setblock ~29 ~5 ~16 minecraft:water
setblock ~29 ~5 ~24 minecraft:water
setblock ~30 ~5 ~16 minecraft:water
setblock ~30 ~5 ~24 minecraft:water
setblock ~31 ~5 ~16 minecraft:water
setblock ~31 ~5 ~24 minecraft:water
setblock ~32 ~5 ~16 minecraft:water
setblock ~32 ~5 ~24 minecraft:water
setblock ~33 ~5 ~16 minecraft:water
setblock ~33 ~5 ~24 minecraft:water
setblock ~34 ~5 ~16 minecraft:water
setblock ~34 ~5 ~24 minecraft:water
setblock ~27 ~5 ~17 minecraft:water
setblock ~35 ~5 ~17 minecraft:water
setblock ~27 ~5 ~18 minecraft:water
setblock ~35 ~5 ~18 minecraft:water
setblock ~27 ~5 ~19 minecraft:water
setblock ~35 ~5 ~19 minecraft:water
setblock ~27 ~5 ~20 minecraft:water
setblock ~35 ~5 ~20 minecraft:water
setblock ~27 ~5 ~21 minecraft:water
setblock ~35 ~5 ~21 minecraft:water
setblock ~27 ~5 ~22 minecraft:water
setblock ~35 ~5 ~22 minecraft:water
setblock ~27 ~5 ~23 minecraft:water
setblock ~35 ~5 ~23 minecraft:water

# === INDOOR WATERSLIDE TOWER ===
fill ~45 ~1 ~18 ~49 ~17 ~22 minecraft:quartz_pillar
fill ~42 ~4 ~16 ~49 ~4 ~20 minecraft:smooth_quartz
fill ~42 ~5 ~16 ~42 ~6 ~20 minecraft:iron_bars
fill ~42 ~8 ~18 ~49 ~8 ~22 minecraft:smooth_quartz
fill ~42 ~9 ~18 ~42 ~10 ~22 minecraft:iron_bars
fill ~42 ~12 ~16 ~49 ~12 ~20 minecraft:smooth_quartz
fill ~42 ~13 ~16 ~42 ~14 ~20 minecraft:iron_bars
fill ~42 ~16 ~18 ~49 ~16 ~22 minecraft:smooth_quartz
fill ~42 ~17 ~18 ~42 ~18 ~22 minecraft:iron_bars
setblock ~46 ~16 ~22 minecraft:blue_concrete
setblock ~45 ~16 ~23 minecraft:blue_concrete
setblock ~44 ~15 ~24 minecraft:blue_concrete
setblock ~44 ~15 ~24 minecraft:blue_concrete
setblock ~43 ~14 ~25 minecraft:blue_concrete
setblock ~42 ~14 ~26 minecraft:blue_concrete
setblock ~42 ~14 ~26 minecraft:blue_concrete
setblock ~41 ~14 ~27 minecraft:blue_concrete
setblock ~40 ~13 ~28 minecraft:blue_concrete
setblock ~40 ~13 ~28 minecraft:blue_concrete
setblock ~39 ~12 ~29 minecraft:blue_concrete
setblock ~38 ~12 ~30 minecraft:blue_concrete
setblock ~38 ~12 ~30 minecraft:blue_concrete
setblock ~37 ~12 ~31 minecraft:blue_concrete
setblock ~36 ~11 ~32 minecraft:blue_concrete
setblock ~36 ~11 ~32 minecraft:blue_concrete
setblock ~35 ~10 ~33 minecraft:blue_concrete
setblock ~34 ~10 ~34 minecraft:blue_concrete
setblock ~34 ~10 ~34 minecraft:blue_concrete
setblock ~33 ~10 ~34 minecraft:blue_concrete
setblock ~32 ~9 ~34 minecraft:blue_concrete
setblock ~32 ~9 ~34 minecraft:blue_concrete
setblock ~31 ~8 ~34 minecraft:blue_concrete
setblock ~30 ~8 ~33 minecraft:blue_concrete
setblock ~30 ~8 ~33 minecraft:blue_concrete
setblock ~29 ~8 ~32 minecraft:blue_concrete
setblock ~28 ~7 ~31 minecraft:blue_concrete
setblock ~28 ~7 ~31 minecraft:blue_concrete
setblock ~28 ~6 ~30 minecraft:blue_concrete
setblock ~27 ~6 ~29 minecraft:blue_concrete
setblock ~27 ~6 ~29 minecraft:blue_concrete
setblock ~28 ~6 ~28 minecraft:blue_concrete
setblock ~28 ~5 ~27 minecraft:blue_concrete
setblock ~28 ~5 ~27 minecraft:blue_concrete
setblock ~29 ~4 ~26 minecraft:blue_concrete
setblock ~30 ~4 ~26 minecraft:blue_concrete
setblock ~30 ~4 ~26 minecraft:blue_concrete
setblock ~31 ~4 ~26 minecraft:blue_concrete
setblock ~32 ~3 ~26 minecraft:blue_concrete
setblock ~32 ~3 ~26 minecraft:blue_concrete
setblock ~33 ~2 ~26 minecraft:blue_concrete
setblock ~34 ~2 ~27 minecraft:blue_concrete
setblock ~46 ~17 ~22 minecraft:glass
setblock ~44 ~16 ~24 minecraft:glass
setblock ~42 ~15 ~26 minecraft:glass
setblock ~40 ~14 ~28 minecraft:glass
setblock ~38 ~13 ~30 minecraft:glass
setblock ~36 ~12 ~32 minecraft:glass
setblock ~34 ~11 ~34 minecraft:glass
setblock ~32 ~10 ~34 minecraft:glass
setblock ~30 ~9 ~33 minecraft:glass
setblock ~28 ~8 ~31 minecraft:glass
setblock ~27 ~7 ~29 minecraft:glass
setblock ~28 ~6 ~27 minecraft:glass
setblock ~30 ~5 ~26 minecraft:glass
setblock ~32 ~4 ~26 minecraft:glass
setblock ~34 ~3 ~27 minecraft:glass

# === SPECTATOR GRANDSTAND ===
fill ~-44 ~1 ~22 ~10 ~1 ~23 minecraft:stone_bricks
fill ~-42 ~2 ~22 ~8 ~2 ~22 minecraft:blue_concrete
fill ~-44 ~2 ~24 ~10 ~2 ~25 minecraft:stone_bricks
fill ~-42 ~3 ~24 ~8 ~3 ~24 minecraft:blue_concrete
fill ~-44 ~3 ~26 ~10 ~3 ~27 minecraft:stone_bricks
fill ~-42 ~4 ~26 ~8 ~4 ~26 minecraft:blue_concrete
fill ~-44 ~4 ~28 ~10 ~4 ~29 minecraft:stone_bricks
fill ~-42 ~5 ~28 ~8 ~5 ~28 minecraft:blue_concrete
fill ~-44 ~5 ~30 ~10 ~5 ~31 minecraft:stone_bricks
fill ~-42 ~6 ~30 ~8 ~6 ~30 minecraft:blue_concrete
fill ~-44 ~6 ~32 ~10 ~6 ~33 minecraft:stone_bricks
fill ~-42 ~7 ~32 ~8 ~7 ~32 minecraft:blue_concrete
fill ~-44 ~7 ~34 ~10 ~7 ~35 minecraft:stone_bricks
fill ~-42 ~8 ~34 ~8 ~8 ~34 minecraft:blue_concrete
fill ~-44 ~8 ~36 ~10 ~8 ~37 minecraft:stone_bricks
fill ~-42 ~9 ~36 ~8 ~9 ~36 minecraft:blue_concrete
fill ~-30 ~1 ~22 ~-30 ~10 ~38 minecraft:smooth_quartz
fill ~-12 ~1 ~22 ~-12 ~10 ~38 minecraft:smooth_quartz
fill ~6 ~1 ~22 ~6 ~10 ~38 minecraft:smooth_quartz

# === CHANGING ROOMS ===
fill ~-48 ~1 ~24 ~-20 ~12 ~38 minecraft:white_concrete
fill ~-46 ~1 ~26 ~-22 ~10 ~36 minecraft:air
fill ~-34 ~1 ~26 ~-34 ~10 ~36 minecraft:light_gray_concrete
fill ~-42 ~1 ~23 ~-38 ~4 ~25 minecraft:air
fill ~-30 ~1 ~23 ~-26 ~4 ~25 minecraft:air
setblock ~-45 ~1 ~35 minecraft:iron_block
setblock ~-45 ~2 ~35 minecraft:iron_block
setblock ~-42 ~1 ~35 minecraft:iron_block
setblock ~-42 ~2 ~35 minecraft:iron_block
setblock ~-39 ~1 ~35 minecraft:iron_block
setblock ~-39 ~2 ~35 minecraft:iron_block
setblock ~-36 ~1 ~35 minecraft:iron_block
setblock ~-36 ~2 ~35 minecraft:iron_block
setblock ~-33 ~1 ~35 minecraft:iron_block
setblock ~-33 ~2 ~35 minecraft:iron_block
setblock ~-30 ~1 ~35 minecraft:iron_block
setblock ~-30 ~2 ~35 minecraft:iron_block
setblock ~-27 ~1 ~35 minecraft:iron_block
setblock ~-27 ~2 ~35 minecraft:iron_block
setblock ~-24 ~1 ~35 minecraft:iron_block
setblock ~-24 ~2 ~35 minecraft:iron_block
fill ~-44 ~1 ~29 ~-37 ~1 ~29 minecraft:oak_planks
fill ~-31 ~1 ~29 ~-24 ~1 ~29 minecraft:oak_planks

# === SHOWER AREA ===
fill ~-18 ~1 ~24 ~-8 ~10 ~38 minecraft:white_concrete
fill ~-16 ~1 ~26 ~-10 ~8 ~36 minecraft:air
setblock ~-15 ~6 ~28 minecraft:iron_bars
setblock ~-15 ~5 ~28 minecraft:water
setblock ~-15 ~6 ~32 minecraft:iron_bars
setblock ~-15 ~5 ~32 minecraft:water
setblock ~-15 ~6 ~36 minecraft:iron_bars
setblock ~-15 ~5 ~36 minecraft:water
fill ~-11 ~1 ~27 ~-11 ~3 ~37 minecraft:light_blue_concrete

# === LIFEGUARD & FIRST AID OFFICE ===
fill ~12 ~1 ~8 ~22 ~8 ~16 minecraft:white_concrete
fill ~13 ~2 ~9 ~21 ~7 ~15 minecraft:air
fill ~14 ~3 ~8 ~20 ~6 ~8 minecraft:glass
fill ~13 ~1 ~10 ~16 ~1 ~13 minecraft:red_concrete
setblock ~20 ~2 ~9 minecraft:sea_lantern
fill ~10 ~1 ~2 ~10 ~5 ~2 minecraft:quartz_pillar
fill ~8 ~6 ~1 ~12 ~6 ~3 minecraft:red_concrete

# === POOLSIDE CAFE ===
fill ~24 ~1 ~28 ~46 ~10 ~38 minecraft:white_concrete
fill ~26 ~2 ~30 ~44 ~8 ~36 minecraft:air
fill ~25 ~4 ~27 ~45 ~8 ~27 minecraft:glass
fill ~25 ~1 ~28 ~45 ~2 ~30 minecraft:oak_planks
fill ~29 ~1 ~33 ~29 ~2 ~33 minecraft:quartz_pillar
fill ~27 ~3 ~31 ~31 ~3 ~35 minecraft:smooth_quartz
setblock ~29 ~4 ~33 minecraft:flower_pot
fill ~35 ~1 ~33 ~35 ~2 ~33 minecraft:quartz_pillar
fill ~33 ~3 ~31 ~37 ~3 ~35 minecraft:smooth_quartz
setblock ~35 ~4 ~33 minecraft:flower_pot
fill ~41 ~1 ~33 ~41 ~2 ~33 minecraft:quartz_pillar
fill ~39 ~3 ~31 ~43 ~3 ~35 minecraft:smooth_quartz
setblock ~41 ~4 ~33 minecraft:flower_pot

# === FILTRATION / PLANT ROOM ===
fill ~-8 ~1 ~24 ~10 ~10 ~38 minecraft:light_gray_concrete
fill ~-6 ~2 ~26 ~8 ~8 ~36 minecraft:air
fill ~-4 ~2 ~28 ~-3 ~6 ~31 minecraft:iron_block
setblock ~-4 ~7 ~29 minecraft:redstone_lamp
fill ~ ~2 ~28 ~1 ~6 ~31 minecraft:iron_block
setblock ~ ~7 ~29 minecraft:redstone_lamp
fill ~4 ~2 ~28 ~5 ~6 ~31 minecraft:iron_block
setblock ~4 ~7 ~29 minecraft:redstone_lamp
fill ~-5 ~8 ~34 ~7 ~8 ~34 minecraft:copper_block
fill ~7 ~4 ~30 ~7 ~8 ~34 minecraft:copper_block

# === INTERNAL CORRIDORS & SAFETY RAILS ===
fill ~-18 ~ ~20 ~14 ~ ~22 minecraft:polished_andesite
fill ~12 ~ ~4 ~14 ~ ~22 minecraft:polished_andesite
fill ~-50 ~1 ~20 ~-8 ~1 ~20 minecraft:iron_bars
fill ~14 ~1 ~5 ~14 ~1 ~22 minecraft:iron_bars

# === POOL LADDERS ===
fill ~-34 ~ ~-20 ~-34 ~3 ~-20 minecraft:iron_bars
fill ~-20 ~ ~-20 ~-20 ~3 ~-20 minecraft:iron_bars
fill ~-6 ~ ~-20 ~-6 ~3 ~-20 minecraft:iron_bars
fill ~6 ~ ~-20 ~6 ~3 ~-20 minecraft:iron_bars
fill ~-34 ~ ~16 ~-34 ~3 ~16 minecraft:iron_bars
fill ~-20 ~ ~16 ~-20 ~3 ~16 minecraft:iron_bars
fill ~-6 ~ ~16 ~-6 ~3 ~16 minecraft:iron_bars
fill ~6 ~ ~16 ~6 ~3 ~16 minecraft:iron_bars

# === AQUATIC CENTER DECORATIONS ===
fill ~-36 ~14 ~-39 ~-36 ~16 ~-39 minecraft:blue_wool
setblock ~-36 ~17 ~-39 minecraft:sea_lantern
fill ~-24 ~14 ~-39 ~-24 ~16 ~-39 minecraft:blue_wool
setblock ~-24 ~17 ~-39 minecraft:sea_lantern
fill ~-12 ~14 ~-39 ~-12 ~16 ~-39 minecraft:blue_wool
setblock ~-12 ~17 ~-39 minecraft:sea_lantern
fill ~ ~14 ~-39 ~ ~16 ~-39 minecraft:blue_wool
setblock ~ ~17 ~-39 minecraft:sea_lantern
fill ~12 ~14 ~-39 ~12 ~16 ~-39 minecraft:blue_wool
setblock ~12 ~17 ~-39 minecraft:sea_lantern
fill ~24 ~14 ~-39 ~24 ~16 ~-39 minecraft:blue_wool
setblock ~24 ~17 ~-39 minecraft:sea_lantern
fill ~36 ~14 ~-39 ~36 ~16 ~-39 minecraft:blue_wool
setblock ~36 ~17 ~-39 minecraft:sea_lantern
fill ~-50 ~ ~-30 ~-46 ~ ~-26 minecraft:quartz_block
fill ~-49 ~1 ~-29 ~-47 ~2 ~-27 minecraft:oak_leaves
setblock ~-48 ~3 ~-28 minecraft:sea_lantern
fill ~46 ~ ~-30 ~50 ~ ~-26 minecraft:quartz_block
fill ~47 ~1 ~-29 ~49 ~2 ~-27 minecraft:oak_leaves
setblock ~48 ~3 ~-28 minecraft:sea_lantern
fill ~-50 ~ ~32 ~-46 ~ ~36 minecraft:quartz_block
fill ~-49 ~1 ~33 ~-47 ~2 ~35 minecraft:oak_leaves
setblock ~-48 ~3 ~34 minecraft:sea_lantern
fill ~46 ~ ~32 ~50 ~ ~36 minecraft:quartz_block
fill ~47 ~1 ~33 ~49 ~2 ~35 minecraft:oak_leaves
setblock ~48 ~3 ~34 minecraft:sea_lantern

# === EXTERIOR SIGN & DROP-OFF ===
fill ~-42 ~-1 ~-47 ~-24 ~-1 ~-43 minecraft:smooth_stone
fill ~24 ~-1 ~-47 ~42 ~-1 ~-43 minecraft:smooth_stone
fill ~-14 ~ ~-47 ~-10 ~9 ~-47 minecraft:quartz_pillar
fill ~10 ~ ~-47 ~14 ~9 ~-47 minecraft:quartz_pillar
fill ~-14 ~9 ~-47 ~14 ~11 ~-47 minecraft:cyan_concrete
setblock ~-10 ~10 ~-48 minecraft:sea_lantern
setblock ~-5 ~10 ~-48 minecraft:sea_lantern
setblock ~ ~10 ~-48 minecraft:sea_lantern
setblock ~5 ~10 ~-48 minecraft:sea_lantern
setblock ~10 ~10 ~-48 minecraft:sea_lantern

# === EXTERIOR LIGHTING ===
fill ~-48 ~ ~-44 ~-48 ~6 ~-44 minecraft:iron_bars
setblock ~-48 ~7 ~-44 minecraft:sea_lantern
fill ~-32 ~ ~-44 ~-32 ~6 ~-44 minecraft:iron_bars
setblock ~-32 ~7 ~-44 minecraft:sea_lantern
fill ~32 ~ ~-44 ~32 ~6 ~-44 minecraft:iron_bars
setblock ~32 ~7 ~-44 minecraft:sea_lantern
fill ~48 ~ ~-44 ~48 ~6 ~-44 minecraft:iron_bars
setblock ~48 ~7 ~-44 minecraft:sea_lantern
fill ~-56 ~ ~-20 ~-56 ~6 ~-20 minecraft:iron_bars
setblock ~-56 ~7 ~-20 minecraft:sea_lantern
fill ~-56 ~ ~ ~-56 ~6 ~ minecraft:iron_bars
setblock ~-56 ~7 ~ minecraft:sea_lantern
fill ~-56 ~ ~20 ~-56 ~6 ~20 minecraft:iron_bars
setblock ~-56 ~7 ~20 minecraft:sea_lantern
fill ~56 ~ ~-20 ~56 ~6 ~-20 minecraft:iron_bars
setblock ~56 ~7 ~-20 minecraft:sea_lantern
fill ~56 ~ ~ ~56 ~6 ~ minecraft:iron_bars
setblock ~56 ~7 ~ minecraft:sea_lantern
fill ~56 ~ ~20 ~56 ~6 ~20 minecraft:iron_bars
setblock ~56 ~7 ~20 minecraft:sea_lantern

# === END OF BUILD ===
# Main entrance faces negative Z.
# Competition pool is on the negative-X side.
# Diving well and leisure pool are on the positive-X side.
# Run on flat open ground with at least 60 blocks of horizontal clearance.
# Because this uses ~ relative coordinates, facing direction does not affect the build orientation.
