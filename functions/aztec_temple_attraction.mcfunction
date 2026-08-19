# AZTEC TEMPLE PARK ATTRACTION - Minecraft Bedrock Edition
# Stand at ground level at the CENTER of the main pyramid, then run this function.
# Main guest entrance faces NEGATIVE Z.
# Approximate footprint: 104 x 112 blocks. Approximate top height: 48 blocks.
# This function builds the attraction; it does not animate ride vehicles.

# === FOUNDATION & CEREMONIAL PLAZA ===
fill ~-52 ~-2 ~-56 ~52 ~-2 ~56 minecraft:stone_bricks
fill ~-50 ~-1 ~-54 ~50 ~-1 ~54 minecraft:smooth_sandstone
fill ~-44 ~-1 ~-46 ~44 ~-1 ~46 minecraft:cut_sandstone
fill ~-3 ~-1 ~-54 ~3 ~-1 ~-20 minecraft:red_sandstone
fill ~-3 ~-1 ~20 ~3 ~-1 ~54 minecraft:red_sandstone
fill ~-50 ~-1 ~-3 ~-20 ~-1 ~3 minecraft:red_sandstone
fill ~20 ~-1 ~-3 ~50 ~-1 ~3 minecraft:red_sandstone
fill ~-43 ~-1 ~-43 ~-33 ~-1 ~-33 minecraft:orange_terracotta
fill ~-41 ~-1 ~-41 ~-35 ~-1 ~-35 minecraft:yellow_concrete
setblock ~-38 ~-1 ~-38 minecraft:gold_block
fill ~33 ~-1 ~-43 ~43 ~-1 ~-33 minecraft:orange_terracotta
fill ~35 ~-1 ~-41 ~41 ~-1 ~-35 minecraft:yellow_concrete
setblock ~38 ~-1 ~-38 minecraft:gold_block
fill ~-43 ~-1 ~33 ~-33 ~-1 ~43 minecraft:orange_terracotta
fill ~-41 ~-1 ~35 ~-35 ~-1 ~41 minecraft:yellow_concrete
setblock ~-38 ~-1 ~38 minecraft:gold_block
fill ~33 ~-1 ~33 ~43 ~-1 ~43 minecraft:orange_terracotta
fill ~35 ~-1 ~35 ~41 ~-1 ~41 minecraft:yellow_concrete
setblock ~38 ~-1 ~38 minecraft:gold_block

# === OUTER TEMPLE WALL & GRAND ENTRY ===
fill ~-52 ~ ~-56 ~-12 ~2 ~-56 minecraft:mossy_stone_bricks
fill ~12 ~ ~-56 ~52 ~2 ~-56 minecraft:mossy_stone_bricks
fill ~-52 ~ ~56 ~52 ~2 ~56 minecraft:mossy_stone_bricks
fill ~-52 ~ ~-56 ~-52 ~2 ~56 minecraft:mossy_stone_bricks
fill ~52 ~ ~-56 ~52 ~2 ~56 minecraft:mossy_stone_bricks
fill ~-12 ~ ~-56 ~-8 ~12 ~-52 minecraft:chiseled_sandstone
fill ~8 ~ ~-56 ~12 ~12 ~-52 minecraft:chiseled_sandstone
fill ~-12 ~12 ~-56 ~12 ~15 ~-52 minecraft:red_sandstone
fill ~-8 ~15 ~-55 ~8 ~17 ~-53 minecraft:gold_block
setblock ~-9 ~13 ~-57 minecraft:sea_lantern
setblock ~-5 ~13 ~-57 minecraft:sea_lantern
setblock ~ ~13 ~-57 minecraft:sea_lantern
setblock ~5 ~13 ~-57 minecraft:sea_lantern
setblock ~9 ~13 ~-57 minecraft:sea_lantern

# === TICKET BOOTH ===
fill ~22 ~ ~-50 ~38 ~ ~-39 minecraft:stone_bricks
fill ~23 ~1 ~-49 ~37 ~7 ~-40 minecraft:sandstone
fill ~24 ~3 ~-50 ~36 ~5 ~-50 minecraft:glass
fill ~22 ~8 ~-50 ~38 ~9 ~-39 minecraft:red_sandstone
fill ~24 ~9 ~-51 ~36 ~10 ~-51 minecraft:gold_block
fill ~25 ~1 ~-51 ~35 ~2 ~-50 minecraft:jungle_planks
setblock ~22 ~10 ~-44 minecraft:lantern
setblock ~38 ~10 ~-44 minecraft:lantern

# === QUEUE MAZE ===
fill ~-48 ~-1 ~-50 ~-18 ~-1 ~-28 minecraft:smooth_sandstone
fill ~-46 ~ ~-48 ~-20 ~ ~-48 minecraft:jungle_fence
fill ~-46 ~ ~-43 ~-20 ~ ~-43 minecraft:jungle_fence
fill ~-46 ~ ~-38 ~-20 ~ ~-38 minecraft:jungle_fence
fill ~-46 ~ ~-33 ~-20 ~ ~-33 minecraft:jungle_fence
fill ~-46 ~ ~-48 ~-46 ~ ~-33 minecraft:jungle_fence
fill ~-20 ~ ~-43 ~-20 ~ ~-38 minecraft:jungle_fence
fill ~-20 ~ ~-33 ~-20 ~ ~-28 minecraft:jungle_fence
fill ~-44 ~ ~-46 ~-44 ~3 ~-46 minecraft:jungle_fence
setblock ~-44 ~4 ~-46 minecraft:lantern
fill ~-34 ~ ~-41 ~-34 ~3 ~-41 minecraft:jungle_fence
setblock ~-34 ~4 ~-41 minecraft:lantern
fill ~-24 ~ ~-36 ~-24 ~3 ~-36 minecraft:jungle_fence
setblock ~-24 ~4 ~-36 minecraft:lantern
fill ~-44 ~ ~-31 ~-44 ~3 ~-31 minecraft:jungle_fence
setblock ~-44 ~4 ~-31 minecraft:lantern

# === CEREMONIAL WATER CHANNELS ===
fill ~-47 ~ ~-18 ~-26 ~ ~-14 minecraft:stone_bricks
fill ~-46 ~ ~-17 ~-27 ~ ~-15 minecraft:water
fill ~26 ~ ~-18 ~47 ~ ~-14 minecraft:stone_bricks
fill ~27 ~ ~-17 ~46 ~ ~-15 minecraft:water
fill ~-47 ~ ~14 ~-26 ~ ~18 minecraft:stone_bricks
fill ~-46 ~ ~15 ~-27 ~ ~17 minecraft:water
fill ~26 ~ ~14 ~47 ~ ~18 minecraft:stone_bricks
fill ~27 ~ ~15 ~46 ~ ~17 minecraft:water
setblock ~-36 ~1 ~-16 minecraft:sea_lantern
setblock ~36 ~1 ~-16 minecraft:sea_lantern
setblock ~-36 ~1 ~16 minecraft:sea_lantern
setblock ~36 ~1 ~16 minecraft:sea_lantern

# === MASSIVE STEPPED PYRAMID ===
fill ~-38 ~ ~-38 ~38 ~3 ~38 minecraft:sandstone
fill ~-38 ~3 ~-38 ~38 ~3 ~-38 minecraft:red_sandstone
fill ~-38 ~3 ~38 ~38 ~3 ~38 minecraft:red_sandstone
fill ~-38 ~3 ~-38 ~-38 ~3 ~38 minecraft:red_sandstone
fill ~38 ~3 ~-38 ~38 ~3 ~38 minecraft:red_sandstone
fill ~-34 ~4 ~-34 ~34 ~7 ~34 minecraft:cut_sandstone
fill ~-34 ~7 ~-34 ~34 ~7 ~-34 minecraft:red_sandstone
fill ~-34 ~7 ~34 ~34 ~7 ~34 minecraft:red_sandstone
fill ~-34 ~7 ~-34 ~-34 ~7 ~34 minecraft:red_sandstone
fill ~34 ~7 ~-34 ~34 ~7 ~34 minecraft:red_sandstone
fill ~-30 ~8 ~-30 ~30 ~11 ~30 minecraft:sandstone
fill ~-30 ~11 ~-30 ~30 ~11 ~-30 minecraft:red_sandstone
fill ~-30 ~11 ~30 ~30 ~11 ~30 minecraft:red_sandstone
fill ~-30 ~11 ~-30 ~-30 ~11 ~30 minecraft:red_sandstone
fill ~30 ~11 ~-30 ~30 ~11 ~30 minecraft:red_sandstone
fill ~-26 ~12 ~-26 ~26 ~15 ~26 minecraft:cut_sandstone
fill ~-26 ~15 ~-26 ~26 ~15 ~-26 minecraft:red_sandstone
fill ~-26 ~15 ~26 ~26 ~15 ~26 minecraft:red_sandstone
fill ~-26 ~15 ~-26 ~-26 ~15 ~26 minecraft:red_sandstone
fill ~26 ~15 ~-26 ~26 ~15 ~26 minecraft:red_sandstone
fill ~-22 ~16 ~-22 ~22 ~19 ~22 minecraft:sandstone
fill ~-22 ~19 ~-22 ~22 ~19 ~-22 minecraft:red_sandstone
fill ~-22 ~19 ~22 ~22 ~19 ~22 minecraft:red_sandstone
fill ~-22 ~19 ~-22 ~-22 ~19 ~22 minecraft:red_sandstone
fill ~22 ~19 ~-22 ~22 ~19 ~22 minecraft:red_sandstone
fill ~-18 ~20 ~-18 ~18 ~23 ~18 minecraft:cut_sandstone
fill ~-18 ~23 ~-18 ~18 ~23 ~-18 minecraft:red_sandstone
fill ~-18 ~23 ~18 ~18 ~23 ~18 minecraft:red_sandstone
fill ~-18 ~23 ~-18 ~-18 ~23 ~18 minecraft:red_sandstone
fill ~18 ~23 ~-18 ~18 ~23 ~18 minecraft:red_sandstone
fill ~-14 ~24 ~-14 ~14 ~27 ~14 minecraft:sandstone
fill ~-14 ~27 ~-14 ~14 ~27 ~-14 minecraft:red_sandstone
fill ~-14 ~27 ~14 ~14 ~27 ~14 minecraft:red_sandstone
fill ~-14 ~27 ~-14 ~-14 ~27 ~14 minecraft:red_sandstone
fill ~14 ~27 ~-14 ~14 ~27 ~14 minecraft:red_sandstone
fill ~-10 ~28 ~-10 ~10 ~31 ~10 minecraft:cut_sandstone
fill ~-10 ~31 ~-10 ~10 ~31 ~-10 minecraft:red_sandstone
fill ~-10 ~31 ~10 ~10 ~31 ~10 minecraft:red_sandstone
fill ~-10 ~31 ~-10 ~-10 ~31 ~10 minecraft:red_sandstone
fill ~10 ~31 ~-10 ~10 ~31 ~10 minecraft:red_sandstone
fill ~-34 ~5 ~-2 ~-34 ~6 ~-1 minecraft:mossy_stone_bricks
fill ~-34 ~5 ~1 ~-34 ~6 ~2 minecraft:mossy_stone_bricks
fill ~34 ~5 ~-2 ~34 ~6 ~-1 minecraft:mossy_stone_bricks
fill ~34 ~5 ~1 ~34 ~6 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~5 ~-34 ~-1 ~6 ~-34 minecraft:mossy_stone_bricks
fill ~1 ~5 ~-34 ~2 ~6 ~-34 minecraft:mossy_stone_bricks
fill ~-2 ~5 ~34 ~-1 ~6 ~34 minecraft:mossy_stone_bricks
fill ~1 ~5 ~34 ~2 ~6 ~34 minecraft:mossy_stone_bricks
fill ~-30 ~9 ~-2 ~-30 ~10 ~-1 minecraft:mossy_stone_bricks
fill ~-30 ~9 ~1 ~-30 ~10 ~2 minecraft:mossy_stone_bricks
fill ~30 ~9 ~-2 ~30 ~10 ~-1 minecraft:mossy_stone_bricks
fill ~30 ~9 ~1 ~30 ~10 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~9 ~-30 ~-1 ~10 ~-30 minecraft:mossy_stone_bricks
fill ~1 ~9 ~-30 ~2 ~10 ~-30 minecraft:mossy_stone_bricks
fill ~-2 ~9 ~30 ~-1 ~10 ~30 minecraft:mossy_stone_bricks
fill ~1 ~9 ~30 ~2 ~10 ~30 minecraft:mossy_stone_bricks
fill ~-26 ~13 ~-2 ~-26 ~14 ~-1 minecraft:mossy_stone_bricks
fill ~-26 ~13 ~1 ~-26 ~14 ~2 minecraft:mossy_stone_bricks
fill ~26 ~13 ~-2 ~26 ~14 ~-1 minecraft:mossy_stone_bricks
fill ~26 ~13 ~1 ~26 ~14 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~13 ~-26 ~-1 ~14 ~-26 minecraft:mossy_stone_bricks
fill ~1 ~13 ~-26 ~2 ~14 ~-26 minecraft:mossy_stone_bricks
fill ~-2 ~13 ~26 ~-1 ~14 ~26 minecraft:mossy_stone_bricks
fill ~1 ~13 ~26 ~2 ~14 ~26 minecraft:mossy_stone_bricks
fill ~-22 ~17 ~-2 ~-22 ~18 ~-1 minecraft:mossy_stone_bricks
fill ~-22 ~17 ~1 ~-22 ~18 ~2 minecraft:mossy_stone_bricks
fill ~22 ~17 ~-2 ~22 ~18 ~-1 minecraft:mossy_stone_bricks
fill ~22 ~17 ~1 ~22 ~18 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~17 ~-22 ~-1 ~18 ~-22 minecraft:mossy_stone_bricks
fill ~1 ~17 ~-22 ~2 ~18 ~-22 minecraft:mossy_stone_bricks
fill ~-2 ~17 ~22 ~-1 ~18 ~22 minecraft:mossy_stone_bricks
fill ~1 ~17 ~22 ~2 ~18 ~22 minecraft:mossy_stone_bricks
fill ~-18 ~21 ~-2 ~-18 ~22 ~-1 minecraft:mossy_stone_bricks
fill ~-18 ~21 ~1 ~-18 ~22 ~2 minecraft:mossy_stone_bricks
fill ~18 ~21 ~-2 ~18 ~22 ~-1 minecraft:mossy_stone_bricks
fill ~18 ~21 ~1 ~18 ~22 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~21 ~-18 ~-1 ~22 ~-18 minecraft:mossy_stone_bricks
fill ~1 ~21 ~-18 ~2 ~22 ~-18 minecraft:mossy_stone_bricks
fill ~-2 ~21 ~18 ~-1 ~22 ~18 minecraft:mossy_stone_bricks
fill ~1 ~21 ~18 ~2 ~22 ~18 minecraft:mossy_stone_bricks
fill ~-14 ~25 ~-2 ~-14 ~26 ~-1 minecraft:mossy_stone_bricks
fill ~-14 ~25 ~1 ~-14 ~26 ~2 minecraft:mossy_stone_bricks
fill ~14 ~25 ~-2 ~14 ~26 ~-1 minecraft:mossy_stone_bricks
fill ~14 ~25 ~1 ~14 ~26 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~25 ~-14 ~-1 ~26 ~-14 minecraft:mossy_stone_bricks
fill ~1 ~25 ~-14 ~2 ~26 ~-14 minecraft:mossy_stone_bricks
fill ~-2 ~25 ~14 ~-1 ~26 ~14 minecraft:mossy_stone_bricks
fill ~1 ~25 ~14 ~2 ~26 ~14 minecraft:mossy_stone_bricks
fill ~-10 ~29 ~-2 ~-10 ~30 ~-1 minecraft:mossy_stone_bricks
fill ~-10 ~29 ~1 ~-10 ~30 ~2 minecraft:mossy_stone_bricks
fill ~10 ~29 ~-2 ~10 ~30 ~-1 minecraft:mossy_stone_bricks
fill ~10 ~29 ~1 ~10 ~30 ~2 minecraft:mossy_stone_bricks
fill ~-2 ~29 ~-10 ~-1 ~30 ~-10 minecraft:mossy_stone_bricks
fill ~1 ~29 ~-10 ~2 ~30 ~-10 minecraft:mossy_stone_bricks
fill ~-2 ~29 ~10 ~-1 ~30 ~10 minecraft:mossy_stone_bricks
fill ~1 ~29 ~10 ~2 ~30 ~10 minecraft:mossy_stone_bricks

# === GRAND PROCESSIONAL STAIRCASE ===
fill ~-9 ~ ~-38 ~9 ~3 ~-35 minecraft:stone_bricks
fill ~-1 ~3 ~-38 ~1 ~3 ~-35 minecraft:gold_block
fill ~-9 ~4 ~-34 ~9 ~7 ~-31 minecraft:stone_bricks
fill ~-1 ~7 ~-34 ~1 ~7 ~-31 minecraft:gold_block
fill ~-8 ~8 ~-30 ~8 ~11 ~-27 minecraft:stone_bricks
fill ~-1 ~11 ~-30 ~1 ~11 ~-27 minecraft:gold_block
fill ~-8 ~12 ~-26 ~8 ~15 ~-23 minecraft:stone_bricks
fill ~-1 ~15 ~-26 ~1 ~15 ~-23 minecraft:gold_block
fill ~-7 ~16 ~-22 ~7 ~19 ~-19 minecraft:stone_bricks
fill ~-1 ~19 ~-22 ~1 ~19 ~-19 minecraft:gold_block
fill ~-7 ~20 ~-18 ~7 ~23 ~-15 minecraft:stone_bricks
fill ~-1 ~23 ~-18 ~1 ~23 ~-15 minecraft:gold_block
fill ~-6 ~24 ~-14 ~6 ~27 ~-11 minecraft:stone_bricks
fill ~-1 ~27 ~-14 ~1 ~27 ~-11 minecraft:gold_block
fill ~-6 ~28 ~-10 ~6 ~31 ~-7 minecraft:stone_bricks
fill ~-1 ~31 ~-10 ~1 ~31 ~-7 minecraft:gold_block
fill ~-8 ~ ~-48 ~8 ~ ~-48 minecraft:stone_bricks
fill ~-8 ~ ~-47 ~8 ~ ~-47 minecraft:stone_bricks
fill ~-8 ~1 ~-46 ~8 ~1 ~-46 minecraft:stone_bricks
fill ~-8 ~1 ~-45 ~8 ~1 ~-45 minecraft:stone_bricks
fill ~-8 ~2 ~-44 ~8 ~2 ~-44 minecraft:stone_bricks
fill ~-8 ~2 ~-43 ~8 ~2 ~-43 minecraft:stone_bricks
fill ~-8 ~3 ~-42 ~8 ~3 ~-42 minecraft:stone_bricks
fill ~-8 ~3 ~-41 ~8 ~3 ~-41 minecraft:stone_bricks
fill ~-8 ~4 ~-40 ~8 ~4 ~-40 minecraft:stone_bricks
fill ~-8 ~4 ~-39 ~8 ~4 ~-39 minecraft:stone_bricks

# === FEATHERED SERPENT BALUSTRADES ===
fill ~-11 ~2 ~-37 ~-11 ~4 ~-35 minecraft:emerald_block
setblock ~-11 ~5 ~-36 minecraft:gold_block
fill ~-11 ~6 ~-33 ~-11 ~8 ~-31 minecraft:emerald_block
setblock ~-11 ~9 ~-32 minecraft:gold_block
fill ~-11 ~10 ~-29 ~-11 ~12 ~-27 minecraft:emerald_block
setblock ~-11 ~13 ~-28 minecraft:gold_block
fill ~-11 ~14 ~-25 ~-11 ~16 ~-23 minecraft:emerald_block
setblock ~-11 ~17 ~-24 minecraft:gold_block
fill ~-11 ~18 ~-21 ~-11 ~20 ~-19 minecraft:emerald_block
setblock ~-11 ~21 ~-20 minecraft:gold_block
fill ~-11 ~22 ~-17 ~-11 ~24 ~-15 minecraft:emerald_block
setblock ~-11 ~25 ~-16 minecraft:gold_block
fill ~-11 ~26 ~-13 ~-11 ~28 ~-11 minecraft:emerald_block
setblock ~-11 ~29 ~-12 minecraft:gold_block
fill ~-11 ~30 ~-9 ~-11 ~32 ~-7 minecraft:emerald_block
setblock ~-11 ~33 ~-8 minecraft:gold_block
fill ~-13 ~1 ~-42 ~-9 ~4 ~-38 minecraft:emerald_block
fill ~-12 ~2 ~-44 ~-10 ~3 ~-42 minecraft:lime_concrete
setblock ~-12 ~4 ~-42 minecraft:sea_lantern
setblock ~-10 ~4 ~-42 minecraft:sea_lantern
setblock ~-11 ~2 ~-45 minecraft:red_wool
fill ~11 ~2 ~-37 ~11 ~4 ~-35 minecraft:emerald_block
setblock ~11 ~5 ~-36 minecraft:gold_block
fill ~11 ~6 ~-33 ~11 ~8 ~-31 minecraft:emerald_block
setblock ~11 ~9 ~-32 minecraft:gold_block
fill ~11 ~10 ~-29 ~11 ~12 ~-27 minecraft:emerald_block
setblock ~11 ~13 ~-28 minecraft:gold_block
fill ~11 ~14 ~-25 ~11 ~16 ~-23 minecraft:emerald_block
setblock ~11 ~17 ~-24 minecraft:gold_block
fill ~11 ~18 ~-21 ~11 ~20 ~-19 minecraft:emerald_block
setblock ~11 ~21 ~-20 minecraft:gold_block
fill ~11 ~22 ~-17 ~11 ~24 ~-15 minecraft:emerald_block
setblock ~11 ~25 ~-16 minecraft:gold_block
fill ~11 ~26 ~-13 ~11 ~28 ~-11 minecraft:emerald_block
setblock ~11 ~29 ~-12 minecraft:gold_block
fill ~11 ~30 ~-9 ~11 ~32 ~-7 minecraft:emerald_block
setblock ~11 ~33 ~-8 minecraft:gold_block
fill ~9 ~1 ~-42 ~13 ~4 ~-38 minecraft:emerald_block
fill ~10 ~2 ~-44 ~12 ~3 ~-42 minecraft:lime_concrete
setblock ~10 ~4 ~-42 minecraft:sea_lantern
setblock ~12 ~4 ~-42 minecraft:sea_lantern
setblock ~11 ~2 ~-45 minecraft:red_wool

# === SIDE TERRACE ACCESS ===
fill ~-40 ~ ~26 ~-38 ~ ~30 minecraft:stone_bricks
fill ~-38 ~2 ~26 ~-36 ~2 ~30 minecraft:stone_bricks
fill ~-36 ~4 ~26 ~-34 ~4 ~30 minecraft:stone_bricks
fill ~-34 ~6 ~26 ~-32 ~6 ~30 minecraft:stone_bricks
fill ~-32 ~8 ~26 ~-30 ~8 ~30 minecraft:stone_bricks
fill ~-30 ~10 ~26 ~-28 ~10 ~30 minecraft:stone_bricks
fill ~-28 ~12 ~26 ~-26 ~12 ~30 minecraft:stone_bricks
fill ~-26 ~14 ~26 ~-24 ~14 ~30 minecraft:stone_bricks
fill ~-24 ~16 ~26 ~-22 ~16 ~30 minecraft:stone_bricks
fill ~-22 ~18 ~26 ~-20 ~18 ~30 minecraft:stone_bricks
fill ~-20 ~20 ~26 ~-18 ~20 ~30 minecraft:stone_bricks
fill ~-18 ~22 ~26 ~-16 ~22 ~30 minecraft:stone_bricks
fill ~-16 ~24 ~26 ~-14 ~24 ~30 minecraft:stone_bricks
fill ~-14 ~26 ~26 ~-12 ~26 ~30 minecraft:stone_bricks
fill ~38 ~ ~26 ~40 ~ ~30 minecraft:stone_bricks
fill ~36 ~2 ~26 ~38 ~2 ~30 minecraft:stone_bricks
fill ~34 ~4 ~26 ~36 ~4 ~30 minecraft:stone_bricks
fill ~32 ~6 ~26 ~34 ~6 ~30 minecraft:stone_bricks
fill ~30 ~8 ~26 ~32 ~8 ~30 minecraft:stone_bricks
fill ~28 ~10 ~26 ~30 ~10 ~30 minecraft:stone_bricks
fill ~26 ~12 ~26 ~28 ~12 ~30 minecraft:stone_bricks
fill ~24 ~14 ~26 ~26 ~14 ~30 minecraft:stone_bricks
fill ~22 ~16 ~26 ~24 ~16 ~30 minecraft:stone_bricks
fill ~20 ~18 ~26 ~22 ~18 ~30 minecraft:stone_bricks
fill ~18 ~20 ~26 ~20 ~20 ~30 minecraft:stone_bricks
fill ~16 ~22 ~26 ~18 ~22 ~30 minecraft:stone_bricks
fill ~14 ~24 ~26 ~16 ~24 ~30 minecraft:stone_bricks
fill ~12 ~26 ~26 ~14 ~26 ~30 minecraft:stone_bricks

# === SUMMIT TEMPLE ===
fill ~-11 ~32 ~-11 ~11 ~33 ~11 minecraft:stone_bricks
fill ~-9 ~34 ~-9 ~9 ~43 ~9 minecraft:chiseled_sandstone
fill ~-3 ~34 ~-10 ~3 ~41 ~-8 minecraft:air
fill ~-2 ~34 ~-9 ~2 ~40 ~-5 minecraft:air
fill ~-2 ~34 ~-10 ~2 ~39 ~-10 minecraft:polished_blackstone_bricks
fill ~-1 ~35 ~-10 ~1 ~39 ~-10 minecraft:air
fill ~-11 ~43 ~-11 ~11 ~45 ~11 minecraft:red_sandstone
fill ~-8 ~46 ~-8 ~8 ~47 ~8 minecraft:gold_block
fill ~-4 ~48 ~-4 ~4 ~48 ~4 minecraft:emerald_block
setblock ~-7 ~46 ~-7 minecraft:sea_lantern
setblock ~7 ~46 ~-7 minecraft:sea_lantern
setblock ~-7 ~46 ~7 minecraft:sea_lantern
setblock ~7 ~46 ~7 minecraft:sea_lantern
setblock ~ ~46 ~-9 minecraft:sea_lantern
setblock ~ ~46 ~9 minecraft:sea_lantern

# === SUMMIT COLUMNS & IDOLS ===
fill ~-7 ~34 ~-9 ~-7 ~42 ~-9 minecraft:quartz_pillar
setblock ~-7 ~43 ~-9 minecraft:gold_block
fill ~-4 ~34 ~-9 ~-4 ~42 ~-9 minecraft:quartz_pillar
setblock ~-4 ~43 ~-9 minecraft:gold_block
fill ~4 ~34 ~-9 ~4 ~42 ~-9 minecraft:quartz_pillar
setblock ~4 ~43 ~-9 minecraft:gold_block
fill ~7 ~34 ~-9 ~7 ~42 ~-9 minecraft:quartz_pillar
setblock ~7 ~43 ~-9 minecraft:gold_block
fill ~-8 ~35 ~-1 ~-6 ~40 ~1 minecraft:chiseled_sandstone
setblock ~-7 ~41 ~ minecraft:gold_block
fill ~6 ~35 ~-1 ~8 ~40 ~1 minecraft:chiseled_sandstone
setblock ~7 ~41 ~ minecraft:gold_block
fill ~-1 ~35 ~6 ~1 ~40 ~8 minecraft:chiseled_sandstone
setblock ~ ~41 ~7 minecraft:gold_block

# === GIANT SUN DISK ===
fill ~-1 ~37 ~-11 ~1 ~37 ~-11 minecraft:gold_block
fill ~-2 ~38 ~-11 ~2 ~38 ~-11 minecraft:gold_block
fill ~-3 ~39 ~-11 ~3 ~39 ~-11 minecraft:gold_block
fill ~-4 ~40 ~-11 ~4 ~40 ~-11 minecraft:gold_block
fill ~-3 ~41 ~-11 ~3 ~41 ~-11 minecraft:gold_block
fill ~-2 ~42 ~-11 ~2 ~42 ~-11 minecraft:gold_block
setblock ~ ~40 ~-12 minecraft:sea_lantern

# === GLYPH / MURAL PANELS ===
fill ~-39 ~3 ~-26 ~-39 ~9 ~-18 minecraft:orange_terracotta
fill ~-40 ~4 ~-25 ~-40 ~8 ~-19 minecraft:yellow_concrete
setblock ~-41 ~6 ~-22 minecraft:gold_block
fill ~39 ~3 ~-26 ~39 ~9 ~-18 minecraft:orange_terracotta
fill ~40 ~4 ~-25 ~40 ~8 ~-19 minecraft:yellow_concrete
setblock ~41 ~6 ~-22 minecraft:gold_block
fill ~-39 ~3 ~-14 ~-39 ~9 ~-6 minecraft:orange_terracotta
fill ~-40 ~4 ~-13 ~-40 ~8 ~-7 minecraft:yellow_concrete
setblock ~-41 ~6 ~-10 minecraft:gold_block
fill ~39 ~3 ~-14 ~39 ~9 ~-6 minecraft:orange_terracotta
fill ~40 ~4 ~-13 ~40 ~8 ~-7 minecraft:yellow_concrete
setblock ~41 ~6 ~-10 minecraft:gold_block
fill ~-39 ~3 ~6 ~-39 ~9 ~14 minecraft:orange_terracotta
fill ~-40 ~4 ~7 ~-40 ~8 ~13 minecraft:yellow_concrete
setblock ~-41 ~6 ~10 minecraft:gold_block
fill ~39 ~3 ~6 ~39 ~9 ~14 minecraft:orange_terracotta
fill ~40 ~4 ~7 ~40 ~8 ~13 minecraft:yellow_concrete
setblock ~41 ~6 ~10 minecraft:gold_block
fill ~-39 ~3 ~18 ~-39 ~9 ~26 minecraft:orange_terracotta
fill ~-40 ~4 ~19 ~-40 ~8 ~25 minecraft:yellow_concrete
setblock ~-41 ~6 ~22 minecraft:gold_block
fill ~39 ~3 ~18 ~39 ~9 ~26 minecraft:orange_terracotta
fill ~40 ~4 ~19 ~40 ~8 ~25 minecraft:yellow_concrete
setblock ~41 ~6 ~22 minecraft:gold_block

# === HIDDEN CHAMBER & RIDE LOADING ENTRANCE ===
fill ~18 ~1 ~39 ~30 ~9 ~43 minecraft:polished_blackstone_bricks
fill ~21 ~2 ~38 ~27 ~7 ~43 minecraft:air
fill ~22 ~1 ~35 ~26 ~1 ~44 minecraft:stone_bricks
fill ~20 ~1 ~37 ~20 ~4 ~37 minecraft:jungle_fence
setblock ~20 ~5 ~37 minecraft:soul_lantern
fill ~28 ~1 ~37 ~28 ~4 ~37 minecraft:jungle_fence
setblock ~28 ~5 ~37 minecraft:soul_lantern
fill ~15 ~ ~30 ~34 ~ ~45 minecraft:stone_bricks
fill ~17 ~1 ~32 ~32 ~1 ~43 minecraft:jungle_planks
fill ~15 ~2 ~30 ~34 ~2 ~30 minecraft:iron_bars
fill ~15 ~2 ~45 ~34 ~2 ~45 minecraft:iron_bars
fill ~15 ~2 ~30 ~15 ~2 ~45 minecraft:iron_bars
fill ~34 ~2 ~30 ~34 ~2 ~45 minecraft:iron_bars

# === OPERATOR BOOTH ===
fill ~36 ~ ~28 ~44 ~ ~38 minecraft:stone_bricks
fill ~37 ~1 ~29 ~43 ~6 ~37 minecraft:red_sandstone
fill ~38 ~3 ~28 ~42 ~5 ~28 minecraft:glass
fill ~36 ~7 ~28 ~44 ~8 ~38 minecraft:gold_block
setblock ~39 ~2 ~28 minecraft:redstone_lamp
setblock ~41 ~2 ~28 minecraft:emerald_block

# === FIRE BRAZIERS ===
fill ~-21 ~ ~-25 ~-19 ~1 ~-23 minecraft:stone_bricks
fill ~-20 ~2 ~-24 ~-20 ~3 ~-24 minecraft:cobblestone_wall
setblock ~-20 ~4 ~-24 minecraft:campfire
fill ~19 ~ ~-25 ~21 ~1 ~-23 minecraft:stone_bricks
fill ~20 ~2 ~-24 ~20 ~3 ~-24 minecraft:cobblestone_wall
setblock ~20 ~4 ~-24 minecraft:campfire
fill ~-21 ~ ~23 ~-19 ~1 ~25 minecraft:stone_bricks
fill ~-20 ~2 ~24 ~-20 ~3 ~24 minecraft:cobblestone_wall
setblock ~-20 ~4 ~24 minecraft:campfire
fill ~19 ~ ~23 ~21 ~1 ~25 minecraft:stone_bricks
fill ~20 ~2 ~24 ~20 ~3 ~24 minecraft:cobblestone_wall
setblock ~20 ~4 ~24 minecraft:campfire
fill ~-35 ~ ~-29 ~-33 ~1 ~-27 minecraft:stone_bricks
fill ~-34 ~2 ~-28 ~-34 ~3 ~-28 minecraft:cobblestone_wall
setblock ~-34 ~4 ~-28 minecraft:campfire
fill ~33 ~ ~-29 ~35 ~1 ~-27 minecraft:stone_bricks
fill ~34 ~2 ~-28 ~34 ~3 ~-28 minecraft:cobblestone_wall
setblock ~34 ~4 ~-28 minecraft:campfire
fill ~-35 ~ ~27 ~-33 ~1 ~29 minecraft:stone_bricks
fill ~-34 ~2 ~28 ~-34 ~3 ~28 minecraft:cobblestone_wall
setblock ~-34 ~4 ~28 minecraft:campfire
fill ~33 ~ ~27 ~35 ~1 ~29 minecraft:stone_bricks
fill ~34 ~2 ~28 ~34 ~3 ~28 minecraft:cobblestone_wall
setblock ~34 ~4 ~28 minecraft:campfire

# === JUNGLE LANDSCAPING ===
fill ~-46 ~ ~-24 ~-46 ~6 ~-24 minecraft:jungle_log
fill ~-48 ~5 ~-26 ~-44 ~8 ~-22 minecraft:jungle_leaves
fill ~-47 ~8 ~-25 ~-45 ~10 ~-23 minecraft:jungle_leaves
setblock ~-46 ~7 ~-24 minecraft:glowstone
fill ~-40 ~ ~-8 ~-40 ~6 ~-8 minecraft:jungle_log
fill ~-42 ~5 ~-10 ~-38 ~8 ~-6 minecraft:jungle_leaves
fill ~-41 ~8 ~-9 ~-39 ~10 ~-7 minecraft:jungle_leaves
setblock ~-40 ~7 ~-8 minecraft:glowstone
fill ~-45 ~ ~8 ~-45 ~6 ~8 minecraft:jungle_log
fill ~-47 ~5 ~6 ~-43 ~8 ~10 minecraft:jungle_leaves
fill ~-46 ~8 ~7 ~-44 ~10 ~9 minecraft:jungle_leaves
setblock ~-45 ~7 ~8 minecraft:glowstone
fill ~-40 ~ ~26 ~-40 ~6 ~26 minecraft:jungle_log
fill ~-42 ~5 ~24 ~-38 ~8 ~28 minecraft:jungle_leaves
fill ~-41 ~8 ~25 ~-39 ~10 ~27 minecraft:jungle_leaves
setblock ~-40 ~7 ~26 minecraft:glowstone
fill ~46 ~ ~-24 ~46 ~6 ~-24 minecraft:jungle_log
fill ~44 ~5 ~-26 ~48 ~8 ~-22 minecraft:jungle_leaves
fill ~45 ~8 ~-25 ~47 ~10 ~-23 minecraft:jungle_leaves
setblock ~46 ~7 ~-24 minecraft:glowstone
fill ~40 ~ ~-8 ~40 ~6 ~-8 minecraft:jungle_log
fill ~38 ~5 ~-10 ~42 ~8 ~-6 minecraft:jungle_leaves
fill ~39 ~8 ~-9 ~41 ~10 ~-7 minecraft:jungle_leaves
setblock ~40 ~7 ~-8 minecraft:glowstone
fill ~45 ~ ~8 ~45 ~6 ~8 minecraft:jungle_log
fill ~43 ~5 ~6 ~47 ~8 ~10 minecraft:jungle_leaves
fill ~44 ~8 ~7 ~46 ~10 ~9 minecraft:jungle_leaves
setblock ~45 ~7 ~8 minecraft:glowstone
fill ~40 ~ ~26 ~40 ~6 ~26 minecraft:jungle_log
fill ~38 ~5 ~24 ~42 ~8 ~28 minecraft:jungle_leaves
fill ~39 ~8 ~25 ~41 ~10 ~27 minecraft:jungle_leaves
setblock ~40 ~7 ~26 minecraft:glowstone
fill ~-30 ~ ~45 ~-30 ~6 ~45 minecraft:jungle_log
fill ~-32 ~5 ~43 ~-28 ~8 ~47 minecraft:jungle_leaves
fill ~-31 ~8 ~44 ~-29 ~10 ~46 minecraft:jungle_leaves
setblock ~-30 ~7 ~45 minecraft:glowstone
fill ~-15 ~ ~48 ~-15 ~6 ~48 minecraft:jungle_log
fill ~-17 ~5 ~46 ~-13 ~8 ~50 minecraft:jungle_leaves
fill ~-16 ~8 ~47 ~-14 ~10 ~49 minecraft:jungle_leaves
setblock ~-15 ~7 ~48 minecraft:glowstone
fill ~15 ~ ~48 ~15 ~6 ~48 minecraft:jungle_log
fill ~13 ~5 ~46 ~17 ~8 ~50 minecraft:jungle_leaves
fill ~14 ~8 ~47 ~16 ~10 ~49 minecraft:jungle_leaves
setblock ~15 ~7 ~48 minecraft:glowstone
fill ~30 ~ ~45 ~30 ~6 ~45 minecraft:jungle_log
fill ~28 ~5 ~43 ~32 ~8 ~47 minecraft:jungle_leaves
fill ~29 ~8 ~44 ~31 ~10 ~46 minecraft:jungle_leaves
setblock ~30 ~7 ~45 minecraft:glowstone
fill ~-48 ~ ~36 ~-44 ~1 ~40 minecraft:jungle_leaves
fill ~-40 ~ ~44 ~-36 ~1 ~48 minecraft:jungle_leaves
fill ~36 ~ ~44 ~40 ~1 ~48 minecraft:jungle_leaves
fill ~44 ~ ~36 ~48 ~1 ~40 minecraft:jungle_leaves
fill ~-48 ~ ~-40 ~-44 ~1 ~-36 minecraft:jungle_leaves
fill ~44 ~ ~-40 ~48 ~1 ~-36 minecraft:jungle_leaves

# === GUARDIAN STATUES ===
fill ~-20 ~ ~-34 ~-16 ~1 ~-30 minecraft:stone_bricks
fill ~-19 ~2 ~-33 ~-17 ~6 ~-31 minecraft:mossy_stone_bricks
fill ~-20 ~7 ~-33 ~-16 ~9 ~-31 minecraft:chiseled_sandstone
setblock ~-19 ~8 ~-34 minecraft:sea_lantern
setblock ~-17 ~8 ~-34 minecraft:sea_lantern
setblock ~-18 ~10 ~-32 minecraft:gold_block
fill ~16 ~ ~-34 ~20 ~1 ~-30 minecraft:stone_bricks
fill ~17 ~2 ~-33 ~19 ~6 ~-31 minecraft:mossy_stone_bricks
fill ~16 ~7 ~-33 ~20 ~9 ~-31 minecraft:chiseled_sandstone
setblock ~17 ~8 ~-34 minecraft:sea_lantern
setblock ~19 ~8 ~-34 minecraft:sea_lantern
setblock ~18 ~10 ~-32 minecraft:gold_block
fill ~-30 ~ ~30 ~-26 ~1 ~34 minecraft:stone_bricks
fill ~-29 ~2 ~31 ~-27 ~6 ~33 minecraft:mossy_stone_bricks
fill ~-30 ~7 ~31 ~-26 ~9 ~33 minecraft:chiseled_sandstone
setblock ~-29 ~8 ~30 minecraft:sea_lantern
setblock ~-27 ~8 ~30 minecraft:sea_lantern
setblock ~-28 ~10 ~32 minecraft:gold_block
fill ~26 ~ ~30 ~30 ~1 ~34 minecraft:stone_bricks
fill ~27 ~2 ~31 ~29 ~6 ~33 minecraft:mossy_stone_bricks
fill ~26 ~7 ~31 ~30 ~9 ~33 minecraft:chiseled_sandstone
setblock ~27 ~8 ~30 minecraft:sea_lantern
setblock ~29 ~8 ~30 minecraft:sea_lantern
setblock ~28 ~10 ~32 minecraft:gold_block

# === EXIT LANE ===
fill ~35 ~-1 ~-4 ~50 ~-1 ~16 minecraft:smooth_sandstone
fill ~35 ~ ~-4 ~50 ~ ~-4 minecraft:jungle_fence
fill ~35 ~ ~16 ~50 ~ ~16 minecraft:jungle_fence
fill ~50 ~ ~-4 ~50 ~ ~16 minecraft:jungle_fence
fill ~46 ~ ~ ~46 ~3 ~ minecraft:jungle_fence
setblock ~46 ~4 ~ minecraft:lantern
fill ~46 ~ ~6 ~46 ~3 ~6 minecraft:jungle_fence
setblock ~46 ~4 ~6 minecraft:lantern
fill ~46 ~ ~12 ~46 ~3 ~12 minecraft:jungle_fence
setblock ~46 ~4 ~12 minecraft:lantern

# === BENCHES & REST AREAS ===
fill ~-45 ~ ~20 ~-39 ~ ~20 minecraft:jungle_planks
setblock ~-45 ~1 ~21 minecraft:jungle_fence
setblock ~-39 ~1 ~21 minecraft:jungle_fence
fill ~-33 ~ ~50 ~-27 ~ ~50 minecraft:jungle_planks
setblock ~-33 ~1 ~51 minecraft:jungle_fence
setblock ~-27 ~1 ~51 minecraft:jungle_fence
fill ~27 ~ ~50 ~33 ~ ~50 minecraft:jungle_planks
setblock ~27 ~1 ~51 minecraft:jungle_fence
setblock ~33 ~1 ~51 minecraft:jungle_fence
fill ~39 ~ ~20 ~45 ~ ~20 minecraft:jungle_planks
setblock ~39 ~1 ~21 minecraft:jungle_fence
setblock ~45 ~1 ~21 minecraft:jungle_fence
fill ~-45 ~ ~-20 ~-39 ~ ~-20 minecraft:jungle_planks
setblock ~-45 ~1 ~-19 minecraft:jungle_fence
setblock ~-39 ~1 ~-19 minecraft:jungle_fence
fill ~39 ~ ~-20 ~45 ~ ~-20 minecraft:jungle_planks
setblock ~39 ~1 ~-19 minecraft:jungle_fence
setblock ~45 ~1 ~-19 minecraft:jungle_fence

# === SACRIFICIAL-STYLE CEREMONIAL ALTAR COURTYARD ===
fill ~-17 ~ ~31 ~-5 ~ ~43 minecraft:stone_bricks
fill ~-15 ~1 ~33 ~-7 ~3 ~41 minecraft:red_sandstone
fill ~-13 ~4 ~35 ~-9 ~5 ~39 minecraft:gold_block
setblock ~-11 ~6 ~37 minecraft:sea_lantern
setblock ~-16 ~1 ~32 minecraft:lantern
setblock ~-6 ~1 ~32 minecraft:lantern
setblock ~-16 ~1 ~42 minecraft:lantern
setblock ~-6 ~1 ~42 minecraft:lantern

# === MONUMENTAL SERPENT HEAD FACADE ===
fill ~-6 ~8 ~-40 ~6 ~14 ~-37 minecraft:emerald_block
fill ~-4 ~10 ~-42 ~4 ~13 ~-40 minecraft:lime_concrete
fill ~-2 ~8 ~-44 ~2 ~10 ~-42 minecraft:red_wool
setblock ~-3 ~12 ~-43 minecraft:sea_lantern
setblock ~3 ~12 ~-43 minecraft:sea_lantern
setblock ~-2 ~9 ~-45 minecraft:quartz_block
setblock ~2 ~9 ~-45 minecraft:quartz_block

# === APPROACH LIGHTING ===
fill ~-16 ~ ~-50 ~-16 ~4 ~-50 minecraft:jungle_fence
setblock ~-16 ~5 ~-50 minecraft:lantern
fill ~-8 ~ ~-50 ~-8 ~4 ~-50 minecraft:jungle_fence
setblock ~-8 ~5 ~-50 minecraft:lantern
fill ~8 ~ ~-50 ~8 ~4 ~-50 minecraft:jungle_fence
setblock ~8 ~5 ~-50 minecraft:lantern
fill ~16 ~ ~-50 ~16 ~4 ~-50 minecraft:jungle_fence
setblock ~16 ~5 ~-50 minecraft:lantern
fill ~-48 ~ ~48 ~-48 ~5 ~48 minecraft:stone_bricks
setblock ~-48 ~6 ~48 minecraft:sea_lantern
fill ~48 ~ ~48 ~48 ~5 ~48 minecraft:stone_bricks
setblock ~48 ~6 ~48 minecraft:sea_lantern
fill ~-48 ~ ~-4 ~-48 ~5 ~-4 minecraft:stone_bricks
setblock ~-48 ~6 ~-4 minecraft:sea_lantern
fill ~48 ~ ~-4 ~48 ~5 ~-4 minecraft:stone_bricks
setblock ~48 ~6 ~-4 minecraft:sea_lantern

# === END OF BUILD ===
# Main entrance faces negative Z.
# Ride/loading chamber entrance is on the positive-X / positive-Z side.
# Run on flat open ground with at least 55 blocks of clearance in every horizontal direction.
# The attraction is decorative/static; animate separately if desired.
