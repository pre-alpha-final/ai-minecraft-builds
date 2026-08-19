# GRAND FERRIS WHEEL - Minecraft Bedrock Edition
# Run while standing at the CENTER of the attraction at ground level.
# Front/public entrance faces negative Z. Wheel lies in the X/Y plane.
# Approximate footprint: 89 x 57 blocks. Approximate top height: 69 blocks.

# === PLAZA & FOUNDATION ===
fill ~-44 ~-2 ~-28 ~44 ~-2 ~28 minecraft:stone_bricks
fill ~-42 ~-1 ~-26 ~42 ~-1 ~26 minecraft:smooth_stone
fill ~-34 ~-1 ~-18 ~34 ~-1 ~18 minecraft:polished_andesite
fill ~-10 ~-1 ~-26 ~10 ~-1 ~26 minecraft:stone_bricks
fill ~-3 ~-1 ~-26 ~3 ~-1 ~26 minecraft:gold_block

# === PERIMETER FENCE & MAIN ENTRY ===
fill ~-44 ~ ~-28 ~-8 ~ ~-28 minecraft:spruce_fence
fill ~8 ~ ~-28 ~44 ~ ~-28 minecraft:spruce_fence
fill ~-44 ~ ~28 ~44 ~ ~28 minecraft:spruce_fence
fill ~-44 ~ ~-28 ~-44 ~ ~28 minecraft:spruce_fence
fill ~44 ~ ~-28 ~44 ~ ~28 minecraft:spruce_fence
fill ~-8 ~ ~-28 ~-6 ~8 ~-28 minecraft:dark_oak_log
fill ~6 ~ ~-28 ~8 ~8 ~-28 minecraft:dark_oak_log
fill ~-8 ~8 ~-28 ~8 ~10 ~-28 minecraft:dark_oak_planks
fill ~-6 ~10 ~-28 ~6 ~11 ~-28 minecraft:red_wool
fill ~-2 ~11 ~-28 ~2 ~12 ~-28 minecraft:gold_block
setblock ~-5 ~9 ~-29 minecraft:lantern
setblock ~5 ~9 ~-29 minecraft:lantern
setblock ~-5 ~10 ~-29 minecraft:sea_lantern
setblock ~-3 ~10 ~-29 minecraft:sea_lantern
setblock ~-1 ~10 ~-29 minecraft:sea_lantern
setblock ~1 ~10 ~-29 minecraft:sea_lantern
setblock ~3 ~10 ~-29 minecraft:sea_lantern
setblock ~5 ~10 ~-29 minecraft:sea_lantern

# === QUEUE AREA ===
fill ~-40 ~-1 ~-24 ~-14 ~-1 ~-8 minecraft:smooth_stone
fill ~-39 ~ ~-23 ~-16 ~ ~-23 minecraft:spruce_fence
fill ~-39 ~ ~-19 ~-16 ~ ~-19 minecraft:spruce_fence
fill ~-39 ~ ~-15 ~-16 ~ ~-15 minecraft:spruce_fence
fill ~-39 ~ ~-11 ~-16 ~ ~-11 minecraft:spruce_fence
fill ~-39 ~ ~-23 ~-39 ~ ~-11 minecraft:spruce_fence
fill ~-16 ~ ~-19 ~-16 ~ ~-15 minecraft:spruce_fence
fill ~-16 ~ ~-11 ~-16 ~ ~-8 minecraft:spruce_fence
fill ~-37 ~ ~-22 ~-37 ~3 ~-22 minecraft:dark_oak_fence
setblock ~-37 ~4 ~-22 minecraft:lantern
fill ~-29 ~ ~-18 ~-29 ~3 ~-18 minecraft:dark_oak_fence
setblock ~-29 ~4 ~-18 minecraft:lantern
fill ~-21 ~ ~-14 ~-21 ~3 ~-14 minecraft:dark_oak_fence
setblock ~-21 ~4 ~-14 minecraft:lantern
fill ~-36 ~ ~-10 ~-36 ~3 ~-10 minecraft:dark_oak_fence
setblock ~-36 ~4 ~-10 minecraft:lantern

# === TICKET BOOTH ===
fill ~16 ~ ~-24 ~28 ~ ~-15 minecraft:stone_bricks
fill ~17 ~1 ~-23 ~27 ~5 ~-16 minecraft:dark_oak_planks
fill ~18 ~2 ~-24 ~26 ~4 ~-24 minecraft:glass
fill ~16 ~6 ~-24 ~28 ~7 ~-15 minecraft:red_wool
fill ~18 ~7 ~-25 ~26 ~8 ~-25 minecraft:gold_block
fill ~18 ~1 ~-25 ~26 ~2 ~-24 minecraft:oak_planks
setblock ~16 ~8 ~-20 minecraft:lantern
setblock ~28 ~8 ~-20 minecraft:lantern

# === LOADING PLATFORM ===
fill ~-15 ~ ~-8 ~15 ~ ~8 minecraft:stone_bricks
fill ~-13 ~1 ~-6 ~13 ~1 ~6 minecraft:oak_planks
fill ~-13 ~2 ~-6 ~-4 ~2 ~-6 minecraft:iron_bars
fill ~4 ~2 ~-6 ~13 ~2 ~-6 minecraft:iron_bars
fill ~-13 ~2 ~6 ~13 ~2 ~6 minecraft:iron_bars
fill ~-13 ~2 ~-6 ~-13 ~2 ~6 minecraft:iron_bars
fill ~13 ~2 ~-6 ~13 ~2 ~6 minecraft:iron_bars
fill ~-3 ~-1 ~-12 ~3 ~-1 ~-12 minecraft:stone_bricks
fill ~-3 ~ ~-11 ~3 ~ ~-11 minecraft:stone_bricks
fill ~-3 ~1 ~-10 ~3 ~1 ~-10 minecraft:stone_bricks
fill ~-3 ~2 ~-9 ~3 ~2 ~-9 minecraft:stone_bricks

# === SUPPORT FOOTINGS ===
fill ~-25 ~-1 ~-13 ~-19 ~1 ~-7 minecraft:stone_bricks
fill ~-25 ~-1 ~7 ~-19 ~1 ~13 minecraft:stone_bricks
fill ~19 ~-1 ~-13 ~25 ~1 ~-7 minecraft:stone_bricks
fill ~19 ~-1 ~7 ~25 ~1 ~13 minecraft:stone_bricks

# === GIANT A-FRAME SUPPORTS ===
fill ~-23 ~2 ~-9 ~-21 ~2 ~-7 minecraft:dark_oak_log
fill ~-22 ~3 ~-9 ~-20 ~3 ~-7 minecraft:dark_oak_log
fill ~-22 ~4 ~-9 ~-20 ~4 ~-7 minecraft:dark_oak_log
fill ~-21 ~5 ~-9 ~-19 ~5 ~-7 minecraft:dark_oak_log
fill ~-21 ~6 ~-9 ~-19 ~6 ~-7 minecraft:dark_oak_log
fill ~-20 ~7 ~-9 ~-18 ~7 ~-7 minecraft:dark_oak_log
fill ~-19 ~8 ~-9 ~-17 ~8 ~-7 minecraft:dark_oak_log
fill ~-19 ~9 ~-9 ~-17 ~9 ~-7 minecraft:dark_oak_log
fill ~-18 ~10 ~-9 ~-16 ~10 ~-7 minecraft:dark_oak_log
fill ~-18 ~11 ~-9 ~-16 ~11 ~-7 minecraft:dark_oak_log
fill ~-17 ~12 ~-9 ~-15 ~12 ~-7 minecraft:dark_oak_log
fill ~-16 ~13 ~-9 ~-14 ~13 ~-7 minecraft:dark_oak_log
fill ~-16 ~14 ~-9 ~-14 ~14 ~-7 minecraft:dark_oak_log
fill ~-15 ~15 ~-9 ~-13 ~15 ~-7 minecraft:dark_oak_log
fill ~-15 ~16 ~-9 ~-13 ~16 ~-7 minecraft:dark_oak_log
fill ~-14 ~17 ~-9 ~-12 ~17 ~-7 minecraft:dark_oak_log
fill ~-13 ~18 ~-9 ~-11 ~18 ~-7 minecraft:dark_oak_log
fill ~-13 ~19 ~-9 ~-11 ~19 ~-7 minecraft:dark_oak_log
fill ~-12 ~20 ~-9 ~-10 ~20 ~-7 minecraft:dark_oak_log
fill ~-12 ~21 ~-9 ~-10 ~21 ~-7 minecraft:dark_oak_log
fill ~-11 ~22 ~-9 ~-9 ~22 ~-7 minecraft:dark_oak_log
fill ~-11 ~23 ~-9 ~-9 ~23 ~-7 minecraft:dark_oak_log
fill ~-10 ~24 ~-9 ~-8 ~24 ~-7 minecraft:dark_oak_log
fill ~-9 ~25 ~-9 ~-7 ~25 ~-7 minecraft:dark_oak_log
fill ~-9 ~26 ~-9 ~-7 ~26 ~-7 minecraft:dark_oak_log
fill ~-8 ~27 ~-9 ~-6 ~27 ~-7 minecraft:dark_oak_log
fill ~-8 ~28 ~-9 ~-6 ~28 ~-7 minecraft:dark_oak_log
fill ~-7 ~29 ~-9 ~-5 ~29 ~-7 minecraft:dark_oak_log
fill ~-6 ~30 ~-9 ~-4 ~30 ~-7 minecraft:dark_oak_log
fill ~-6 ~31 ~-9 ~-4 ~31 ~-7 minecraft:dark_oak_log
fill ~-5 ~32 ~-9 ~-3 ~32 ~-7 minecraft:dark_oak_log
fill ~-5 ~33 ~-9 ~-3 ~33 ~-7 minecraft:dark_oak_log
fill ~-4 ~34 ~-9 ~-2 ~34 ~-7 minecraft:dark_oak_log
fill ~21 ~2 ~-9 ~23 ~2 ~-7 minecraft:dark_oak_log
fill ~20 ~3 ~-9 ~22 ~3 ~-7 minecraft:dark_oak_log
fill ~20 ~4 ~-9 ~22 ~4 ~-7 minecraft:dark_oak_log
fill ~19 ~5 ~-9 ~21 ~5 ~-7 minecraft:dark_oak_log
fill ~19 ~6 ~-9 ~21 ~6 ~-7 minecraft:dark_oak_log
fill ~18 ~7 ~-9 ~20 ~7 ~-7 minecraft:dark_oak_log
fill ~17 ~8 ~-9 ~19 ~8 ~-7 minecraft:dark_oak_log
fill ~17 ~9 ~-9 ~19 ~9 ~-7 minecraft:dark_oak_log
fill ~16 ~10 ~-9 ~18 ~10 ~-7 minecraft:dark_oak_log
fill ~16 ~11 ~-9 ~18 ~11 ~-7 minecraft:dark_oak_log
fill ~15 ~12 ~-9 ~17 ~12 ~-7 minecraft:dark_oak_log
fill ~14 ~13 ~-9 ~16 ~13 ~-7 minecraft:dark_oak_log
fill ~14 ~14 ~-9 ~16 ~14 ~-7 minecraft:dark_oak_log
fill ~13 ~15 ~-9 ~15 ~15 ~-7 minecraft:dark_oak_log
fill ~13 ~16 ~-9 ~15 ~16 ~-7 minecraft:dark_oak_log
fill ~12 ~17 ~-9 ~14 ~17 ~-7 minecraft:dark_oak_log
fill ~11 ~18 ~-9 ~13 ~18 ~-7 minecraft:dark_oak_log
fill ~11 ~19 ~-9 ~13 ~19 ~-7 minecraft:dark_oak_log
fill ~10 ~20 ~-9 ~12 ~20 ~-7 minecraft:dark_oak_log
fill ~10 ~21 ~-9 ~12 ~21 ~-7 minecraft:dark_oak_log
fill ~9 ~22 ~-9 ~11 ~22 ~-7 minecraft:dark_oak_log
fill ~9 ~23 ~-9 ~11 ~23 ~-7 minecraft:dark_oak_log
fill ~8 ~24 ~-9 ~10 ~24 ~-7 minecraft:dark_oak_log
fill ~7 ~25 ~-9 ~9 ~25 ~-7 minecraft:dark_oak_log
fill ~7 ~26 ~-9 ~9 ~26 ~-7 minecraft:dark_oak_log
fill ~6 ~27 ~-9 ~8 ~27 ~-7 minecraft:dark_oak_log
fill ~6 ~28 ~-9 ~8 ~28 ~-7 minecraft:dark_oak_log
fill ~5 ~29 ~-9 ~7 ~29 ~-7 minecraft:dark_oak_log
fill ~4 ~30 ~-9 ~6 ~30 ~-7 minecraft:dark_oak_log
fill ~4 ~31 ~-9 ~6 ~31 ~-7 minecraft:dark_oak_log
fill ~3 ~32 ~-9 ~5 ~32 ~-7 minecraft:dark_oak_log
fill ~3 ~33 ~-9 ~5 ~33 ~-7 minecraft:dark_oak_log
fill ~2 ~34 ~-9 ~4 ~34 ~-7 minecraft:dark_oak_log
fill ~-17 ~10 ~-9 ~17 ~11 ~-7 minecraft:spruce_planks
fill ~-12 ~18 ~-9 ~12 ~19 ~-7 minecraft:spruce_planks
fill ~-8 ~26 ~-9 ~8 ~27 ~-7 minecraft:spruce_planks
fill ~-23 ~2 ~7 ~-21 ~2 ~9 minecraft:dark_oak_log
fill ~-22 ~3 ~7 ~-20 ~3 ~9 minecraft:dark_oak_log
fill ~-22 ~4 ~7 ~-20 ~4 ~9 minecraft:dark_oak_log
fill ~-21 ~5 ~7 ~-19 ~5 ~9 minecraft:dark_oak_log
fill ~-21 ~6 ~7 ~-19 ~6 ~9 minecraft:dark_oak_log
fill ~-20 ~7 ~7 ~-18 ~7 ~9 minecraft:dark_oak_log
fill ~-19 ~8 ~7 ~-17 ~8 ~9 minecraft:dark_oak_log
fill ~-19 ~9 ~7 ~-17 ~9 ~9 minecraft:dark_oak_log
fill ~-18 ~10 ~7 ~-16 ~10 ~9 minecraft:dark_oak_log
fill ~-18 ~11 ~7 ~-16 ~11 ~9 minecraft:dark_oak_log
fill ~-17 ~12 ~7 ~-15 ~12 ~9 minecraft:dark_oak_log
fill ~-16 ~13 ~7 ~-14 ~13 ~9 minecraft:dark_oak_log
fill ~-16 ~14 ~7 ~-14 ~14 ~9 minecraft:dark_oak_log
fill ~-15 ~15 ~7 ~-13 ~15 ~9 minecraft:dark_oak_log
fill ~-15 ~16 ~7 ~-13 ~16 ~9 minecraft:dark_oak_log
fill ~-14 ~17 ~7 ~-12 ~17 ~9 minecraft:dark_oak_log
fill ~-13 ~18 ~7 ~-11 ~18 ~9 minecraft:dark_oak_log
fill ~-13 ~19 ~7 ~-11 ~19 ~9 minecraft:dark_oak_log
fill ~-12 ~20 ~7 ~-10 ~20 ~9 minecraft:dark_oak_log
fill ~-12 ~21 ~7 ~-10 ~21 ~9 minecraft:dark_oak_log
fill ~-11 ~22 ~7 ~-9 ~22 ~9 minecraft:dark_oak_log
fill ~-11 ~23 ~7 ~-9 ~23 ~9 minecraft:dark_oak_log
fill ~-10 ~24 ~7 ~-8 ~24 ~9 minecraft:dark_oak_log
fill ~-9 ~25 ~7 ~-7 ~25 ~9 minecraft:dark_oak_log
fill ~-9 ~26 ~7 ~-7 ~26 ~9 minecraft:dark_oak_log
fill ~-8 ~27 ~7 ~-6 ~27 ~9 minecraft:dark_oak_log
fill ~-8 ~28 ~7 ~-6 ~28 ~9 minecraft:dark_oak_log
fill ~-7 ~29 ~7 ~-5 ~29 ~9 minecraft:dark_oak_log
fill ~-6 ~30 ~7 ~-4 ~30 ~9 minecraft:dark_oak_log
fill ~-6 ~31 ~7 ~-4 ~31 ~9 minecraft:dark_oak_log
fill ~-5 ~32 ~7 ~-3 ~32 ~9 minecraft:dark_oak_log
fill ~-5 ~33 ~7 ~-3 ~33 ~9 minecraft:dark_oak_log
fill ~-4 ~34 ~7 ~-2 ~34 ~9 minecraft:dark_oak_log
fill ~21 ~2 ~7 ~23 ~2 ~9 minecraft:dark_oak_log
fill ~20 ~3 ~7 ~22 ~3 ~9 minecraft:dark_oak_log
fill ~20 ~4 ~7 ~22 ~4 ~9 minecraft:dark_oak_log
fill ~19 ~5 ~7 ~21 ~5 ~9 minecraft:dark_oak_log
fill ~19 ~6 ~7 ~21 ~6 ~9 minecraft:dark_oak_log
fill ~18 ~7 ~7 ~20 ~7 ~9 minecraft:dark_oak_log
fill ~17 ~8 ~7 ~19 ~8 ~9 minecraft:dark_oak_log
fill ~17 ~9 ~7 ~19 ~9 ~9 minecraft:dark_oak_log
fill ~16 ~10 ~7 ~18 ~10 ~9 minecraft:dark_oak_log
fill ~16 ~11 ~7 ~18 ~11 ~9 minecraft:dark_oak_log
fill ~15 ~12 ~7 ~17 ~12 ~9 minecraft:dark_oak_log
fill ~14 ~13 ~7 ~16 ~13 ~9 minecraft:dark_oak_log
fill ~14 ~14 ~7 ~16 ~14 ~9 minecraft:dark_oak_log
fill ~13 ~15 ~7 ~15 ~15 ~9 minecraft:dark_oak_log
fill ~13 ~16 ~7 ~15 ~16 ~9 minecraft:dark_oak_log
fill ~12 ~17 ~7 ~14 ~17 ~9 minecraft:dark_oak_log
fill ~11 ~18 ~7 ~13 ~18 ~9 minecraft:dark_oak_log
fill ~11 ~19 ~7 ~13 ~19 ~9 minecraft:dark_oak_log
fill ~10 ~20 ~7 ~12 ~20 ~9 minecraft:dark_oak_log
fill ~10 ~21 ~7 ~12 ~21 ~9 minecraft:dark_oak_log
fill ~9 ~22 ~7 ~11 ~22 ~9 minecraft:dark_oak_log
fill ~9 ~23 ~7 ~11 ~23 ~9 minecraft:dark_oak_log
fill ~8 ~24 ~7 ~10 ~24 ~9 minecraft:dark_oak_log
fill ~7 ~25 ~7 ~9 ~25 ~9 minecraft:dark_oak_log
fill ~7 ~26 ~7 ~9 ~26 ~9 minecraft:dark_oak_log
fill ~6 ~27 ~7 ~8 ~27 ~9 minecraft:dark_oak_log
fill ~6 ~28 ~7 ~8 ~28 ~9 minecraft:dark_oak_log
fill ~5 ~29 ~7 ~7 ~29 ~9 minecraft:dark_oak_log
fill ~4 ~30 ~7 ~6 ~30 ~9 minecraft:dark_oak_log
fill ~4 ~31 ~7 ~6 ~31 ~9 minecraft:dark_oak_log
fill ~3 ~32 ~7 ~5 ~32 ~9 minecraft:dark_oak_log
fill ~3 ~33 ~7 ~5 ~33 ~9 minecraft:dark_oak_log
fill ~2 ~34 ~7 ~4 ~34 ~9 minecraft:dark_oak_log
fill ~-17 ~10 ~7 ~17 ~11 ~9 minecraft:spruce_planks
fill ~-12 ~18 ~7 ~12 ~19 ~9 minecraft:spruce_planks
fill ~-8 ~26 ~7 ~8 ~27 ~9 minecraft:spruce_planks
fill ~-5 ~33 ~-11 ~5 ~37 ~11 minecraft:dark_oak_log
fill ~-3 ~34 ~-13 ~3 ~36 ~13 minecraft:iron_block

# === HUB & AXLE ===
fill ~-4 ~31 ~-4 ~4 ~39 ~4 minecraft:iron_block
fill ~-6 ~33 ~-2 ~6 ~37 ~2 minecraft:gold_block
fill ~-2 ~33 ~-12 ~2 ~37 ~12 minecraft:iron_block
fill ~-1 ~34 ~-14 ~1 ~36 ~14 minecraft:gold_block
setblock ~ ~35 ~-15 minecraft:sea_lantern
setblock ~ ~35 ~15 minecraft:sea_lantern

# === DOUBLE FERRIS WHEEL RIMS ===
setblock ~-31 ~30 ~-4 minecraft:iron_block
setblock ~-31 ~30 ~4 minecraft:iron_block
setblock ~-31 ~31 ~-4 minecraft:iron_block
setblock ~-31 ~31 ~4 minecraft:iron_block
setblock ~-31 ~32 ~-4 minecraft:iron_block
setblock ~-31 ~32 ~4 minecraft:iron_block
setblock ~-31 ~33 ~-4 minecraft:iron_block
setblock ~-31 ~33 ~4 minecraft:iron_block
setblock ~-31 ~34 ~-4 minecraft:iron_block
setblock ~-31 ~34 ~4 minecraft:iron_block
setblock ~-31 ~35 ~-4 minecraft:iron_block
setblock ~-31 ~35 ~4 minecraft:iron_block
setblock ~-31 ~36 ~-4 minecraft:iron_block
setblock ~-31 ~36 ~4 minecraft:iron_block
setblock ~-31 ~37 ~-4 minecraft:iron_block
setblock ~-31 ~37 ~4 minecraft:iron_block
setblock ~-31 ~38 ~-4 minecraft:iron_block
setblock ~-31 ~38 ~4 minecraft:iron_block
setblock ~-31 ~39 ~-4 minecraft:iron_block
setblock ~-31 ~39 ~4 minecraft:iron_block
setblock ~-31 ~40 ~-4 minecraft:iron_block
setblock ~-31 ~40 ~4 minecraft:iron_block
setblock ~-30 ~26 ~-4 minecraft:iron_block
setblock ~-30 ~26 ~4 minecraft:iron_block
setblock ~-30 ~27 ~-4 minecraft:iron_block
setblock ~-30 ~27 ~4 minecraft:iron_block
setblock ~-30 ~28 ~-4 minecraft:iron_block
setblock ~-30 ~28 ~4 minecraft:iron_block
setblock ~-30 ~29 ~-4 minecraft:iron_block
setblock ~-30 ~29 ~4 minecraft:iron_block
setblock ~-30 ~30 ~-4 minecraft:iron_block
setblock ~-30 ~30 ~4 minecraft:iron_block
setblock ~-30 ~31 ~-4 minecraft:iron_block
setblock ~-30 ~31 ~4 minecraft:iron_block
setblock ~-30 ~32 ~-4 minecraft:iron_block
setblock ~-30 ~32 ~4 minecraft:iron_block
setblock ~-30 ~33 ~-4 minecraft:iron_block
setblock ~-30 ~33 ~4 minecraft:iron_block
setblock ~-30 ~34 ~-4 minecraft:iron_block
setblock ~-30 ~34 ~4 minecraft:iron_block
setblock ~-30 ~35 ~-4 minecraft:iron_block
setblock ~-30 ~35 ~4 minecraft:iron_block
setblock ~-30 ~36 ~-4 minecraft:iron_block
setblock ~-30 ~36 ~4 minecraft:iron_block
setblock ~-30 ~37 ~-4 minecraft:iron_block
setblock ~-30 ~37 ~4 minecraft:iron_block
setblock ~-30 ~38 ~-4 minecraft:iron_block
setblock ~-30 ~38 ~4 minecraft:iron_block
setblock ~-30 ~39 ~-4 minecraft:iron_block
setblock ~-30 ~39 ~4 minecraft:iron_block
setblock ~-30 ~40 ~-4 minecraft:iron_block
setblock ~-30 ~40 ~4 minecraft:iron_block
setblock ~-30 ~41 ~-4 minecraft:iron_block
setblock ~-30 ~41 ~4 minecraft:iron_block
setblock ~-30 ~42 ~-4 minecraft:iron_block
setblock ~-30 ~42 ~4 minecraft:iron_block
setblock ~-30 ~43 ~-4 minecraft:iron_block
setblock ~-30 ~43 ~4 minecraft:iron_block
setblock ~-30 ~44 ~-4 minecraft:iron_block
setblock ~-30 ~44 ~4 minecraft:iron_block
setblock ~-29 ~23 ~-4 minecraft:iron_block
setblock ~-29 ~23 ~4 minecraft:iron_block
setblock ~-29 ~24 ~-4 minecraft:iron_block
setblock ~-29 ~24 ~4 minecraft:iron_block
setblock ~-29 ~25 ~-4 minecraft:iron_block
setblock ~-29 ~25 ~4 minecraft:iron_block
setblock ~-29 ~26 ~-4 minecraft:iron_block
setblock ~-29 ~26 ~4 minecraft:iron_block
setblock ~-29 ~27 ~-4 minecraft:iron_block
setblock ~-29 ~27 ~4 minecraft:iron_block
setblock ~-29 ~28 ~-4 minecraft:iron_block
setblock ~-29 ~28 ~4 minecraft:iron_block
setblock ~-29 ~29 ~-4 minecraft:iron_block
setblock ~-29 ~29 ~4 minecraft:iron_block
setblock ~-29 ~30 ~-4 minecraft:iron_block
setblock ~-29 ~30 ~4 minecraft:iron_block
setblock ~-29 ~31 ~-4 minecraft:iron_block
setblock ~-29 ~31 ~4 minecraft:iron_block
setblock ~-29 ~32 ~-4 minecraft:iron_block
setblock ~-29 ~32 ~4 minecraft:iron_block
setblock ~-29 ~33 ~-4 minecraft:iron_block
setblock ~-29 ~33 ~4 minecraft:iron_block
setblock ~-29 ~34 ~-4 minecraft:iron_block
setblock ~-29 ~34 ~4 minecraft:iron_block
setblock ~-29 ~35 ~-4 minecraft:iron_block
setblock ~-29 ~35 ~4 minecraft:iron_block
setblock ~-29 ~36 ~-4 minecraft:iron_block
setblock ~-29 ~36 ~4 minecraft:iron_block
setblock ~-29 ~37 ~-4 minecraft:iron_block
setblock ~-29 ~37 ~4 minecraft:iron_block
setblock ~-29 ~38 ~-4 minecraft:iron_block
setblock ~-29 ~38 ~4 minecraft:iron_block
setblock ~-29 ~39 ~-4 minecraft:iron_block
setblock ~-29 ~39 ~4 minecraft:iron_block
setblock ~-29 ~40 ~-4 minecraft:iron_block
setblock ~-29 ~40 ~4 minecraft:iron_block
setblock ~-29 ~41 ~-4 minecraft:iron_block
setblock ~-29 ~41 ~4 minecraft:iron_block
setblock ~-29 ~42 ~-4 minecraft:iron_block
setblock ~-29 ~42 ~4 minecraft:iron_block
setblock ~-29 ~43 ~-4 minecraft:iron_block
setblock ~-29 ~43 ~4 minecraft:iron_block
setblock ~-29 ~44 ~-4 minecraft:iron_block
setblock ~-29 ~44 ~4 minecraft:iron_block
setblock ~-29 ~45 ~-4 minecraft:iron_block
setblock ~-29 ~45 ~4 minecraft:iron_block
setblock ~-29 ~46 ~-4 minecraft:iron_block
setblock ~-29 ~46 ~4 minecraft:iron_block
setblock ~-29 ~47 ~-4 minecraft:iron_block
setblock ~-29 ~47 ~4 minecraft:iron_block
setblock ~-28 ~21 ~-4 minecraft:iron_block
setblock ~-28 ~21 ~4 minecraft:iron_block
setblock ~-28 ~22 ~-4 minecraft:iron_block
setblock ~-28 ~22 ~4 minecraft:iron_block
setblock ~-28 ~23 ~-4 minecraft:iron_block
setblock ~-28 ~23 ~4 minecraft:iron_block
setblock ~-28 ~24 ~-4 minecraft:iron_block
setblock ~-28 ~24 ~4 minecraft:iron_block
setblock ~-28 ~25 ~-4 minecraft:iron_block
setblock ~-28 ~25 ~4 minecraft:iron_block
setblock ~-28 ~26 ~-4 minecraft:iron_block
setblock ~-28 ~26 ~4 minecraft:iron_block
setblock ~-28 ~27 ~-4 minecraft:iron_block
setblock ~-28 ~27 ~4 minecraft:iron_block
setblock ~-28 ~28 ~-4 minecraft:iron_block
setblock ~-28 ~28 ~4 minecraft:iron_block
setblock ~-28 ~29 ~-4 minecraft:iron_block
setblock ~-28 ~29 ~4 minecraft:iron_block
setblock ~-28 ~30 ~-4 minecraft:iron_block
setblock ~-28 ~30 ~4 minecraft:iron_block
setblock ~-28 ~31 ~-4 minecraft:iron_block
setblock ~-28 ~31 ~4 minecraft:iron_block
setblock ~-28 ~32 ~-4 minecraft:iron_block
setblock ~-28 ~32 ~4 minecraft:iron_block
setblock ~-28 ~33 ~-4 minecraft:iron_block
setblock ~-28 ~33 ~4 minecraft:iron_block
setblock ~-28 ~34 ~-4 minecraft:iron_block
setblock ~-28 ~34 ~4 minecraft:iron_block
setblock ~-28 ~35 ~-4 minecraft:iron_block
setblock ~-28 ~35 ~4 minecraft:iron_block
setblock ~-28 ~36 ~-4 minecraft:iron_block
setblock ~-28 ~36 ~4 minecraft:iron_block
setblock ~-28 ~37 ~-4 minecraft:iron_block
setblock ~-28 ~37 ~4 minecraft:iron_block
setblock ~-28 ~38 ~-4 minecraft:iron_block
setblock ~-28 ~38 ~4 minecraft:iron_block
setblock ~-28 ~39 ~-4 minecraft:iron_block
setblock ~-28 ~39 ~4 minecraft:iron_block
setblock ~-28 ~40 ~-4 minecraft:iron_block
setblock ~-28 ~40 ~4 minecraft:iron_block
setblock ~-28 ~41 ~-4 minecraft:iron_block
setblock ~-28 ~41 ~4 minecraft:iron_block
setblock ~-28 ~42 ~-4 minecraft:iron_block
setblock ~-28 ~42 ~4 minecraft:iron_block
setblock ~-28 ~43 ~-4 minecraft:iron_block
setblock ~-28 ~43 ~4 minecraft:iron_block
setblock ~-28 ~44 ~-4 minecraft:iron_block
setblock ~-28 ~44 ~4 minecraft:iron_block
setblock ~-28 ~45 ~-4 minecraft:iron_block
setblock ~-28 ~45 ~4 minecraft:iron_block
setblock ~-28 ~46 ~-4 minecraft:iron_block
setblock ~-28 ~46 ~4 minecraft:iron_block
setblock ~-28 ~47 ~-4 minecraft:iron_block
setblock ~-28 ~47 ~4 minecraft:iron_block
setblock ~-28 ~48 ~-4 minecraft:iron_block
setblock ~-28 ~48 ~4 minecraft:iron_block
setblock ~-28 ~49 ~-4 minecraft:iron_block
setblock ~-28 ~49 ~4 minecraft:iron_block
setblock ~-27 ~19 ~-4 minecraft:iron_block
setblock ~-27 ~19 ~4 minecraft:iron_block
setblock ~-27 ~20 ~-4 minecraft:iron_block
setblock ~-27 ~20 ~4 minecraft:iron_block
setblock ~-27 ~21 ~-4 minecraft:iron_block
setblock ~-27 ~21 ~4 minecraft:iron_block
setblock ~-27 ~22 ~-4 minecraft:iron_block
setblock ~-27 ~22 ~4 minecraft:iron_block
setblock ~-27 ~23 ~-4 minecraft:iron_block
setblock ~-27 ~23 ~4 minecraft:iron_block
setblock ~-27 ~24 ~-4 minecraft:iron_block
setblock ~-27 ~24 ~4 minecraft:iron_block
setblock ~-27 ~25 ~-4 minecraft:iron_block
setblock ~-27 ~25 ~4 minecraft:iron_block
setblock ~-27 ~26 ~-4 minecraft:iron_block
setblock ~-27 ~26 ~4 minecraft:iron_block
setblock ~-27 ~27 ~-4 minecraft:iron_block
setblock ~-27 ~27 ~4 minecraft:iron_block
setblock ~-27 ~28 ~-4 minecraft:iron_block
setblock ~-27 ~28 ~4 minecraft:iron_block
setblock ~-27 ~29 ~-4 minecraft:iron_block
setblock ~-27 ~29 ~4 minecraft:iron_block
setblock ~-27 ~30 ~-4 minecraft:iron_block
setblock ~-27 ~30 ~4 minecraft:iron_block
setblock ~-27 ~40 ~-4 minecraft:iron_block
setblock ~-27 ~40 ~4 minecraft:iron_block
setblock ~-27 ~41 ~-4 minecraft:iron_block
setblock ~-27 ~41 ~4 minecraft:iron_block
setblock ~-27 ~42 ~-4 minecraft:iron_block
setblock ~-27 ~42 ~4 minecraft:iron_block
setblock ~-27 ~43 ~-4 minecraft:iron_block
setblock ~-27 ~43 ~4 minecraft:iron_block
setblock ~-27 ~44 ~-4 minecraft:iron_block
setblock ~-27 ~44 ~4 minecraft:iron_block
setblock ~-27 ~45 ~-4 minecraft:iron_block
setblock ~-27 ~45 ~4 minecraft:iron_block
setblock ~-27 ~46 ~-4 minecraft:iron_block
setblock ~-27 ~46 ~4 minecraft:iron_block
setblock ~-27 ~47 ~-4 minecraft:iron_block
setblock ~-27 ~47 ~4 minecraft:iron_block
setblock ~-27 ~48 ~-4 minecraft:iron_block
setblock ~-27 ~48 ~4 minecraft:iron_block
setblock ~-27 ~49 ~-4 minecraft:iron_block
setblock ~-27 ~49 ~4 minecraft:iron_block
setblock ~-27 ~50 ~-4 minecraft:iron_block
setblock ~-27 ~50 ~4 minecraft:iron_block
setblock ~-27 ~51 ~-4 minecraft:iron_block
setblock ~-27 ~51 ~4 minecraft:iron_block
setblock ~-26 ~18 ~-4 minecraft:iron_block
setblock ~-26 ~18 ~4 minecraft:iron_block
setblock ~-26 ~19 ~-4 minecraft:iron_block
setblock ~-26 ~19 ~4 minecraft:iron_block
setblock ~-26 ~20 ~-4 minecraft:iron_block
setblock ~-26 ~20 ~4 minecraft:iron_block
setblock ~-26 ~21 ~-4 minecraft:iron_block
setblock ~-26 ~21 ~4 minecraft:iron_block
setblock ~-26 ~22 ~-4 minecraft:iron_block
setblock ~-26 ~22 ~4 minecraft:iron_block
setblock ~-26 ~23 ~-4 minecraft:iron_block
setblock ~-26 ~23 ~4 minecraft:iron_block
setblock ~-26 ~24 ~-4 minecraft:iron_block
setblock ~-26 ~24 ~4 minecraft:iron_block
setblock ~-26 ~25 ~-4 minecraft:iron_block
setblock ~-26 ~25 ~4 minecraft:iron_block
setblock ~-26 ~26 ~-4 minecraft:iron_block
setblock ~-26 ~26 ~4 minecraft:iron_block
setblock ~-26 ~44 ~-4 minecraft:iron_block
setblock ~-26 ~44 ~4 minecraft:iron_block
setblock ~-26 ~45 ~-4 minecraft:iron_block
setblock ~-26 ~45 ~4 minecraft:iron_block
setblock ~-26 ~46 ~-4 minecraft:iron_block
setblock ~-26 ~46 ~4 minecraft:iron_block
setblock ~-26 ~47 ~-4 minecraft:iron_block
setblock ~-26 ~47 ~4 minecraft:iron_block
setblock ~-26 ~48 ~-4 minecraft:iron_block
setblock ~-26 ~48 ~4 minecraft:iron_block
setblock ~-26 ~49 ~-4 minecraft:iron_block
setblock ~-26 ~49 ~4 minecraft:iron_block
setblock ~-26 ~50 ~-4 minecraft:iron_block
setblock ~-26 ~50 ~4 minecraft:iron_block
setblock ~-26 ~51 ~-4 minecraft:iron_block
setblock ~-26 ~51 ~4 minecraft:iron_block
setblock ~-26 ~52 ~-4 minecraft:iron_block
setblock ~-26 ~52 ~4 minecraft:iron_block
setblock ~-25 ~16 ~-4 minecraft:iron_block
setblock ~-25 ~16 ~4 minecraft:iron_block
setblock ~-25 ~17 ~-4 minecraft:iron_block
setblock ~-25 ~17 ~4 minecraft:iron_block
setblock ~-25 ~18 ~-4 minecraft:iron_block
setblock ~-25 ~18 ~4 minecraft:iron_block
setblock ~-25 ~19 ~-4 minecraft:iron_block
setblock ~-25 ~19 ~4 minecraft:iron_block
setblock ~-25 ~20 ~-4 minecraft:iron_block
setblock ~-25 ~20 ~4 minecraft:iron_block
setblock ~-25 ~21 ~-4 minecraft:iron_block
setblock ~-25 ~21 ~4 minecraft:iron_block
setblock ~-25 ~22 ~-4 minecraft:iron_block
setblock ~-25 ~22 ~4 minecraft:iron_block
setblock ~-25 ~23 ~-4 minecraft:iron_block
setblock ~-25 ~23 ~4 minecraft:iron_block
setblock ~-25 ~47 ~-4 minecraft:iron_block
setblock ~-25 ~47 ~4 minecraft:iron_block
setblock ~-25 ~48 ~-4 minecraft:iron_block
setblock ~-25 ~48 ~4 minecraft:iron_block
setblock ~-25 ~49 ~-4 minecraft:iron_block
setblock ~-25 ~49 ~4 minecraft:iron_block
setblock ~-25 ~50 ~-4 minecraft:iron_block
setblock ~-25 ~50 ~4 minecraft:iron_block
setblock ~-25 ~51 ~-4 minecraft:iron_block
setblock ~-25 ~51 ~4 minecraft:iron_block
setblock ~-25 ~52 ~-4 minecraft:iron_block
setblock ~-25 ~52 ~4 minecraft:iron_block
setblock ~-25 ~53 ~-4 minecraft:iron_block
setblock ~-25 ~53 ~4 minecraft:iron_block
setblock ~-25 ~54 ~-4 minecraft:iron_block
setblock ~-25 ~54 ~4 minecraft:iron_block
setblock ~-24 ~15 ~-4 minecraft:iron_block
setblock ~-24 ~15 ~4 minecraft:iron_block
setblock ~-24 ~16 ~-4 minecraft:iron_block
setblock ~-24 ~16 ~4 minecraft:iron_block
setblock ~-24 ~17 ~-4 minecraft:iron_block
setblock ~-24 ~17 ~4 minecraft:iron_block
setblock ~-24 ~18 ~-4 minecraft:iron_block
setblock ~-24 ~18 ~4 minecraft:iron_block
setblock ~-24 ~19 ~-4 minecraft:iron_block
setblock ~-24 ~19 ~4 minecraft:iron_block
setblock ~-24 ~20 ~-4 minecraft:iron_block
setblock ~-24 ~20 ~4 minecraft:iron_block
setblock ~-24 ~21 ~-4 minecraft:iron_block
setblock ~-24 ~21 ~4 minecraft:iron_block
setblock ~-24 ~49 ~-4 minecraft:iron_block
setblock ~-24 ~49 ~4 minecraft:iron_block
setblock ~-24 ~50 ~-4 minecraft:iron_block
setblock ~-24 ~50 ~4 minecraft:iron_block
setblock ~-24 ~51 ~-4 minecraft:iron_block
setblock ~-24 ~51 ~4 minecraft:iron_block
setblock ~-24 ~52 ~-4 minecraft:iron_block
setblock ~-24 ~52 ~4 minecraft:iron_block
setblock ~-24 ~53 ~-4 minecraft:iron_block
setblock ~-24 ~53 ~4 minecraft:iron_block
setblock ~-24 ~54 ~-4 minecraft:iron_block
setblock ~-24 ~54 ~4 minecraft:iron_block
setblock ~-24 ~55 ~-4 minecraft:iron_block
setblock ~-24 ~55 ~4 minecraft:iron_block
setblock ~-23 ~14 ~-4 minecraft:iron_block
setblock ~-23 ~14 ~4 minecraft:iron_block
setblock ~-23 ~15 ~-4 minecraft:iron_block
setblock ~-23 ~15 ~4 minecraft:iron_block
setblock ~-23 ~16 ~-4 minecraft:iron_block
setblock ~-23 ~16 ~4 minecraft:iron_block
setblock ~-23 ~17 ~-4 minecraft:iron_block
setblock ~-23 ~17 ~4 minecraft:iron_block
setblock ~-23 ~18 ~-4 minecraft:iron_block
setblock ~-23 ~18 ~4 minecraft:iron_block
setblock ~-23 ~19 ~-4 minecraft:iron_block
setblock ~-23 ~19 ~4 minecraft:iron_block
setblock ~-23 ~20 ~-4 minecraft:iron_block
setblock ~-23 ~20 ~4 minecraft:iron_block
setblock ~-23 ~50 ~-4 minecraft:iron_block
setblock ~-23 ~50 ~4 minecraft:iron_block
setblock ~-23 ~51 ~-4 minecraft:iron_block
setblock ~-23 ~51 ~4 minecraft:iron_block
setblock ~-23 ~52 ~-4 minecraft:iron_block
setblock ~-23 ~52 ~4 minecraft:iron_block
setblock ~-23 ~53 ~-4 minecraft:iron_block
setblock ~-23 ~53 ~4 minecraft:iron_block
setblock ~-23 ~54 ~-4 minecraft:iron_block
setblock ~-23 ~54 ~4 minecraft:iron_block
setblock ~-23 ~55 ~-4 minecraft:iron_block
setblock ~-23 ~55 ~4 minecraft:iron_block
setblock ~-23 ~56 ~-4 minecraft:iron_block
setblock ~-23 ~56 ~4 minecraft:iron_block
setblock ~-22 ~13 ~-4 minecraft:iron_block
setblock ~-22 ~13 ~4 minecraft:iron_block
setblock ~-22 ~14 ~-4 minecraft:iron_block
setblock ~-22 ~14 ~4 minecraft:iron_block
setblock ~-22 ~15 ~-4 minecraft:iron_block
setblock ~-22 ~15 ~4 minecraft:iron_block
setblock ~-22 ~16 ~-4 minecraft:iron_block
setblock ~-22 ~16 ~4 minecraft:iron_block
setblock ~-22 ~17 ~-4 minecraft:iron_block
setblock ~-22 ~17 ~4 minecraft:iron_block
setblock ~-22 ~18 ~-4 minecraft:iron_block
setblock ~-22 ~18 ~4 minecraft:iron_block
setblock ~-22 ~52 ~-4 minecraft:iron_block
setblock ~-22 ~52 ~4 minecraft:iron_block
setblock ~-22 ~53 ~-4 minecraft:iron_block
setblock ~-22 ~53 ~4 minecraft:iron_block
setblock ~-22 ~54 ~-4 minecraft:iron_block
setblock ~-22 ~54 ~4 minecraft:iron_block
setblock ~-22 ~55 ~-4 minecraft:iron_block
setblock ~-22 ~55 ~4 minecraft:iron_block
setblock ~-22 ~56 ~-4 minecraft:iron_block
setblock ~-22 ~56 ~4 minecraft:iron_block
setblock ~-22 ~57 ~-4 minecraft:iron_block
setblock ~-22 ~57 ~4 minecraft:iron_block
setblock ~-21 ~12 ~-4 minecraft:iron_block
setblock ~-21 ~12 ~4 minecraft:iron_block
setblock ~-21 ~13 ~-4 minecraft:iron_block
setblock ~-21 ~13 ~4 minecraft:iron_block
setblock ~-21 ~14 ~-4 minecraft:iron_block
setblock ~-21 ~14 ~4 minecraft:iron_block
setblock ~-21 ~15 ~-4 minecraft:iron_block
setblock ~-21 ~15 ~4 minecraft:iron_block
setblock ~-21 ~16 ~-4 minecraft:iron_block
setblock ~-21 ~16 ~4 minecraft:iron_block
setblock ~-21 ~17 ~-4 minecraft:iron_block
setblock ~-21 ~17 ~4 minecraft:iron_block
setblock ~-21 ~53 ~-4 minecraft:iron_block
setblock ~-21 ~53 ~4 minecraft:iron_block
setblock ~-21 ~54 ~-4 minecraft:iron_block
setblock ~-21 ~54 ~4 minecraft:iron_block
setblock ~-21 ~55 ~-4 minecraft:iron_block
setblock ~-21 ~55 ~4 minecraft:iron_block
setblock ~-21 ~56 ~-4 minecraft:iron_block
setblock ~-21 ~56 ~4 minecraft:iron_block
setblock ~-21 ~57 ~-4 minecraft:iron_block
setblock ~-21 ~57 ~4 minecraft:iron_block
setblock ~-21 ~58 ~-4 minecraft:iron_block
setblock ~-21 ~58 ~4 minecraft:iron_block
setblock ~-20 ~11 ~-4 minecraft:iron_block
setblock ~-20 ~11 ~4 minecraft:iron_block
setblock ~-20 ~12 ~-4 minecraft:iron_block
setblock ~-20 ~12 ~4 minecraft:iron_block
setblock ~-20 ~13 ~-4 minecraft:iron_block
setblock ~-20 ~13 ~4 minecraft:iron_block
setblock ~-20 ~14 ~-4 minecraft:iron_block
setblock ~-20 ~14 ~4 minecraft:iron_block
setblock ~-20 ~15 ~-4 minecraft:iron_block
setblock ~-20 ~15 ~4 minecraft:iron_block
setblock ~-20 ~16 ~-4 minecraft:iron_block
setblock ~-20 ~16 ~4 minecraft:iron_block
setblock ~-20 ~54 ~-4 minecraft:iron_block
setblock ~-20 ~54 ~4 minecraft:iron_block
setblock ~-20 ~55 ~-4 minecraft:iron_block
setblock ~-20 ~55 ~4 minecraft:iron_block
setblock ~-20 ~56 ~-4 minecraft:iron_block
setblock ~-20 ~56 ~4 minecraft:iron_block
setblock ~-20 ~57 ~-4 minecraft:iron_block
setblock ~-20 ~57 ~4 minecraft:iron_block
setblock ~-20 ~58 ~-4 minecraft:iron_block
setblock ~-20 ~58 ~4 minecraft:iron_block
setblock ~-20 ~59 ~-4 minecraft:iron_block
setblock ~-20 ~59 ~4 minecraft:iron_block
setblock ~-19 ~10 ~-4 minecraft:iron_block
setblock ~-19 ~10 ~4 minecraft:iron_block
setblock ~-19 ~11 ~-4 minecraft:iron_block
setblock ~-19 ~11 ~4 minecraft:iron_block
setblock ~-19 ~12 ~-4 minecraft:iron_block
setblock ~-19 ~12 ~4 minecraft:iron_block
setblock ~-19 ~13 ~-4 minecraft:iron_block
setblock ~-19 ~13 ~4 minecraft:iron_block
setblock ~-19 ~14 ~-4 minecraft:iron_block
setblock ~-19 ~14 ~4 minecraft:iron_block
setblock ~-19 ~15 ~-4 minecraft:iron_block
setblock ~-19 ~15 ~4 minecraft:iron_block
setblock ~-19 ~55 ~-4 minecraft:iron_block
setblock ~-19 ~55 ~4 minecraft:iron_block
setblock ~-19 ~56 ~-4 minecraft:iron_block
setblock ~-19 ~56 ~4 minecraft:iron_block
setblock ~-19 ~57 ~-4 minecraft:iron_block
setblock ~-19 ~57 ~4 minecraft:iron_block
setblock ~-19 ~58 ~-4 minecraft:iron_block
setblock ~-19 ~58 ~4 minecraft:iron_block
setblock ~-19 ~59 ~-4 minecraft:iron_block
setblock ~-19 ~59 ~4 minecraft:iron_block
setblock ~-19 ~60 ~-4 minecraft:iron_block
setblock ~-19 ~60 ~4 minecraft:iron_block
setblock ~-18 ~10 ~-4 minecraft:iron_block
setblock ~-18 ~10 ~4 minecraft:iron_block
setblock ~-18 ~11 ~-4 minecraft:iron_block
setblock ~-18 ~11 ~4 minecraft:iron_block
setblock ~-18 ~12 ~-4 minecraft:iron_block
setblock ~-18 ~12 ~4 minecraft:iron_block
setblock ~-18 ~13 ~-4 minecraft:iron_block
setblock ~-18 ~13 ~4 minecraft:iron_block
setblock ~-18 ~14 ~-4 minecraft:iron_block
setblock ~-18 ~14 ~4 minecraft:iron_block
setblock ~-18 ~56 ~-4 minecraft:iron_block
setblock ~-18 ~56 ~4 minecraft:iron_block
setblock ~-18 ~57 ~-4 minecraft:iron_block
setblock ~-18 ~57 ~4 minecraft:iron_block
setblock ~-18 ~58 ~-4 minecraft:iron_block
setblock ~-18 ~58 ~4 minecraft:iron_block
setblock ~-18 ~59 ~-4 minecraft:iron_block
setblock ~-18 ~59 ~4 minecraft:iron_block
setblock ~-18 ~60 ~-4 minecraft:iron_block
setblock ~-18 ~60 ~4 minecraft:iron_block
setblock ~-17 ~9 ~-4 minecraft:iron_block
setblock ~-17 ~9 ~4 minecraft:iron_block
setblock ~-17 ~10 ~-4 minecraft:iron_block
setblock ~-17 ~10 ~4 minecraft:iron_block
setblock ~-17 ~11 ~-4 minecraft:iron_block
setblock ~-17 ~11 ~4 minecraft:iron_block
setblock ~-17 ~12 ~-4 minecraft:iron_block
setblock ~-17 ~12 ~4 minecraft:iron_block
setblock ~-17 ~13 ~-4 minecraft:iron_block
setblock ~-17 ~13 ~4 minecraft:iron_block
setblock ~-17 ~57 ~-4 minecraft:iron_block
setblock ~-17 ~57 ~4 minecraft:iron_block
setblock ~-17 ~58 ~-4 minecraft:iron_block
setblock ~-17 ~58 ~4 minecraft:iron_block
setblock ~-17 ~59 ~-4 minecraft:iron_block
setblock ~-17 ~59 ~4 minecraft:iron_block
setblock ~-17 ~60 ~-4 minecraft:iron_block
setblock ~-17 ~60 ~4 minecraft:iron_block
setblock ~-17 ~61 ~-4 minecraft:iron_block
setblock ~-17 ~61 ~4 minecraft:iron_block
setblock ~-16 ~8 ~-4 minecraft:iron_block
setblock ~-16 ~8 ~4 minecraft:iron_block
setblock ~-16 ~9 ~-4 minecraft:iron_block
setblock ~-16 ~9 ~4 minecraft:iron_block
setblock ~-16 ~10 ~-4 minecraft:iron_block
setblock ~-16 ~10 ~4 minecraft:iron_block
setblock ~-16 ~11 ~-4 minecraft:iron_block
setblock ~-16 ~11 ~4 minecraft:iron_block
setblock ~-16 ~12 ~-4 minecraft:iron_block
setblock ~-16 ~12 ~4 minecraft:iron_block
setblock ~-16 ~58 ~-4 minecraft:iron_block
setblock ~-16 ~58 ~4 minecraft:iron_block
setblock ~-16 ~59 ~-4 minecraft:iron_block
setblock ~-16 ~59 ~4 minecraft:iron_block
setblock ~-16 ~60 ~-4 minecraft:iron_block
setblock ~-16 ~60 ~4 minecraft:iron_block
setblock ~-16 ~61 ~-4 minecraft:iron_block
setblock ~-16 ~61 ~4 minecraft:iron_block
setblock ~-16 ~62 ~-4 minecraft:iron_block
setblock ~-16 ~62 ~4 minecraft:iron_block
setblock ~-15 ~8 ~-4 minecraft:iron_block
setblock ~-15 ~8 ~4 minecraft:iron_block
setblock ~-15 ~9 ~-4 minecraft:iron_block
setblock ~-15 ~9 ~4 minecraft:iron_block
setblock ~-15 ~10 ~-4 minecraft:iron_block
setblock ~-15 ~10 ~4 minecraft:iron_block
setblock ~-15 ~11 ~-4 minecraft:iron_block
setblock ~-15 ~11 ~4 minecraft:iron_block
setblock ~-15 ~12 ~-4 minecraft:iron_block
setblock ~-15 ~12 ~4 minecraft:iron_block
setblock ~-15 ~58 ~-4 minecraft:iron_block
setblock ~-15 ~58 ~4 minecraft:iron_block
setblock ~-15 ~59 ~-4 minecraft:iron_block
setblock ~-15 ~59 ~4 minecraft:iron_block
setblock ~-15 ~60 ~-4 minecraft:iron_block
setblock ~-15 ~60 ~4 minecraft:iron_block
setblock ~-15 ~61 ~-4 minecraft:iron_block
setblock ~-15 ~61 ~4 minecraft:iron_block
setblock ~-15 ~62 ~-4 minecraft:iron_block
setblock ~-15 ~62 ~4 minecraft:iron_block
setblock ~-14 ~7 ~-4 minecraft:iron_block
setblock ~-14 ~7 ~4 minecraft:iron_block
setblock ~-14 ~8 ~-4 minecraft:iron_block
setblock ~-14 ~8 ~4 minecraft:iron_block
setblock ~-14 ~9 ~-4 minecraft:iron_block
setblock ~-14 ~9 ~4 minecraft:iron_block
setblock ~-14 ~10 ~-4 minecraft:iron_block
setblock ~-14 ~10 ~4 minecraft:iron_block
setblock ~-14 ~11 ~-4 minecraft:iron_block
setblock ~-14 ~11 ~4 minecraft:iron_block
setblock ~-14 ~59 ~-4 minecraft:iron_block
setblock ~-14 ~59 ~4 minecraft:iron_block
setblock ~-14 ~60 ~-4 minecraft:iron_block
setblock ~-14 ~60 ~4 minecraft:iron_block
setblock ~-14 ~61 ~-4 minecraft:iron_block
setblock ~-14 ~61 ~4 minecraft:iron_block
setblock ~-14 ~62 ~-4 minecraft:iron_block
setblock ~-14 ~62 ~4 minecraft:iron_block
setblock ~-14 ~63 ~-4 minecraft:iron_block
setblock ~-14 ~63 ~4 minecraft:iron_block
setblock ~-13 ~7 ~-4 minecraft:iron_block
setblock ~-13 ~7 ~4 minecraft:iron_block
setblock ~-13 ~8 ~-4 minecraft:iron_block
setblock ~-13 ~8 ~4 minecraft:iron_block
setblock ~-13 ~9 ~-4 minecraft:iron_block
setblock ~-13 ~9 ~4 minecraft:iron_block
setblock ~-13 ~10 ~-4 minecraft:iron_block
setblock ~-13 ~10 ~4 minecraft:iron_block
setblock ~-13 ~60 ~-4 minecraft:iron_block
setblock ~-13 ~60 ~4 minecraft:iron_block
setblock ~-13 ~61 ~-4 minecraft:iron_block
setblock ~-13 ~61 ~4 minecraft:iron_block
setblock ~-13 ~62 ~-4 minecraft:iron_block
setblock ~-13 ~62 ~4 minecraft:iron_block
setblock ~-13 ~63 ~-4 minecraft:iron_block
setblock ~-13 ~63 ~4 minecraft:iron_block
setblock ~-12 ~6 ~-4 minecraft:iron_block
setblock ~-12 ~6 ~4 minecraft:iron_block
setblock ~-12 ~7 ~-4 minecraft:iron_block
setblock ~-12 ~7 ~4 minecraft:iron_block
setblock ~-12 ~8 ~-4 minecraft:iron_block
setblock ~-12 ~8 ~4 minecraft:iron_block
setblock ~-12 ~9 ~-4 minecraft:iron_block
setblock ~-12 ~9 ~4 minecraft:iron_block
setblock ~-12 ~10 ~-4 minecraft:iron_block
setblock ~-12 ~10 ~4 minecraft:iron_block
setblock ~-12 ~60 ~-4 minecraft:iron_block
setblock ~-12 ~60 ~4 minecraft:iron_block
setblock ~-12 ~61 ~-4 minecraft:iron_block
setblock ~-12 ~61 ~4 minecraft:iron_block
setblock ~-12 ~62 ~-4 minecraft:iron_block
setblock ~-12 ~62 ~4 minecraft:iron_block
setblock ~-12 ~63 ~-4 minecraft:iron_block
setblock ~-12 ~63 ~4 minecraft:iron_block
setblock ~-12 ~64 ~-4 minecraft:iron_block
setblock ~-12 ~64 ~4 minecraft:iron_block
setblock ~-11 ~6 ~-4 minecraft:iron_block
setblock ~-11 ~6 ~4 minecraft:iron_block
setblock ~-11 ~7 ~-4 minecraft:iron_block
setblock ~-11 ~7 ~4 minecraft:iron_block
setblock ~-11 ~8 ~-4 minecraft:iron_block
setblock ~-11 ~8 ~4 minecraft:iron_block
setblock ~-11 ~9 ~-4 minecraft:iron_block
setblock ~-11 ~9 ~4 minecraft:iron_block
setblock ~-11 ~61 ~-4 minecraft:iron_block
setblock ~-11 ~61 ~4 minecraft:iron_block
setblock ~-11 ~62 ~-4 minecraft:iron_block
setblock ~-11 ~62 ~4 minecraft:iron_block
setblock ~-11 ~63 ~-4 minecraft:iron_block
setblock ~-11 ~63 ~4 minecraft:iron_block
setblock ~-11 ~64 ~-4 minecraft:iron_block
setblock ~-11 ~64 ~4 minecraft:iron_block
setblock ~-10 ~6 ~-4 minecraft:iron_block
setblock ~-10 ~6 ~4 minecraft:iron_block
setblock ~-10 ~7 ~-4 minecraft:iron_block
setblock ~-10 ~7 ~4 minecraft:iron_block
setblock ~-10 ~8 ~-4 minecraft:iron_block
setblock ~-10 ~8 ~4 minecraft:iron_block
setblock ~-10 ~9 ~-4 minecraft:iron_block
setblock ~-10 ~9 ~4 minecraft:iron_block
setblock ~-10 ~61 ~-4 minecraft:iron_block
setblock ~-10 ~61 ~4 minecraft:iron_block
setblock ~-10 ~62 ~-4 minecraft:iron_block
setblock ~-10 ~62 ~4 minecraft:iron_block
setblock ~-10 ~63 ~-4 minecraft:iron_block
setblock ~-10 ~63 ~4 minecraft:iron_block
setblock ~-10 ~64 ~-4 minecraft:iron_block
setblock ~-10 ~64 ~4 minecraft:iron_block
setblock ~-9 ~5 ~-4 minecraft:iron_block
setblock ~-9 ~5 ~4 minecraft:iron_block
setblock ~-9 ~6 ~-4 minecraft:iron_block
setblock ~-9 ~6 ~4 minecraft:iron_block
setblock ~-9 ~7 ~-4 minecraft:iron_block
setblock ~-9 ~7 ~4 minecraft:iron_block
setblock ~-9 ~8 ~-4 minecraft:iron_block
setblock ~-9 ~8 ~4 minecraft:iron_block
setblock ~-9 ~9 ~-4 minecraft:iron_block
setblock ~-9 ~9 ~4 minecraft:iron_block
setblock ~-9 ~61 ~-4 minecraft:iron_block
setblock ~-9 ~61 ~4 minecraft:iron_block
setblock ~-9 ~62 ~-4 minecraft:iron_block
setblock ~-9 ~62 ~4 minecraft:iron_block
setblock ~-9 ~63 ~-4 minecraft:iron_block
setblock ~-9 ~63 ~4 minecraft:iron_block
setblock ~-9 ~64 ~-4 minecraft:iron_block
setblock ~-9 ~64 ~4 minecraft:iron_block
setblock ~-9 ~65 ~-4 minecraft:iron_block
setblock ~-9 ~65 ~4 minecraft:iron_block
setblock ~-8 ~5 ~-4 minecraft:iron_block
setblock ~-8 ~5 ~4 minecraft:iron_block
setblock ~-8 ~6 ~-4 minecraft:iron_block
setblock ~-8 ~6 ~4 minecraft:iron_block
setblock ~-8 ~7 ~-4 minecraft:iron_block
setblock ~-8 ~7 ~4 minecraft:iron_block
setblock ~-8 ~8 ~-4 minecraft:iron_block
setblock ~-8 ~8 ~4 minecraft:iron_block
setblock ~-8 ~62 ~-4 minecraft:iron_block
setblock ~-8 ~62 ~4 minecraft:iron_block
setblock ~-8 ~63 ~-4 minecraft:iron_block
setblock ~-8 ~63 ~4 minecraft:iron_block
setblock ~-8 ~64 ~-4 minecraft:iron_block
setblock ~-8 ~64 ~4 minecraft:iron_block
setblock ~-8 ~65 ~-4 minecraft:iron_block
setblock ~-8 ~65 ~4 minecraft:iron_block
setblock ~-7 ~5 ~-4 minecraft:iron_block
setblock ~-7 ~5 ~4 minecraft:iron_block
setblock ~-7 ~6 ~-4 minecraft:iron_block
setblock ~-7 ~6 ~4 minecraft:iron_block
setblock ~-7 ~7 ~-4 minecraft:iron_block
setblock ~-7 ~7 ~4 minecraft:iron_block
setblock ~-7 ~8 ~-4 minecraft:iron_block
setblock ~-7 ~8 ~4 minecraft:iron_block
setblock ~-7 ~62 ~-4 minecraft:iron_block
setblock ~-7 ~62 ~4 minecraft:iron_block
setblock ~-7 ~63 ~-4 minecraft:iron_block
setblock ~-7 ~63 ~4 minecraft:iron_block
setblock ~-7 ~64 ~-4 minecraft:iron_block
setblock ~-7 ~64 ~4 minecraft:iron_block
setblock ~-7 ~65 ~-4 minecraft:iron_block
setblock ~-7 ~65 ~4 minecraft:iron_block
setblock ~-6 ~5 ~-4 minecraft:iron_block
setblock ~-6 ~5 ~4 minecraft:iron_block
setblock ~-6 ~6 ~-4 minecraft:iron_block
setblock ~-6 ~6 ~4 minecraft:iron_block
setblock ~-6 ~7 ~-4 minecraft:iron_block
setblock ~-6 ~7 ~4 minecraft:iron_block
setblock ~-6 ~8 ~-4 minecraft:iron_block
setblock ~-6 ~8 ~4 minecraft:iron_block
setblock ~-6 ~62 ~-4 minecraft:iron_block
setblock ~-6 ~62 ~4 minecraft:iron_block
setblock ~-6 ~63 ~-4 minecraft:iron_block
setblock ~-6 ~63 ~4 minecraft:iron_block
setblock ~-6 ~64 ~-4 minecraft:iron_block
setblock ~-6 ~64 ~4 minecraft:iron_block
setblock ~-6 ~65 ~-4 minecraft:iron_block
setblock ~-6 ~65 ~4 minecraft:iron_block
setblock ~-5 ~4 ~-4 minecraft:iron_block
setblock ~-5 ~4 ~4 minecraft:iron_block
setblock ~-5 ~5 ~-4 minecraft:iron_block
setblock ~-5 ~5 ~4 minecraft:iron_block
setblock ~-5 ~6 ~-4 minecraft:iron_block
setblock ~-5 ~6 ~4 minecraft:iron_block
setblock ~-5 ~7 ~-4 minecraft:iron_block
setblock ~-5 ~7 ~4 minecraft:iron_block
setblock ~-5 ~8 ~-4 minecraft:iron_block
setblock ~-5 ~8 ~4 minecraft:iron_block
setblock ~-5 ~62 ~-4 minecraft:iron_block
setblock ~-5 ~62 ~4 minecraft:iron_block
setblock ~-5 ~63 ~-4 minecraft:iron_block
setblock ~-5 ~63 ~4 minecraft:iron_block
setblock ~-5 ~64 ~-4 minecraft:iron_block
setblock ~-5 ~64 ~4 minecraft:iron_block
setblock ~-5 ~65 ~-4 minecraft:iron_block
setblock ~-5 ~65 ~4 minecraft:iron_block
setblock ~-5 ~66 ~-4 minecraft:iron_block
setblock ~-5 ~66 ~4 minecraft:iron_block
setblock ~-4 ~4 ~-4 minecraft:iron_block
setblock ~-4 ~4 ~4 minecraft:iron_block
setblock ~-4 ~5 ~-4 minecraft:iron_block
setblock ~-4 ~5 ~4 minecraft:iron_block
setblock ~-4 ~6 ~-4 minecraft:iron_block
setblock ~-4 ~6 ~4 minecraft:iron_block
setblock ~-4 ~7 ~-4 minecraft:iron_block
setblock ~-4 ~7 ~4 minecraft:iron_block
setblock ~-4 ~63 ~-4 minecraft:iron_block
setblock ~-4 ~63 ~4 minecraft:iron_block
setblock ~-4 ~64 ~-4 minecraft:iron_block
setblock ~-4 ~64 ~4 minecraft:iron_block
setblock ~-4 ~65 ~-4 minecraft:iron_block
setblock ~-4 ~65 ~4 minecraft:iron_block
setblock ~-4 ~66 ~-4 minecraft:iron_block
setblock ~-4 ~66 ~4 minecraft:iron_block
setblock ~-3 ~4 ~-4 minecraft:iron_block
setblock ~-3 ~4 ~4 minecraft:iron_block
setblock ~-3 ~5 ~-4 minecraft:iron_block
setblock ~-3 ~5 ~4 minecraft:iron_block
setblock ~-3 ~6 ~-4 minecraft:iron_block
setblock ~-3 ~6 ~4 minecraft:iron_block
setblock ~-3 ~7 ~-4 minecraft:iron_block
setblock ~-3 ~7 ~4 minecraft:iron_block
setblock ~-3 ~63 ~-4 minecraft:iron_block
setblock ~-3 ~63 ~4 minecraft:iron_block
setblock ~-3 ~64 ~-4 minecraft:iron_block
setblock ~-3 ~64 ~4 minecraft:iron_block
setblock ~-3 ~65 ~-4 minecraft:iron_block
setblock ~-3 ~65 ~4 minecraft:iron_block
setblock ~-3 ~66 ~-4 minecraft:iron_block
setblock ~-3 ~66 ~4 minecraft:iron_block
setblock ~-2 ~4 ~-4 minecraft:iron_block
setblock ~-2 ~4 ~4 minecraft:iron_block
setblock ~-2 ~5 ~-4 minecraft:iron_block
setblock ~-2 ~5 ~4 minecraft:iron_block
setblock ~-2 ~6 ~-4 minecraft:iron_block
setblock ~-2 ~6 ~4 minecraft:iron_block
setblock ~-2 ~7 ~-4 minecraft:iron_block
setblock ~-2 ~7 ~4 minecraft:iron_block
setblock ~-2 ~63 ~-4 minecraft:iron_block
setblock ~-2 ~63 ~4 minecraft:iron_block
setblock ~-2 ~64 ~-4 minecraft:iron_block
setblock ~-2 ~64 ~4 minecraft:iron_block
setblock ~-2 ~65 ~-4 minecraft:iron_block
setblock ~-2 ~65 ~4 minecraft:iron_block
setblock ~-2 ~66 ~-4 minecraft:iron_block
setblock ~-2 ~66 ~4 minecraft:iron_block
setblock ~-1 ~4 ~-4 minecraft:iron_block
setblock ~-1 ~4 ~4 minecraft:iron_block
setblock ~-1 ~5 ~-4 minecraft:iron_block
setblock ~-1 ~5 ~4 minecraft:iron_block
setblock ~-1 ~6 ~-4 minecraft:iron_block
setblock ~-1 ~6 ~4 minecraft:iron_block
setblock ~-1 ~7 ~-4 minecraft:iron_block
setblock ~-1 ~7 ~4 minecraft:iron_block
setblock ~-1 ~63 ~-4 minecraft:iron_block
setblock ~-1 ~63 ~4 minecraft:iron_block
setblock ~-1 ~64 ~-4 minecraft:iron_block
setblock ~-1 ~64 ~4 minecraft:iron_block
setblock ~-1 ~65 ~-4 minecraft:iron_block
setblock ~-1 ~65 ~4 minecraft:iron_block
setblock ~-1 ~66 ~-4 minecraft:iron_block
setblock ~-1 ~66 ~4 minecraft:iron_block
setblock ~ ~4 ~-4 minecraft:iron_block
setblock ~ ~4 ~4 minecraft:iron_block
setblock ~ ~5 ~-4 minecraft:iron_block
setblock ~ ~5 ~4 minecraft:iron_block
setblock ~ ~6 ~-4 minecraft:iron_block
setblock ~ ~6 ~4 minecraft:iron_block
setblock ~ ~7 ~-4 minecraft:iron_block
setblock ~ ~7 ~4 minecraft:iron_block
setblock ~ ~63 ~-4 minecraft:iron_block
setblock ~ ~63 ~4 minecraft:iron_block
setblock ~ ~64 ~-4 minecraft:iron_block
setblock ~ ~64 ~4 minecraft:iron_block
setblock ~ ~65 ~-4 minecraft:iron_block
setblock ~ ~65 ~4 minecraft:iron_block
setblock ~ ~66 ~-4 minecraft:iron_block
setblock ~ ~66 ~4 minecraft:iron_block
setblock ~1 ~4 ~-4 minecraft:iron_block
setblock ~1 ~4 ~4 minecraft:iron_block
setblock ~1 ~5 ~-4 minecraft:iron_block
setblock ~1 ~5 ~4 minecraft:iron_block
setblock ~1 ~6 ~-4 minecraft:iron_block
setblock ~1 ~6 ~4 minecraft:iron_block
setblock ~1 ~7 ~-4 minecraft:iron_block
setblock ~1 ~7 ~4 minecraft:iron_block
setblock ~1 ~63 ~-4 minecraft:iron_block
setblock ~1 ~63 ~4 minecraft:iron_block
setblock ~1 ~64 ~-4 minecraft:iron_block
setblock ~1 ~64 ~4 minecraft:iron_block
setblock ~1 ~65 ~-4 minecraft:iron_block
setblock ~1 ~65 ~4 minecraft:iron_block
setblock ~1 ~66 ~-4 minecraft:iron_block
setblock ~1 ~66 ~4 minecraft:iron_block
setblock ~2 ~4 ~-4 minecraft:iron_block
setblock ~2 ~4 ~4 minecraft:iron_block
setblock ~2 ~5 ~-4 minecraft:iron_block
setblock ~2 ~5 ~4 minecraft:iron_block
setblock ~2 ~6 ~-4 minecraft:iron_block
setblock ~2 ~6 ~4 minecraft:iron_block
setblock ~2 ~7 ~-4 minecraft:iron_block
setblock ~2 ~7 ~4 minecraft:iron_block
setblock ~2 ~63 ~-4 minecraft:iron_block
setblock ~2 ~63 ~4 minecraft:iron_block
setblock ~2 ~64 ~-4 minecraft:iron_block
setblock ~2 ~64 ~4 minecraft:iron_block
setblock ~2 ~65 ~-4 minecraft:iron_block
setblock ~2 ~65 ~4 minecraft:iron_block
setblock ~2 ~66 ~-4 minecraft:iron_block
setblock ~2 ~66 ~4 minecraft:iron_block
setblock ~3 ~4 ~-4 minecraft:iron_block
setblock ~3 ~4 ~4 minecraft:iron_block
setblock ~3 ~5 ~-4 minecraft:iron_block
setblock ~3 ~5 ~4 minecraft:iron_block
setblock ~3 ~6 ~-4 minecraft:iron_block
setblock ~3 ~6 ~4 minecraft:iron_block
setblock ~3 ~7 ~-4 minecraft:iron_block
setblock ~3 ~7 ~4 minecraft:iron_block
setblock ~3 ~63 ~-4 minecraft:iron_block
setblock ~3 ~63 ~4 minecraft:iron_block
setblock ~3 ~64 ~-4 minecraft:iron_block
setblock ~3 ~64 ~4 minecraft:iron_block
setblock ~3 ~65 ~-4 minecraft:iron_block
setblock ~3 ~65 ~4 minecraft:iron_block
setblock ~3 ~66 ~-4 minecraft:iron_block
setblock ~3 ~66 ~4 minecraft:iron_block
setblock ~4 ~4 ~-4 minecraft:iron_block
setblock ~4 ~4 ~4 minecraft:iron_block
setblock ~4 ~5 ~-4 minecraft:iron_block
setblock ~4 ~5 ~4 minecraft:iron_block
setblock ~4 ~6 ~-4 minecraft:iron_block
setblock ~4 ~6 ~4 minecraft:iron_block
setblock ~4 ~7 ~-4 minecraft:iron_block
setblock ~4 ~7 ~4 minecraft:iron_block
setblock ~4 ~63 ~-4 minecraft:iron_block
setblock ~4 ~63 ~4 minecraft:iron_block
setblock ~4 ~64 ~-4 minecraft:iron_block
setblock ~4 ~64 ~4 minecraft:iron_block
setblock ~4 ~65 ~-4 minecraft:iron_block
setblock ~4 ~65 ~4 minecraft:iron_block
setblock ~4 ~66 ~-4 minecraft:iron_block
setblock ~4 ~66 ~4 minecraft:iron_block
setblock ~5 ~4 ~-4 minecraft:iron_block
setblock ~5 ~4 ~4 minecraft:iron_block
setblock ~5 ~5 ~-4 minecraft:iron_block
setblock ~5 ~5 ~4 minecraft:iron_block
setblock ~5 ~6 ~-4 minecraft:iron_block
setblock ~5 ~6 ~4 minecraft:iron_block
setblock ~5 ~7 ~-4 minecraft:iron_block
setblock ~5 ~7 ~4 minecraft:iron_block
setblock ~5 ~8 ~-4 minecraft:iron_block
setblock ~5 ~8 ~4 minecraft:iron_block
setblock ~5 ~62 ~-4 minecraft:iron_block
setblock ~5 ~62 ~4 minecraft:iron_block
setblock ~5 ~63 ~-4 minecraft:iron_block
setblock ~5 ~63 ~4 minecraft:iron_block
setblock ~5 ~64 ~-4 minecraft:iron_block
setblock ~5 ~64 ~4 minecraft:iron_block
setblock ~5 ~65 ~-4 minecraft:iron_block
setblock ~5 ~65 ~4 minecraft:iron_block
setblock ~5 ~66 ~-4 minecraft:iron_block
setblock ~5 ~66 ~4 minecraft:iron_block
setblock ~6 ~5 ~-4 minecraft:iron_block
setblock ~6 ~5 ~4 minecraft:iron_block
setblock ~6 ~6 ~-4 minecraft:iron_block
setblock ~6 ~6 ~4 minecraft:iron_block
setblock ~6 ~7 ~-4 minecraft:iron_block
setblock ~6 ~7 ~4 minecraft:iron_block
setblock ~6 ~8 ~-4 minecraft:iron_block
setblock ~6 ~8 ~4 minecraft:iron_block
setblock ~6 ~62 ~-4 minecraft:iron_block
setblock ~6 ~62 ~4 minecraft:iron_block
setblock ~6 ~63 ~-4 minecraft:iron_block
setblock ~6 ~63 ~4 minecraft:iron_block
setblock ~6 ~64 ~-4 minecraft:iron_block
setblock ~6 ~64 ~4 minecraft:iron_block
setblock ~6 ~65 ~-4 minecraft:iron_block
setblock ~6 ~65 ~4 minecraft:iron_block
setblock ~7 ~5 ~-4 minecraft:iron_block
setblock ~7 ~5 ~4 minecraft:iron_block
setblock ~7 ~6 ~-4 minecraft:iron_block
setblock ~7 ~6 ~4 minecraft:iron_block
setblock ~7 ~7 ~-4 minecraft:iron_block
setblock ~7 ~7 ~4 minecraft:iron_block
setblock ~7 ~8 ~-4 minecraft:iron_block
setblock ~7 ~8 ~4 minecraft:iron_block
setblock ~7 ~62 ~-4 minecraft:iron_block
setblock ~7 ~62 ~4 minecraft:iron_block
setblock ~7 ~63 ~-4 minecraft:iron_block
setblock ~7 ~63 ~4 minecraft:iron_block
setblock ~7 ~64 ~-4 minecraft:iron_block
setblock ~7 ~64 ~4 minecraft:iron_block
setblock ~7 ~65 ~-4 minecraft:iron_block
setblock ~7 ~65 ~4 minecraft:iron_block
setblock ~8 ~5 ~-4 minecraft:iron_block
setblock ~8 ~5 ~4 minecraft:iron_block
setblock ~8 ~6 ~-4 minecraft:iron_block
setblock ~8 ~6 ~4 minecraft:iron_block
setblock ~8 ~7 ~-4 minecraft:iron_block
setblock ~8 ~7 ~4 minecraft:iron_block
setblock ~8 ~8 ~-4 minecraft:iron_block
setblock ~8 ~8 ~4 minecraft:iron_block
setblock ~8 ~62 ~-4 minecraft:iron_block
setblock ~8 ~62 ~4 minecraft:iron_block
setblock ~8 ~63 ~-4 minecraft:iron_block
setblock ~8 ~63 ~4 minecraft:iron_block
setblock ~8 ~64 ~-4 minecraft:iron_block
setblock ~8 ~64 ~4 minecraft:iron_block
setblock ~8 ~65 ~-4 minecraft:iron_block
setblock ~8 ~65 ~4 minecraft:iron_block
setblock ~9 ~5 ~-4 minecraft:iron_block
setblock ~9 ~5 ~4 minecraft:iron_block
setblock ~9 ~6 ~-4 minecraft:iron_block
setblock ~9 ~6 ~4 minecraft:iron_block
setblock ~9 ~7 ~-4 minecraft:iron_block
setblock ~9 ~7 ~4 minecraft:iron_block
setblock ~9 ~8 ~-4 minecraft:iron_block
setblock ~9 ~8 ~4 minecraft:iron_block
setblock ~9 ~9 ~-4 minecraft:iron_block
setblock ~9 ~9 ~4 minecraft:iron_block
setblock ~9 ~61 ~-4 minecraft:iron_block
setblock ~9 ~61 ~4 minecraft:iron_block
setblock ~9 ~62 ~-4 minecraft:iron_block
setblock ~9 ~62 ~4 minecraft:iron_block
setblock ~9 ~63 ~-4 minecraft:iron_block
setblock ~9 ~63 ~4 minecraft:iron_block
setblock ~9 ~64 ~-4 minecraft:iron_block
setblock ~9 ~64 ~4 minecraft:iron_block
setblock ~9 ~65 ~-4 minecraft:iron_block
setblock ~9 ~65 ~4 minecraft:iron_block
setblock ~10 ~6 ~-4 minecraft:iron_block
setblock ~10 ~6 ~4 minecraft:iron_block
setblock ~10 ~7 ~-4 minecraft:iron_block
setblock ~10 ~7 ~4 minecraft:iron_block
setblock ~10 ~8 ~-4 minecraft:iron_block
setblock ~10 ~8 ~4 minecraft:iron_block
setblock ~10 ~9 ~-4 minecraft:iron_block
setblock ~10 ~9 ~4 minecraft:iron_block
setblock ~10 ~61 ~-4 minecraft:iron_block
setblock ~10 ~61 ~4 minecraft:iron_block
setblock ~10 ~62 ~-4 minecraft:iron_block
setblock ~10 ~62 ~4 minecraft:iron_block
setblock ~10 ~63 ~-4 minecraft:iron_block
setblock ~10 ~63 ~4 minecraft:iron_block
setblock ~10 ~64 ~-4 minecraft:iron_block
setblock ~10 ~64 ~4 minecraft:iron_block
setblock ~11 ~6 ~-4 minecraft:iron_block
setblock ~11 ~6 ~4 minecraft:iron_block
setblock ~11 ~7 ~-4 minecraft:iron_block
setblock ~11 ~7 ~4 minecraft:iron_block
setblock ~11 ~8 ~-4 minecraft:iron_block
setblock ~11 ~8 ~4 minecraft:iron_block
setblock ~11 ~9 ~-4 minecraft:iron_block
setblock ~11 ~9 ~4 minecraft:iron_block
setblock ~11 ~61 ~-4 minecraft:iron_block
setblock ~11 ~61 ~4 minecraft:iron_block
setblock ~11 ~62 ~-4 minecraft:iron_block
setblock ~11 ~62 ~4 minecraft:iron_block
setblock ~11 ~63 ~-4 minecraft:iron_block
setblock ~11 ~63 ~4 minecraft:iron_block
setblock ~11 ~64 ~-4 minecraft:iron_block
setblock ~11 ~64 ~4 minecraft:iron_block
setblock ~12 ~6 ~-4 minecraft:iron_block
setblock ~12 ~6 ~4 minecraft:iron_block
setblock ~12 ~7 ~-4 minecraft:iron_block
setblock ~12 ~7 ~4 minecraft:iron_block
setblock ~12 ~8 ~-4 minecraft:iron_block
setblock ~12 ~8 ~4 minecraft:iron_block
setblock ~12 ~9 ~-4 minecraft:iron_block
setblock ~12 ~9 ~4 minecraft:iron_block
setblock ~12 ~10 ~-4 minecraft:iron_block
setblock ~12 ~10 ~4 minecraft:iron_block
setblock ~12 ~60 ~-4 minecraft:iron_block
setblock ~12 ~60 ~4 minecraft:iron_block
setblock ~12 ~61 ~-4 minecraft:iron_block
setblock ~12 ~61 ~4 minecraft:iron_block
setblock ~12 ~62 ~-4 minecraft:iron_block
setblock ~12 ~62 ~4 minecraft:iron_block
setblock ~12 ~63 ~-4 minecraft:iron_block
setblock ~12 ~63 ~4 minecraft:iron_block
setblock ~12 ~64 ~-4 minecraft:iron_block
setblock ~12 ~64 ~4 minecraft:iron_block
setblock ~13 ~7 ~-4 minecraft:iron_block
setblock ~13 ~7 ~4 minecraft:iron_block
setblock ~13 ~8 ~-4 minecraft:iron_block
setblock ~13 ~8 ~4 minecraft:iron_block
setblock ~13 ~9 ~-4 minecraft:iron_block
setblock ~13 ~9 ~4 minecraft:iron_block
setblock ~13 ~10 ~-4 minecraft:iron_block
setblock ~13 ~10 ~4 minecraft:iron_block
setblock ~13 ~60 ~-4 minecraft:iron_block
setblock ~13 ~60 ~4 minecraft:iron_block
setblock ~13 ~61 ~-4 minecraft:iron_block
setblock ~13 ~61 ~4 minecraft:iron_block
setblock ~13 ~62 ~-4 minecraft:iron_block
setblock ~13 ~62 ~4 minecraft:iron_block
setblock ~13 ~63 ~-4 minecraft:iron_block
setblock ~13 ~63 ~4 minecraft:iron_block
setblock ~14 ~7 ~-4 minecraft:iron_block
setblock ~14 ~7 ~4 minecraft:iron_block
setblock ~14 ~8 ~-4 minecraft:iron_block
setblock ~14 ~8 ~4 minecraft:iron_block
setblock ~14 ~9 ~-4 minecraft:iron_block
setblock ~14 ~9 ~4 minecraft:iron_block
setblock ~14 ~10 ~-4 minecraft:iron_block
setblock ~14 ~10 ~4 minecraft:iron_block
setblock ~14 ~11 ~-4 minecraft:iron_block
setblock ~14 ~11 ~4 minecraft:iron_block
setblock ~14 ~59 ~-4 minecraft:iron_block
setblock ~14 ~59 ~4 minecraft:iron_block
setblock ~14 ~60 ~-4 minecraft:iron_block
setblock ~14 ~60 ~4 minecraft:iron_block
setblock ~14 ~61 ~-4 minecraft:iron_block
setblock ~14 ~61 ~4 minecraft:iron_block
setblock ~14 ~62 ~-4 minecraft:iron_block
setblock ~14 ~62 ~4 minecraft:iron_block
setblock ~14 ~63 ~-4 minecraft:iron_block
setblock ~14 ~63 ~4 minecraft:iron_block
setblock ~15 ~8 ~-4 minecraft:iron_block
setblock ~15 ~8 ~4 minecraft:iron_block
setblock ~15 ~9 ~-4 minecraft:iron_block
setblock ~15 ~9 ~4 minecraft:iron_block
setblock ~15 ~10 ~-4 minecraft:iron_block
setblock ~15 ~10 ~4 minecraft:iron_block
setblock ~15 ~11 ~-4 minecraft:iron_block
setblock ~15 ~11 ~4 minecraft:iron_block
setblock ~15 ~12 ~-4 minecraft:iron_block
setblock ~15 ~12 ~4 minecraft:iron_block
setblock ~15 ~58 ~-4 minecraft:iron_block
setblock ~15 ~58 ~4 minecraft:iron_block
setblock ~15 ~59 ~-4 minecraft:iron_block
setblock ~15 ~59 ~4 minecraft:iron_block
setblock ~15 ~60 ~-4 minecraft:iron_block
setblock ~15 ~60 ~4 minecraft:iron_block
setblock ~15 ~61 ~-4 minecraft:iron_block
setblock ~15 ~61 ~4 minecraft:iron_block
setblock ~15 ~62 ~-4 minecraft:iron_block
setblock ~15 ~62 ~4 minecraft:iron_block
setblock ~16 ~8 ~-4 minecraft:iron_block
setblock ~16 ~8 ~4 minecraft:iron_block
setblock ~16 ~9 ~-4 minecraft:iron_block
setblock ~16 ~9 ~4 minecraft:iron_block
setblock ~16 ~10 ~-4 minecraft:iron_block
setblock ~16 ~10 ~4 minecraft:iron_block
setblock ~16 ~11 ~-4 minecraft:iron_block
setblock ~16 ~11 ~4 minecraft:iron_block
setblock ~16 ~12 ~-4 minecraft:iron_block
setblock ~16 ~12 ~4 minecraft:iron_block
setblock ~16 ~58 ~-4 minecraft:iron_block
setblock ~16 ~58 ~4 minecraft:iron_block
setblock ~16 ~59 ~-4 minecraft:iron_block
setblock ~16 ~59 ~4 minecraft:iron_block
setblock ~16 ~60 ~-4 minecraft:iron_block
setblock ~16 ~60 ~4 minecraft:iron_block
setblock ~16 ~61 ~-4 minecraft:iron_block
setblock ~16 ~61 ~4 minecraft:iron_block
setblock ~16 ~62 ~-4 minecraft:iron_block
setblock ~16 ~62 ~4 minecraft:iron_block
setblock ~17 ~9 ~-4 minecraft:iron_block
setblock ~17 ~9 ~4 minecraft:iron_block
setblock ~17 ~10 ~-4 minecraft:iron_block
setblock ~17 ~10 ~4 minecraft:iron_block
setblock ~17 ~11 ~-4 minecraft:iron_block
setblock ~17 ~11 ~4 minecraft:iron_block
setblock ~17 ~12 ~-4 minecraft:iron_block
setblock ~17 ~12 ~4 minecraft:iron_block
setblock ~17 ~13 ~-4 minecraft:iron_block
setblock ~17 ~13 ~4 minecraft:iron_block
setblock ~17 ~57 ~-4 minecraft:iron_block
setblock ~17 ~57 ~4 minecraft:iron_block
setblock ~17 ~58 ~-4 minecraft:iron_block
setblock ~17 ~58 ~4 minecraft:iron_block
setblock ~17 ~59 ~-4 minecraft:iron_block
setblock ~17 ~59 ~4 minecraft:iron_block
setblock ~17 ~60 ~-4 minecraft:iron_block
setblock ~17 ~60 ~4 minecraft:iron_block
setblock ~17 ~61 ~-4 minecraft:iron_block
setblock ~17 ~61 ~4 minecraft:iron_block
setblock ~18 ~10 ~-4 minecraft:iron_block
setblock ~18 ~10 ~4 minecraft:iron_block
setblock ~18 ~11 ~-4 minecraft:iron_block
setblock ~18 ~11 ~4 minecraft:iron_block
setblock ~18 ~12 ~-4 minecraft:iron_block
setblock ~18 ~12 ~4 minecraft:iron_block
setblock ~18 ~13 ~-4 minecraft:iron_block
setblock ~18 ~13 ~4 minecraft:iron_block
setblock ~18 ~14 ~-4 minecraft:iron_block
setblock ~18 ~14 ~4 minecraft:iron_block
setblock ~18 ~56 ~-4 minecraft:iron_block
setblock ~18 ~56 ~4 minecraft:iron_block
setblock ~18 ~57 ~-4 minecraft:iron_block
setblock ~18 ~57 ~4 minecraft:iron_block
setblock ~18 ~58 ~-4 minecraft:iron_block
setblock ~18 ~58 ~4 minecraft:iron_block
setblock ~18 ~59 ~-4 minecraft:iron_block
setblock ~18 ~59 ~4 minecraft:iron_block
setblock ~18 ~60 ~-4 minecraft:iron_block
setblock ~18 ~60 ~4 minecraft:iron_block
setblock ~19 ~10 ~-4 minecraft:iron_block
setblock ~19 ~10 ~4 minecraft:iron_block
setblock ~19 ~11 ~-4 minecraft:iron_block
setblock ~19 ~11 ~4 minecraft:iron_block
setblock ~19 ~12 ~-4 minecraft:iron_block
setblock ~19 ~12 ~4 minecraft:iron_block
setblock ~19 ~13 ~-4 minecraft:iron_block
setblock ~19 ~13 ~4 minecraft:iron_block
setblock ~19 ~14 ~-4 minecraft:iron_block
setblock ~19 ~14 ~4 minecraft:iron_block
setblock ~19 ~15 ~-4 minecraft:iron_block
setblock ~19 ~15 ~4 minecraft:iron_block
setblock ~19 ~55 ~-4 minecraft:iron_block
setblock ~19 ~55 ~4 minecraft:iron_block
setblock ~19 ~56 ~-4 minecraft:iron_block
setblock ~19 ~56 ~4 minecraft:iron_block
setblock ~19 ~57 ~-4 minecraft:iron_block
setblock ~19 ~57 ~4 minecraft:iron_block
setblock ~19 ~58 ~-4 minecraft:iron_block
setblock ~19 ~58 ~4 minecraft:iron_block
setblock ~19 ~59 ~-4 minecraft:iron_block
setblock ~19 ~59 ~4 minecraft:iron_block
setblock ~19 ~60 ~-4 minecraft:iron_block
setblock ~19 ~60 ~4 minecraft:iron_block
setblock ~20 ~11 ~-4 minecraft:iron_block
setblock ~20 ~11 ~4 minecraft:iron_block
setblock ~20 ~12 ~-4 minecraft:iron_block
setblock ~20 ~12 ~4 minecraft:iron_block
setblock ~20 ~13 ~-4 minecraft:iron_block
setblock ~20 ~13 ~4 minecraft:iron_block
setblock ~20 ~14 ~-4 minecraft:iron_block
setblock ~20 ~14 ~4 minecraft:iron_block
setblock ~20 ~15 ~-4 minecraft:iron_block
setblock ~20 ~15 ~4 minecraft:iron_block
setblock ~20 ~16 ~-4 minecraft:iron_block
setblock ~20 ~16 ~4 minecraft:iron_block
setblock ~20 ~54 ~-4 minecraft:iron_block
setblock ~20 ~54 ~4 minecraft:iron_block
setblock ~20 ~55 ~-4 minecraft:iron_block
setblock ~20 ~55 ~4 minecraft:iron_block
setblock ~20 ~56 ~-4 minecraft:iron_block
setblock ~20 ~56 ~4 minecraft:iron_block
setblock ~20 ~57 ~-4 minecraft:iron_block
setblock ~20 ~57 ~4 minecraft:iron_block
setblock ~20 ~58 ~-4 minecraft:iron_block
setblock ~20 ~58 ~4 minecraft:iron_block
setblock ~20 ~59 ~-4 minecraft:iron_block
setblock ~20 ~59 ~4 minecraft:iron_block
setblock ~21 ~12 ~-4 minecraft:iron_block
setblock ~21 ~12 ~4 minecraft:iron_block
setblock ~21 ~13 ~-4 minecraft:iron_block
setblock ~21 ~13 ~4 minecraft:iron_block
setblock ~21 ~14 ~-4 minecraft:iron_block
setblock ~21 ~14 ~4 minecraft:iron_block
setblock ~21 ~15 ~-4 minecraft:iron_block
setblock ~21 ~15 ~4 minecraft:iron_block
setblock ~21 ~16 ~-4 minecraft:iron_block
setblock ~21 ~16 ~4 minecraft:iron_block
setblock ~21 ~17 ~-4 minecraft:iron_block
setblock ~21 ~17 ~4 minecraft:iron_block
setblock ~21 ~53 ~-4 minecraft:iron_block
setblock ~21 ~53 ~4 minecraft:iron_block
setblock ~21 ~54 ~-4 minecraft:iron_block
setblock ~21 ~54 ~4 minecraft:iron_block
setblock ~21 ~55 ~-4 minecraft:iron_block
setblock ~21 ~55 ~4 minecraft:iron_block
setblock ~21 ~56 ~-4 minecraft:iron_block
setblock ~21 ~56 ~4 minecraft:iron_block
setblock ~21 ~57 ~-4 minecraft:iron_block
setblock ~21 ~57 ~4 minecraft:iron_block
setblock ~21 ~58 ~-4 minecraft:iron_block
setblock ~21 ~58 ~4 minecraft:iron_block
setblock ~22 ~13 ~-4 minecraft:iron_block
setblock ~22 ~13 ~4 minecraft:iron_block
setblock ~22 ~14 ~-4 minecraft:iron_block
setblock ~22 ~14 ~4 minecraft:iron_block
setblock ~22 ~15 ~-4 minecraft:iron_block
setblock ~22 ~15 ~4 minecraft:iron_block
setblock ~22 ~16 ~-4 minecraft:iron_block
setblock ~22 ~16 ~4 minecraft:iron_block
setblock ~22 ~17 ~-4 minecraft:iron_block
setblock ~22 ~17 ~4 minecraft:iron_block
setblock ~22 ~18 ~-4 minecraft:iron_block
setblock ~22 ~18 ~4 minecraft:iron_block
setblock ~22 ~52 ~-4 minecraft:iron_block
setblock ~22 ~52 ~4 minecraft:iron_block
setblock ~22 ~53 ~-4 minecraft:iron_block
setblock ~22 ~53 ~4 minecraft:iron_block
setblock ~22 ~54 ~-4 minecraft:iron_block
setblock ~22 ~54 ~4 minecraft:iron_block
setblock ~22 ~55 ~-4 minecraft:iron_block
setblock ~22 ~55 ~4 minecraft:iron_block
setblock ~22 ~56 ~-4 minecraft:iron_block
setblock ~22 ~56 ~4 minecraft:iron_block
setblock ~22 ~57 ~-4 minecraft:iron_block
setblock ~22 ~57 ~4 minecraft:iron_block
setblock ~23 ~14 ~-4 minecraft:iron_block
setblock ~23 ~14 ~4 minecraft:iron_block
setblock ~23 ~15 ~-4 minecraft:iron_block
setblock ~23 ~15 ~4 minecraft:iron_block
setblock ~23 ~16 ~-4 minecraft:iron_block
setblock ~23 ~16 ~4 minecraft:iron_block
setblock ~23 ~17 ~-4 minecraft:iron_block
setblock ~23 ~17 ~4 minecraft:iron_block
setblock ~23 ~18 ~-4 minecraft:iron_block
setblock ~23 ~18 ~4 minecraft:iron_block
setblock ~23 ~19 ~-4 minecraft:iron_block
setblock ~23 ~19 ~4 minecraft:iron_block
setblock ~23 ~20 ~-4 minecraft:iron_block
setblock ~23 ~20 ~4 minecraft:iron_block
setblock ~23 ~50 ~-4 minecraft:iron_block
setblock ~23 ~50 ~4 minecraft:iron_block
setblock ~23 ~51 ~-4 minecraft:iron_block
setblock ~23 ~51 ~4 minecraft:iron_block
setblock ~23 ~52 ~-4 minecraft:iron_block
setblock ~23 ~52 ~4 minecraft:iron_block
setblock ~23 ~53 ~-4 minecraft:iron_block
setblock ~23 ~53 ~4 minecraft:iron_block
setblock ~23 ~54 ~-4 minecraft:iron_block
setblock ~23 ~54 ~4 minecraft:iron_block
setblock ~23 ~55 ~-4 minecraft:iron_block
setblock ~23 ~55 ~4 minecraft:iron_block
setblock ~23 ~56 ~-4 minecraft:iron_block
setblock ~23 ~56 ~4 minecraft:iron_block
setblock ~24 ~15 ~-4 minecraft:iron_block
setblock ~24 ~15 ~4 minecraft:iron_block
setblock ~24 ~16 ~-4 minecraft:iron_block
setblock ~24 ~16 ~4 minecraft:iron_block
setblock ~24 ~17 ~-4 minecraft:iron_block
setblock ~24 ~17 ~4 minecraft:iron_block
setblock ~24 ~18 ~-4 minecraft:iron_block
setblock ~24 ~18 ~4 minecraft:iron_block
setblock ~24 ~19 ~-4 minecraft:iron_block
setblock ~24 ~19 ~4 minecraft:iron_block
setblock ~24 ~20 ~-4 minecraft:iron_block
setblock ~24 ~20 ~4 minecraft:iron_block
setblock ~24 ~21 ~-4 minecraft:iron_block
setblock ~24 ~21 ~4 minecraft:iron_block
setblock ~24 ~49 ~-4 minecraft:iron_block
setblock ~24 ~49 ~4 minecraft:iron_block
setblock ~24 ~50 ~-4 minecraft:iron_block
setblock ~24 ~50 ~4 minecraft:iron_block
setblock ~24 ~51 ~-4 minecraft:iron_block
setblock ~24 ~51 ~4 minecraft:iron_block
setblock ~24 ~52 ~-4 minecraft:iron_block
setblock ~24 ~52 ~4 minecraft:iron_block
setblock ~24 ~53 ~-4 minecraft:iron_block
setblock ~24 ~53 ~4 minecraft:iron_block
setblock ~24 ~54 ~-4 minecraft:iron_block
setblock ~24 ~54 ~4 minecraft:iron_block
setblock ~24 ~55 ~-4 minecraft:iron_block
setblock ~24 ~55 ~4 minecraft:iron_block
setblock ~25 ~16 ~-4 minecraft:iron_block
setblock ~25 ~16 ~4 minecraft:iron_block
setblock ~25 ~17 ~-4 minecraft:iron_block
setblock ~25 ~17 ~4 minecraft:iron_block
setblock ~25 ~18 ~-4 minecraft:iron_block
setblock ~25 ~18 ~4 minecraft:iron_block
setblock ~25 ~19 ~-4 minecraft:iron_block
setblock ~25 ~19 ~4 minecraft:iron_block
setblock ~25 ~20 ~-4 minecraft:iron_block
setblock ~25 ~20 ~4 minecraft:iron_block
setblock ~25 ~21 ~-4 minecraft:iron_block
setblock ~25 ~21 ~4 minecraft:iron_block
setblock ~25 ~22 ~-4 minecraft:iron_block
setblock ~25 ~22 ~4 minecraft:iron_block
setblock ~25 ~23 ~-4 minecraft:iron_block
setblock ~25 ~23 ~4 minecraft:iron_block
setblock ~25 ~47 ~-4 minecraft:iron_block
setblock ~25 ~47 ~4 minecraft:iron_block
setblock ~25 ~48 ~-4 minecraft:iron_block
setblock ~25 ~48 ~4 minecraft:iron_block
setblock ~25 ~49 ~-4 minecraft:iron_block
setblock ~25 ~49 ~4 minecraft:iron_block
setblock ~25 ~50 ~-4 minecraft:iron_block
setblock ~25 ~50 ~4 minecraft:iron_block
setblock ~25 ~51 ~-4 minecraft:iron_block
setblock ~25 ~51 ~4 minecraft:iron_block
setblock ~25 ~52 ~-4 minecraft:iron_block
setblock ~25 ~52 ~4 minecraft:iron_block
setblock ~25 ~53 ~-4 minecraft:iron_block
setblock ~25 ~53 ~4 minecraft:iron_block
setblock ~25 ~54 ~-4 minecraft:iron_block
setblock ~25 ~54 ~4 minecraft:iron_block
setblock ~26 ~18 ~-4 minecraft:iron_block
setblock ~26 ~18 ~4 minecraft:iron_block
setblock ~26 ~19 ~-4 minecraft:iron_block
setblock ~26 ~19 ~4 minecraft:iron_block
setblock ~26 ~20 ~-4 minecraft:iron_block
setblock ~26 ~20 ~4 minecraft:iron_block
setblock ~26 ~21 ~-4 minecraft:iron_block
setblock ~26 ~21 ~4 minecraft:iron_block
setblock ~26 ~22 ~-4 minecraft:iron_block
setblock ~26 ~22 ~4 minecraft:iron_block
setblock ~26 ~23 ~-4 minecraft:iron_block
setblock ~26 ~23 ~4 minecraft:iron_block
setblock ~26 ~24 ~-4 minecraft:iron_block
setblock ~26 ~24 ~4 minecraft:iron_block
setblock ~26 ~25 ~-4 minecraft:iron_block
setblock ~26 ~25 ~4 minecraft:iron_block
setblock ~26 ~26 ~-4 minecraft:iron_block
setblock ~26 ~26 ~4 minecraft:iron_block
setblock ~26 ~44 ~-4 minecraft:iron_block
setblock ~26 ~44 ~4 minecraft:iron_block
setblock ~26 ~45 ~-4 minecraft:iron_block
setblock ~26 ~45 ~4 minecraft:iron_block
setblock ~26 ~46 ~-4 minecraft:iron_block
setblock ~26 ~46 ~4 minecraft:iron_block
setblock ~26 ~47 ~-4 minecraft:iron_block
setblock ~26 ~47 ~4 minecraft:iron_block
setblock ~26 ~48 ~-4 minecraft:iron_block
setblock ~26 ~48 ~4 minecraft:iron_block
setblock ~26 ~49 ~-4 minecraft:iron_block
setblock ~26 ~49 ~4 minecraft:iron_block
setblock ~26 ~50 ~-4 minecraft:iron_block
setblock ~26 ~50 ~4 minecraft:iron_block
setblock ~26 ~51 ~-4 minecraft:iron_block
setblock ~26 ~51 ~4 minecraft:iron_block
setblock ~26 ~52 ~-4 minecraft:iron_block
setblock ~26 ~52 ~4 minecraft:iron_block
setblock ~27 ~19 ~-4 minecraft:iron_block
setblock ~27 ~19 ~4 minecraft:iron_block
setblock ~27 ~20 ~-4 minecraft:iron_block
setblock ~27 ~20 ~4 minecraft:iron_block
setblock ~27 ~21 ~-4 minecraft:iron_block
setblock ~27 ~21 ~4 minecraft:iron_block
setblock ~27 ~22 ~-4 minecraft:iron_block
setblock ~27 ~22 ~4 minecraft:iron_block
setblock ~27 ~23 ~-4 minecraft:iron_block
setblock ~27 ~23 ~4 minecraft:iron_block
setblock ~27 ~24 ~-4 minecraft:iron_block
setblock ~27 ~24 ~4 minecraft:iron_block
setblock ~27 ~25 ~-4 minecraft:iron_block
setblock ~27 ~25 ~4 minecraft:iron_block
setblock ~27 ~26 ~-4 minecraft:iron_block
setblock ~27 ~26 ~4 minecraft:iron_block
setblock ~27 ~27 ~-4 minecraft:iron_block
setblock ~27 ~27 ~4 minecraft:iron_block
setblock ~27 ~28 ~-4 minecraft:iron_block
setblock ~27 ~28 ~4 minecraft:iron_block
setblock ~27 ~29 ~-4 minecraft:iron_block
setblock ~27 ~29 ~4 minecraft:iron_block
setblock ~27 ~30 ~-4 minecraft:iron_block
setblock ~27 ~30 ~4 minecraft:iron_block
setblock ~27 ~40 ~-4 minecraft:iron_block
setblock ~27 ~40 ~4 minecraft:iron_block
setblock ~27 ~41 ~-4 minecraft:iron_block
setblock ~27 ~41 ~4 minecraft:iron_block
setblock ~27 ~42 ~-4 minecraft:iron_block
setblock ~27 ~42 ~4 minecraft:iron_block
setblock ~27 ~43 ~-4 minecraft:iron_block
setblock ~27 ~43 ~4 minecraft:iron_block
setblock ~27 ~44 ~-4 minecraft:iron_block
setblock ~27 ~44 ~4 minecraft:iron_block
setblock ~27 ~45 ~-4 minecraft:iron_block
setblock ~27 ~45 ~4 minecraft:iron_block
setblock ~27 ~46 ~-4 minecraft:iron_block
setblock ~27 ~46 ~4 minecraft:iron_block
setblock ~27 ~47 ~-4 minecraft:iron_block
setblock ~27 ~47 ~4 minecraft:iron_block
setblock ~27 ~48 ~-4 minecraft:iron_block
setblock ~27 ~48 ~4 minecraft:iron_block
setblock ~27 ~49 ~-4 minecraft:iron_block
setblock ~27 ~49 ~4 minecraft:iron_block
setblock ~27 ~50 ~-4 minecraft:iron_block
setblock ~27 ~50 ~4 minecraft:iron_block
setblock ~27 ~51 ~-4 minecraft:iron_block
setblock ~27 ~51 ~4 minecraft:iron_block
setblock ~28 ~21 ~-4 minecraft:iron_block
setblock ~28 ~21 ~4 minecraft:iron_block
setblock ~28 ~22 ~-4 minecraft:iron_block
setblock ~28 ~22 ~4 minecraft:iron_block
setblock ~28 ~23 ~-4 minecraft:iron_block
setblock ~28 ~23 ~4 minecraft:iron_block
setblock ~28 ~24 ~-4 minecraft:iron_block
setblock ~28 ~24 ~4 minecraft:iron_block
setblock ~28 ~25 ~-4 minecraft:iron_block
setblock ~28 ~25 ~4 minecraft:iron_block
setblock ~28 ~26 ~-4 minecraft:iron_block
setblock ~28 ~26 ~4 minecraft:iron_block
setblock ~28 ~27 ~-4 minecraft:iron_block
setblock ~28 ~27 ~4 minecraft:iron_block
setblock ~28 ~28 ~-4 minecraft:iron_block
setblock ~28 ~28 ~4 minecraft:iron_block
setblock ~28 ~29 ~-4 minecraft:iron_block
setblock ~28 ~29 ~4 minecraft:iron_block
setblock ~28 ~30 ~-4 minecraft:iron_block
setblock ~28 ~30 ~4 minecraft:iron_block
setblock ~28 ~31 ~-4 minecraft:iron_block
setblock ~28 ~31 ~4 minecraft:iron_block
setblock ~28 ~32 ~-4 minecraft:iron_block
setblock ~28 ~32 ~4 minecraft:iron_block
setblock ~28 ~33 ~-4 minecraft:iron_block
setblock ~28 ~33 ~4 minecraft:iron_block
setblock ~28 ~34 ~-4 minecraft:iron_block
setblock ~28 ~34 ~4 minecraft:iron_block
setblock ~28 ~35 ~-4 minecraft:iron_block
setblock ~28 ~35 ~4 minecraft:iron_block
setblock ~28 ~36 ~-4 minecraft:iron_block
setblock ~28 ~36 ~4 minecraft:iron_block
setblock ~28 ~37 ~-4 minecraft:iron_block
setblock ~28 ~37 ~4 minecraft:iron_block
setblock ~28 ~38 ~-4 minecraft:iron_block
setblock ~28 ~38 ~4 minecraft:iron_block
setblock ~28 ~39 ~-4 minecraft:iron_block
setblock ~28 ~39 ~4 minecraft:iron_block
setblock ~28 ~40 ~-4 minecraft:iron_block
setblock ~28 ~40 ~4 minecraft:iron_block
setblock ~28 ~41 ~-4 minecraft:iron_block
setblock ~28 ~41 ~4 minecraft:iron_block
setblock ~28 ~42 ~-4 minecraft:iron_block
setblock ~28 ~42 ~4 minecraft:iron_block
setblock ~28 ~43 ~-4 minecraft:iron_block
setblock ~28 ~43 ~4 minecraft:iron_block
setblock ~28 ~44 ~-4 minecraft:iron_block
setblock ~28 ~44 ~4 minecraft:iron_block
setblock ~28 ~45 ~-4 minecraft:iron_block
setblock ~28 ~45 ~4 minecraft:iron_block
setblock ~28 ~46 ~-4 minecraft:iron_block
setblock ~28 ~46 ~4 minecraft:iron_block
setblock ~28 ~47 ~-4 minecraft:iron_block
setblock ~28 ~47 ~4 minecraft:iron_block
setblock ~28 ~48 ~-4 minecraft:iron_block
setblock ~28 ~48 ~4 minecraft:iron_block
setblock ~28 ~49 ~-4 minecraft:iron_block
setblock ~28 ~49 ~4 minecraft:iron_block
setblock ~29 ~23 ~-4 minecraft:iron_block
setblock ~29 ~23 ~4 minecraft:iron_block
setblock ~29 ~24 ~-4 minecraft:iron_block
setblock ~29 ~24 ~4 minecraft:iron_block
setblock ~29 ~25 ~-4 minecraft:iron_block
setblock ~29 ~25 ~4 minecraft:iron_block
setblock ~29 ~26 ~-4 minecraft:iron_block
setblock ~29 ~26 ~4 minecraft:iron_block
setblock ~29 ~27 ~-4 minecraft:iron_block
setblock ~29 ~27 ~4 minecraft:iron_block
setblock ~29 ~28 ~-4 minecraft:iron_block
setblock ~29 ~28 ~4 minecraft:iron_block
setblock ~29 ~29 ~-4 minecraft:iron_block
setblock ~29 ~29 ~4 minecraft:iron_block
setblock ~29 ~30 ~-4 minecraft:iron_block
setblock ~29 ~30 ~4 minecraft:iron_block
setblock ~29 ~31 ~-4 minecraft:iron_block
setblock ~29 ~31 ~4 minecraft:iron_block
setblock ~29 ~32 ~-4 minecraft:iron_block
setblock ~29 ~32 ~4 minecraft:iron_block
setblock ~29 ~33 ~-4 minecraft:iron_block
setblock ~29 ~33 ~4 minecraft:iron_block
setblock ~29 ~34 ~-4 minecraft:iron_block
setblock ~29 ~34 ~4 minecraft:iron_block
setblock ~29 ~35 ~-4 minecraft:iron_block
setblock ~29 ~35 ~4 minecraft:iron_block
setblock ~29 ~36 ~-4 minecraft:iron_block
setblock ~29 ~36 ~4 minecraft:iron_block
setblock ~29 ~37 ~-4 minecraft:iron_block
setblock ~29 ~37 ~4 minecraft:iron_block
setblock ~29 ~38 ~-4 minecraft:iron_block
setblock ~29 ~38 ~4 minecraft:iron_block
setblock ~29 ~39 ~-4 minecraft:iron_block
setblock ~29 ~39 ~4 minecraft:iron_block
setblock ~29 ~40 ~-4 minecraft:iron_block
setblock ~29 ~40 ~4 minecraft:iron_block
setblock ~29 ~41 ~-4 minecraft:iron_block
setblock ~29 ~41 ~4 minecraft:iron_block
setblock ~29 ~42 ~-4 minecraft:iron_block
setblock ~29 ~42 ~4 minecraft:iron_block
setblock ~29 ~43 ~-4 minecraft:iron_block
setblock ~29 ~43 ~4 minecraft:iron_block
setblock ~29 ~44 ~-4 minecraft:iron_block
setblock ~29 ~44 ~4 minecraft:iron_block
setblock ~29 ~45 ~-4 minecraft:iron_block
setblock ~29 ~45 ~4 minecraft:iron_block
setblock ~29 ~46 ~-4 minecraft:iron_block
setblock ~29 ~46 ~4 minecraft:iron_block
setblock ~29 ~47 ~-4 minecraft:iron_block
setblock ~29 ~47 ~4 minecraft:iron_block
setblock ~30 ~26 ~-4 minecraft:iron_block
setblock ~30 ~26 ~4 minecraft:iron_block
setblock ~30 ~27 ~-4 minecraft:iron_block
setblock ~30 ~27 ~4 minecraft:iron_block
setblock ~30 ~28 ~-4 minecraft:iron_block
setblock ~30 ~28 ~4 minecraft:iron_block
setblock ~30 ~29 ~-4 minecraft:iron_block
setblock ~30 ~29 ~4 minecraft:iron_block
setblock ~30 ~30 ~-4 minecraft:iron_block
setblock ~30 ~30 ~4 minecraft:iron_block
setblock ~30 ~31 ~-4 minecraft:iron_block
setblock ~30 ~31 ~4 minecraft:iron_block
setblock ~30 ~32 ~-4 minecraft:iron_block
setblock ~30 ~32 ~4 minecraft:iron_block
setblock ~30 ~33 ~-4 minecraft:iron_block
setblock ~30 ~33 ~4 minecraft:iron_block
setblock ~30 ~34 ~-4 minecraft:iron_block
setblock ~30 ~34 ~4 minecraft:iron_block
setblock ~30 ~35 ~-4 minecraft:iron_block
setblock ~30 ~35 ~4 minecraft:iron_block
setblock ~30 ~36 ~-4 minecraft:iron_block
setblock ~30 ~36 ~4 minecraft:iron_block
setblock ~30 ~37 ~-4 minecraft:iron_block
setblock ~30 ~37 ~4 minecraft:iron_block
setblock ~30 ~38 ~-4 minecraft:iron_block
setblock ~30 ~38 ~4 minecraft:iron_block
setblock ~30 ~39 ~-4 minecraft:iron_block
setblock ~30 ~39 ~4 minecraft:iron_block
setblock ~30 ~40 ~-4 minecraft:iron_block
setblock ~30 ~40 ~4 minecraft:iron_block
setblock ~30 ~41 ~-4 minecraft:iron_block
setblock ~30 ~41 ~4 minecraft:iron_block
setblock ~30 ~42 ~-4 minecraft:iron_block
setblock ~30 ~42 ~4 minecraft:iron_block
setblock ~30 ~43 ~-4 minecraft:iron_block
setblock ~30 ~43 ~4 minecraft:iron_block
setblock ~30 ~44 ~-4 minecraft:iron_block
setblock ~30 ~44 ~4 minecraft:iron_block
setblock ~31 ~30 ~-4 minecraft:iron_block
setblock ~31 ~30 ~4 minecraft:iron_block
setblock ~31 ~31 ~-4 minecraft:iron_block
setblock ~31 ~31 ~4 minecraft:iron_block
setblock ~31 ~32 ~-4 minecraft:iron_block
setblock ~31 ~32 ~4 minecraft:iron_block
setblock ~31 ~33 ~-4 minecraft:iron_block
setblock ~31 ~33 ~4 minecraft:iron_block
setblock ~31 ~34 ~-4 minecraft:iron_block
setblock ~31 ~34 ~4 minecraft:iron_block
setblock ~31 ~35 ~-4 minecraft:iron_block
setblock ~31 ~35 ~4 minecraft:iron_block
setblock ~31 ~36 ~-4 minecraft:iron_block
setblock ~31 ~36 ~4 minecraft:iron_block
setblock ~31 ~37 ~-4 minecraft:iron_block
setblock ~31 ~37 ~4 minecraft:iron_block
setblock ~31 ~38 ~-4 minecraft:iron_block
setblock ~31 ~38 ~4 minecraft:iron_block
setblock ~31 ~39 ~-4 minecraft:iron_block
setblock ~31 ~39 ~4 minecraft:iron_block
setblock ~31 ~40 ~-4 minecraft:iron_block
setblock ~31 ~40 ~4 minecraft:iron_block
setblock ~31 ~35 ~-5 minecraft:sea_lantern
setblock ~31 ~35 ~5 minecraft:sea_lantern
setblock ~31 ~39 ~-5 minecraft:sea_lantern
setblock ~31 ~39 ~5 minecraft:sea_lantern
setblock ~30 ~43 ~-5 minecraft:sea_lantern
setblock ~30 ~43 ~5 minecraft:sea_lantern
setblock ~29 ~47 ~-5 minecraft:sea_lantern
setblock ~29 ~47 ~5 minecraft:sea_lantern
setblock ~27 ~50 ~-5 minecraft:sea_lantern
setblock ~27 ~50 ~5 minecraft:sea_lantern
setblock ~25 ~54 ~-5 minecraft:sea_lantern
setblock ~25 ~54 ~5 minecraft:sea_lantern
setblock ~22 ~57 ~-5 minecraft:sea_lantern
setblock ~22 ~57 ~5 minecraft:sea_lantern
setblock ~19 ~60 ~-5 minecraft:sea_lantern
setblock ~19 ~60 ~5 minecraft:sea_lantern
setblock ~16 ~62 ~-5 minecraft:sea_lantern
setblock ~16 ~62 ~5 minecraft:sea_lantern
setblock ~12 ~64 ~-5 minecraft:sea_lantern
setblock ~12 ~64 ~5 minecraft:sea_lantern
setblock ~8 ~65 ~-5 minecraft:sea_lantern
setblock ~8 ~65 ~5 minecraft:sea_lantern
setblock ~4 ~66 ~-5 minecraft:sea_lantern
setblock ~4 ~66 ~5 minecraft:sea_lantern
setblock ~ ~66 ~-5 minecraft:sea_lantern
setblock ~ ~66 ~5 minecraft:sea_lantern
setblock ~-4 ~66 ~-5 minecraft:sea_lantern
setblock ~-4 ~66 ~5 minecraft:sea_lantern
setblock ~-8 ~65 ~-5 minecraft:sea_lantern
setblock ~-8 ~65 ~5 minecraft:sea_lantern
setblock ~-12 ~64 ~-5 minecraft:sea_lantern
setblock ~-12 ~64 ~5 minecraft:sea_lantern
setblock ~-15 ~62 ~-5 minecraft:sea_lantern
setblock ~-15 ~62 ~5 minecraft:sea_lantern
setblock ~-19 ~60 ~-5 minecraft:sea_lantern
setblock ~-19 ~60 ~5 minecraft:sea_lantern
setblock ~-22 ~57 ~-5 minecraft:sea_lantern
setblock ~-22 ~57 ~5 minecraft:sea_lantern
setblock ~-25 ~54 ~-5 minecraft:sea_lantern
setblock ~-25 ~54 ~5 minecraft:sea_lantern
setblock ~-27 ~50 ~-5 minecraft:sea_lantern
setblock ~-27 ~50 ~5 minecraft:sea_lantern
setblock ~-29 ~47 ~-5 minecraft:sea_lantern
setblock ~-29 ~47 ~5 minecraft:sea_lantern
setblock ~-30 ~43 ~-5 minecraft:sea_lantern
setblock ~-30 ~43 ~5 minecraft:sea_lantern
setblock ~-31 ~39 ~-5 minecraft:sea_lantern
setblock ~-31 ~39 ~5 minecraft:sea_lantern
setblock ~-31 ~35 ~-5 minecraft:sea_lantern
setblock ~-31 ~35 ~5 minecraft:sea_lantern
setblock ~-31 ~31 ~-5 minecraft:sea_lantern
setblock ~-31 ~31 ~5 minecraft:sea_lantern
setblock ~-30 ~27 ~-5 minecraft:sea_lantern
setblock ~-30 ~27 ~5 minecraft:sea_lantern
setblock ~-29 ~23 ~-5 minecraft:sea_lantern
setblock ~-29 ~23 ~5 minecraft:sea_lantern
setblock ~-27 ~19 ~-5 minecraft:sea_lantern
setblock ~-27 ~19 ~5 minecraft:sea_lantern
setblock ~-25 ~16 ~-5 minecraft:sea_lantern
setblock ~-25 ~16 ~5 minecraft:sea_lantern
setblock ~-22 ~13 ~-5 minecraft:sea_lantern
setblock ~-22 ~13 ~5 minecraft:sea_lantern
setblock ~-19 ~10 ~-5 minecraft:sea_lantern
setblock ~-19 ~10 ~5 minecraft:sea_lantern
setblock ~-16 ~8 ~-5 minecraft:sea_lantern
setblock ~-16 ~8 ~5 minecraft:sea_lantern
setblock ~-12 ~6 ~-5 minecraft:sea_lantern
setblock ~-12 ~6 ~5 minecraft:sea_lantern
setblock ~-8 ~5 ~-5 minecraft:sea_lantern
setblock ~-8 ~5 ~5 minecraft:sea_lantern
setblock ~-4 ~4 ~-5 minecraft:sea_lantern
setblock ~-4 ~4 ~5 minecraft:sea_lantern
setblock ~ ~4 ~-5 minecraft:sea_lantern
setblock ~ ~4 ~5 minecraft:sea_lantern
setblock ~4 ~4 ~-5 minecraft:sea_lantern
setblock ~4 ~4 ~5 minecraft:sea_lantern
setblock ~8 ~5 ~-5 minecraft:sea_lantern
setblock ~8 ~5 ~5 minecraft:sea_lantern
setblock ~12 ~6 ~-5 minecraft:sea_lantern
setblock ~12 ~6 ~5 minecraft:sea_lantern
setblock ~16 ~8 ~-5 minecraft:sea_lantern
setblock ~16 ~8 ~5 minecraft:sea_lantern
setblock ~19 ~10 ~-5 minecraft:sea_lantern
setblock ~19 ~10 ~5 minecraft:sea_lantern
setblock ~22 ~13 ~-5 minecraft:sea_lantern
setblock ~22 ~13 ~5 minecraft:sea_lantern
setblock ~25 ~16 ~-5 minecraft:sea_lantern
setblock ~25 ~16 ~5 minecraft:sea_lantern
setblock ~27 ~19 ~-5 minecraft:sea_lantern
setblock ~27 ~19 ~5 minecraft:sea_lantern
setblock ~29 ~23 ~-5 minecraft:sea_lantern
setblock ~29 ~23 ~5 minecraft:sea_lantern
setblock ~30 ~27 ~-5 minecraft:sea_lantern
setblock ~30 ~27 ~5 minecraft:sea_lantern
setblock ~31 ~31 ~-5 minecraft:sea_lantern
setblock ~31 ~31 ~5 minecraft:sea_lantern

# === SPOKES ===
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~1 ~35 ~-4 minecraft:iron_block
setblock ~2 ~35 ~-4 minecraft:iron_block
setblock ~3 ~35 ~-4 minecraft:iron_block
setblock ~4 ~35 ~-4 minecraft:iron_block
setblock ~5 ~35 ~-4 minecraft:iron_block
setblock ~6 ~35 ~-4 minecraft:iron_block
setblock ~7 ~35 ~-4 minecraft:iron_block
setblock ~8 ~35 ~-4 minecraft:iron_block
setblock ~9 ~35 ~-4 minecraft:iron_block
setblock ~10 ~35 ~-4 minecraft:iron_block
setblock ~11 ~35 ~-4 minecraft:iron_block
setblock ~12 ~35 ~-4 minecraft:iron_block
setblock ~13 ~35 ~-4 minecraft:iron_block
setblock ~14 ~35 ~-4 minecraft:iron_block
setblock ~15 ~35 ~-4 minecraft:iron_block
setblock ~16 ~35 ~-4 minecraft:iron_block
setblock ~17 ~35 ~-4 minecraft:iron_block
setblock ~18 ~35 ~-4 minecraft:iron_block
setblock ~19 ~35 ~-4 minecraft:iron_block
setblock ~20 ~35 ~-4 minecraft:iron_block
setblock ~21 ~35 ~-4 minecraft:iron_block
setblock ~22 ~35 ~-4 minecraft:iron_block
setblock ~23 ~35 ~-4 minecraft:iron_block
setblock ~24 ~35 ~-4 minecraft:iron_block
setblock ~25 ~35 ~-4 minecraft:iron_block
setblock ~26 ~35 ~-4 minecraft:iron_block
setblock ~27 ~35 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~1 ~35 ~4 minecraft:iron_block
setblock ~2 ~35 ~4 minecraft:iron_block
setblock ~3 ~35 ~4 minecraft:iron_block
setblock ~4 ~35 ~4 minecraft:iron_block
setblock ~5 ~35 ~4 minecraft:iron_block
setblock ~6 ~35 ~4 minecraft:iron_block
setblock ~7 ~35 ~4 minecraft:iron_block
setblock ~8 ~35 ~4 minecraft:iron_block
setblock ~9 ~35 ~4 minecraft:iron_block
setblock ~10 ~35 ~4 minecraft:iron_block
setblock ~11 ~35 ~4 minecraft:iron_block
setblock ~12 ~35 ~4 minecraft:iron_block
setblock ~13 ~35 ~4 minecraft:iron_block
setblock ~14 ~35 ~4 minecraft:iron_block
setblock ~15 ~35 ~4 minecraft:iron_block
setblock ~16 ~35 ~4 minecraft:iron_block
setblock ~17 ~35 ~4 minecraft:iron_block
setblock ~18 ~35 ~4 minecraft:iron_block
setblock ~19 ~35 ~4 minecraft:iron_block
setblock ~20 ~35 ~4 minecraft:iron_block
setblock ~21 ~35 ~4 minecraft:iron_block
setblock ~22 ~35 ~4 minecraft:iron_block
setblock ~23 ~35 ~4 minecraft:iron_block
setblock ~24 ~35 ~4 minecraft:iron_block
setblock ~25 ~35 ~4 minecraft:iron_block
setblock ~26 ~35 ~4 minecraft:iron_block
setblock ~27 ~35 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~1 ~35 ~-4 minecraft:iron_block
setblock ~2 ~36 ~-4 minecraft:iron_block
setblock ~3 ~36 ~-4 minecraft:iron_block
setblock ~4 ~37 ~-4 minecraft:iron_block
setblock ~5 ~37 ~-4 minecraft:iron_block
setblock ~6 ~37 ~-4 minecraft:iron_block
setblock ~7 ~38 ~-4 minecraft:iron_block
setblock ~8 ~38 ~-4 minecraft:iron_block
setblock ~9 ~39 ~-4 minecraft:iron_block
setblock ~10 ~39 ~-4 minecraft:iron_block
setblock ~11 ~39 ~-4 minecraft:iron_block
setblock ~12 ~40 ~-4 minecraft:iron_block
setblock ~13 ~40 ~-4 minecraft:iron_block
setblock ~14 ~41 ~-4 minecraft:iron_block
setblock ~15 ~41 ~-4 minecraft:iron_block
setblock ~16 ~41 ~-4 minecraft:iron_block
setblock ~17 ~42 ~-4 minecraft:iron_block
setblock ~18 ~42 ~-4 minecraft:iron_block
setblock ~19 ~43 ~-4 minecraft:iron_block
setblock ~20 ~43 ~-4 minecraft:iron_block
setblock ~21 ~43 ~-4 minecraft:iron_block
setblock ~22 ~44 ~-4 minecraft:iron_block
setblock ~23 ~44 ~-4 minecraft:iron_block
setblock ~24 ~45 ~-4 minecraft:iron_block
setblock ~25 ~45 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~1 ~35 ~4 minecraft:iron_block
setblock ~2 ~36 ~4 minecraft:iron_block
setblock ~3 ~36 ~4 minecraft:iron_block
setblock ~4 ~37 ~4 minecraft:iron_block
setblock ~5 ~37 ~4 minecraft:iron_block
setblock ~6 ~37 ~4 minecraft:iron_block
setblock ~7 ~38 ~4 minecraft:iron_block
setblock ~8 ~38 ~4 minecraft:iron_block
setblock ~9 ~39 ~4 minecraft:iron_block
setblock ~10 ~39 ~4 minecraft:iron_block
setblock ~11 ~39 ~4 minecraft:iron_block
setblock ~12 ~40 ~4 minecraft:iron_block
setblock ~13 ~40 ~4 minecraft:iron_block
setblock ~14 ~41 ~4 minecraft:iron_block
setblock ~15 ~41 ~4 minecraft:iron_block
setblock ~16 ~41 ~4 minecraft:iron_block
setblock ~17 ~42 ~4 minecraft:iron_block
setblock ~18 ~42 ~4 minecraft:iron_block
setblock ~19 ~43 ~4 minecraft:iron_block
setblock ~20 ~43 ~4 minecraft:iron_block
setblock ~21 ~43 ~4 minecraft:iron_block
setblock ~22 ~44 ~4 minecraft:iron_block
setblock ~23 ~44 ~4 minecraft:iron_block
setblock ~24 ~45 ~4 minecraft:iron_block
setblock ~25 ~45 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~1 ~36 ~-4 minecraft:iron_block
setblock ~2 ~37 ~-4 minecraft:iron_block
setblock ~3 ~38 ~-4 minecraft:iron_block
setblock ~4 ~39 ~-4 minecraft:iron_block
setblock ~5 ~40 ~-4 minecraft:iron_block
setblock ~6 ~41 ~-4 minecraft:iron_block
setblock ~7 ~42 ~-4 minecraft:iron_block
setblock ~8 ~43 ~-4 minecraft:iron_block
setblock ~9 ~44 ~-4 minecraft:iron_block
setblock ~10 ~45 ~-4 minecraft:iron_block
setblock ~11 ~46 ~-4 minecraft:iron_block
setblock ~12 ~47 ~-4 minecraft:iron_block
setblock ~13 ~48 ~-4 minecraft:iron_block
setblock ~14 ~49 ~-4 minecraft:iron_block
setblock ~15 ~50 ~-4 minecraft:iron_block
setblock ~16 ~51 ~-4 minecraft:iron_block
setblock ~17 ~52 ~-4 minecraft:iron_block
setblock ~18 ~53 ~-4 minecraft:iron_block
setblock ~19 ~54 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~1 ~36 ~4 minecraft:iron_block
setblock ~2 ~37 ~4 minecraft:iron_block
setblock ~3 ~38 ~4 minecraft:iron_block
setblock ~4 ~39 ~4 minecraft:iron_block
setblock ~5 ~40 ~4 minecraft:iron_block
setblock ~6 ~41 ~4 minecraft:iron_block
setblock ~7 ~42 ~4 minecraft:iron_block
setblock ~8 ~43 ~4 minecraft:iron_block
setblock ~9 ~44 ~4 minecraft:iron_block
setblock ~10 ~45 ~4 minecraft:iron_block
setblock ~11 ~46 ~4 minecraft:iron_block
setblock ~12 ~47 ~4 minecraft:iron_block
setblock ~13 ~48 ~4 minecraft:iron_block
setblock ~14 ~49 ~4 minecraft:iron_block
setblock ~15 ~50 ~4 minecraft:iron_block
setblock ~16 ~51 ~4 minecraft:iron_block
setblock ~17 ~52 ~4 minecraft:iron_block
setblock ~18 ~53 ~4 minecraft:iron_block
setblock ~19 ~54 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~ ~36 ~-4 minecraft:iron_block
setblock ~1 ~37 ~-4 minecraft:iron_block
setblock ~1 ~38 ~-4 minecraft:iron_block
setblock ~2 ~39 ~-4 minecraft:iron_block
setblock ~2 ~40 ~-4 minecraft:iron_block
setblock ~2 ~41 ~-4 minecraft:iron_block
setblock ~3 ~42 ~-4 minecraft:iron_block
setblock ~3 ~43 ~-4 minecraft:iron_block
setblock ~4 ~44 ~-4 minecraft:iron_block
setblock ~4 ~45 ~-4 minecraft:iron_block
setblock ~4 ~46 ~-4 minecraft:iron_block
setblock ~5 ~47 ~-4 minecraft:iron_block
setblock ~5 ~48 ~-4 minecraft:iron_block
setblock ~6 ~49 ~-4 minecraft:iron_block
setblock ~6 ~50 ~-4 minecraft:iron_block
setblock ~6 ~51 ~-4 minecraft:iron_block
setblock ~7 ~52 ~-4 minecraft:iron_block
setblock ~7 ~53 ~-4 minecraft:iron_block
setblock ~8 ~54 ~-4 minecraft:iron_block
setblock ~8 ~55 ~-4 minecraft:iron_block
setblock ~8 ~56 ~-4 minecraft:iron_block
setblock ~9 ~57 ~-4 minecraft:iron_block
setblock ~9 ~58 ~-4 minecraft:iron_block
setblock ~10 ~59 ~-4 minecraft:iron_block
setblock ~10 ~60 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~ ~36 ~4 minecraft:iron_block
setblock ~1 ~37 ~4 minecraft:iron_block
setblock ~1 ~38 ~4 minecraft:iron_block
setblock ~2 ~39 ~4 minecraft:iron_block
setblock ~2 ~40 ~4 minecraft:iron_block
setblock ~2 ~41 ~4 minecraft:iron_block
setblock ~3 ~42 ~4 minecraft:iron_block
setblock ~3 ~43 ~4 minecraft:iron_block
setblock ~4 ~44 ~4 minecraft:iron_block
setblock ~4 ~45 ~4 minecraft:iron_block
setblock ~4 ~46 ~4 minecraft:iron_block
setblock ~5 ~47 ~4 minecraft:iron_block
setblock ~5 ~48 ~4 minecraft:iron_block
setblock ~6 ~49 ~4 minecraft:iron_block
setblock ~6 ~50 ~4 minecraft:iron_block
setblock ~6 ~51 ~4 minecraft:iron_block
setblock ~7 ~52 ~4 minecraft:iron_block
setblock ~7 ~53 ~4 minecraft:iron_block
setblock ~8 ~54 ~4 minecraft:iron_block
setblock ~8 ~55 ~4 minecraft:iron_block
setblock ~8 ~56 ~4 minecraft:iron_block
setblock ~9 ~57 ~4 minecraft:iron_block
setblock ~9 ~58 ~4 minecraft:iron_block
setblock ~10 ~59 ~4 minecraft:iron_block
setblock ~10 ~60 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~ ~36 ~-4 minecraft:iron_block
setblock ~ ~37 ~-4 minecraft:iron_block
setblock ~ ~38 ~-4 minecraft:iron_block
setblock ~ ~39 ~-4 minecraft:iron_block
setblock ~ ~40 ~-4 minecraft:iron_block
setblock ~ ~41 ~-4 minecraft:iron_block
setblock ~ ~42 ~-4 minecraft:iron_block
setblock ~ ~43 ~-4 minecraft:iron_block
setblock ~ ~44 ~-4 minecraft:iron_block
setblock ~ ~45 ~-4 minecraft:iron_block
setblock ~ ~46 ~-4 minecraft:iron_block
setblock ~ ~47 ~-4 minecraft:iron_block
setblock ~ ~48 ~-4 minecraft:iron_block
setblock ~ ~49 ~-4 minecraft:iron_block
setblock ~ ~50 ~-4 minecraft:iron_block
setblock ~ ~51 ~-4 minecraft:iron_block
setblock ~ ~52 ~-4 minecraft:iron_block
setblock ~ ~53 ~-4 minecraft:iron_block
setblock ~ ~54 ~-4 minecraft:iron_block
setblock ~ ~55 ~-4 minecraft:iron_block
setblock ~ ~56 ~-4 minecraft:iron_block
setblock ~ ~57 ~-4 minecraft:iron_block
setblock ~ ~58 ~-4 minecraft:iron_block
setblock ~ ~59 ~-4 minecraft:iron_block
setblock ~ ~60 ~-4 minecraft:iron_block
setblock ~ ~61 ~-4 minecraft:iron_block
setblock ~ ~62 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~ ~36 ~4 minecraft:iron_block
setblock ~ ~37 ~4 minecraft:iron_block
setblock ~ ~38 ~4 minecraft:iron_block
setblock ~ ~39 ~4 minecraft:iron_block
setblock ~ ~40 ~4 minecraft:iron_block
setblock ~ ~41 ~4 minecraft:iron_block
setblock ~ ~42 ~4 minecraft:iron_block
setblock ~ ~43 ~4 minecraft:iron_block
setblock ~ ~44 ~4 minecraft:iron_block
setblock ~ ~45 ~4 minecraft:iron_block
setblock ~ ~46 ~4 minecraft:iron_block
setblock ~ ~47 ~4 minecraft:iron_block
setblock ~ ~48 ~4 minecraft:iron_block
setblock ~ ~49 ~4 minecraft:iron_block
setblock ~ ~50 ~4 minecraft:iron_block
setblock ~ ~51 ~4 minecraft:iron_block
setblock ~ ~52 ~4 minecraft:iron_block
setblock ~ ~53 ~4 minecraft:iron_block
setblock ~ ~54 ~4 minecraft:iron_block
setblock ~ ~55 ~4 minecraft:iron_block
setblock ~ ~56 ~4 minecraft:iron_block
setblock ~ ~57 ~4 minecraft:iron_block
setblock ~ ~58 ~4 minecraft:iron_block
setblock ~ ~59 ~4 minecraft:iron_block
setblock ~ ~60 ~4 minecraft:iron_block
setblock ~ ~61 ~4 minecraft:iron_block
setblock ~ ~62 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~ ~36 ~-4 minecraft:iron_block
setblock ~-1 ~37 ~-4 minecraft:iron_block
setblock ~-1 ~38 ~-4 minecraft:iron_block
setblock ~-2 ~39 ~-4 minecraft:iron_block
setblock ~-2 ~40 ~-4 minecraft:iron_block
setblock ~-2 ~41 ~-4 minecraft:iron_block
setblock ~-3 ~42 ~-4 minecraft:iron_block
setblock ~-3 ~43 ~-4 minecraft:iron_block
setblock ~-4 ~44 ~-4 minecraft:iron_block
setblock ~-4 ~45 ~-4 minecraft:iron_block
setblock ~-4 ~46 ~-4 minecraft:iron_block
setblock ~-5 ~47 ~-4 minecraft:iron_block
setblock ~-5 ~48 ~-4 minecraft:iron_block
setblock ~-6 ~49 ~-4 minecraft:iron_block
setblock ~-6 ~50 ~-4 minecraft:iron_block
setblock ~-6 ~51 ~-4 minecraft:iron_block
setblock ~-7 ~52 ~-4 minecraft:iron_block
setblock ~-7 ~53 ~-4 minecraft:iron_block
setblock ~-8 ~54 ~-4 minecraft:iron_block
setblock ~-8 ~55 ~-4 minecraft:iron_block
setblock ~-8 ~56 ~-4 minecraft:iron_block
setblock ~-9 ~57 ~-4 minecraft:iron_block
setblock ~-9 ~58 ~-4 minecraft:iron_block
setblock ~-10 ~59 ~-4 minecraft:iron_block
setblock ~-10 ~60 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~ ~36 ~4 minecraft:iron_block
setblock ~-1 ~37 ~4 minecraft:iron_block
setblock ~-1 ~38 ~4 minecraft:iron_block
setblock ~-2 ~39 ~4 minecraft:iron_block
setblock ~-2 ~40 ~4 minecraft:iron_block
setblock ~-2 ~41 ~4 minecraft:iron_block
setblock ~-3 ~42 ~4 minecraft:iron_block
setblock ~-3 ~43 ~4 minecraft:iron_block
setblock ~-4 ~44 ~4 minecraft:iron_block
setblock ~-4 ~45 ~4 minecraft:iron_block
setblock ~-4 ~46 ~4 minecraft:iron_block
setblock ~-5 ~47 ~4 minecraft:iron_block
setblock ~-5 ~48 ~4 minecraft:iron_block
setblock ~-6 ~49 ~4 minecraft:iron_block
setblock ~-6 ~50 ~4 minecraft:iron_block
setblock ~-6 ~51 ~4 minecraft:iron_block
setblock ~-7 ~52 ~4 minecraft:iron_block
setblock ~-7 ~53 ~4 minecraft:iron_block
setblock ~-8 ~54 ~4 minecraft:iron_block
setblock ~-8 ~55 ~4 minecraft:iron_block
setblock ~-8 ~56 ~4 minecraft:iron_block
setblock ~-9 ~57 ~4 minecraft:iron_block
setblock ~-9 ~58 ~4 minecraft:iron_block
setblock ~-10 ~59 ~4 minecraft:iron_block
setblock ~-10 ~60 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~-1 ~36 ~-4 minecraft:iron_block
setblock ~-2 ~37 ~-4 minecraft:iron_block
setblock ~-3 ~38 ~-4 minecraft:iron_block
setblock ~-4 ~39 ~-4 minecraft:iron_block
setblock ~-5 ~40 ~-4 minecraft:iron_block
setblock ~-6 ~41 ~-4 minecraft:iron_block
setblock ~-7 ~42 ~-4 minecraft:iron_block
setblock ~-8 ~43 ~-4 minecraft:iron_block
setblock ~-9 ~44 ~-4 minecraft:iron_block
setblock ~-10 ~45 ~-4 minecraft:iron_block
setblock ~-11 ~46 ~-4 minecraft:iron_block
setblock ~-12 ~47 ~-4 minecraft:iron_block
setblock ~-13 ~48 ~-4 minecraft:iron_block
setblock ~-14 ~49 ~-4 minecraft:iron_block
setblock ~-15 ~50 ~-4 minecraft:iron_block
setblock ~-16 ~51 ~-4 minecraft:iron_block
setblock ~-17 ~52 ~-4 minecraft:iron_block
setblock ~-18 ~53 ~-4 minecraft:iron_block
setblock ~-19 ~54 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~-1 ~36 ~4 minecraft:iron_block
setblock ~-2 ~37 ~4 minecraft:iron_block
setblock ~-3 ~38 ~4 minecraft:iron_block
setblock ~-4 ~39 ~4 minecraft:iron_block
setblock ~-5 ~40 ~4 minecraft:iron_block
setblock ~-6 ~41 ~4 minecraft:iron_block
setblock ~-7 ~42 ~4 minecraft:iron_block
setblock ~-8 ~43 ~4 minecraft:iron_block
setblock ~-9 ~44 ~4 minecraft:iron_block
setblock ~-10 ~45 ~4 minecraft:iron_block
setblock ~-11 ~46 ~4 minecraft:iron_block
setblock ~-12 ~47 ~4 minecraft:iron_block
setblock ~-13 ~48 ~4 minecraft:iron_block
setblock ~-14 ~49 ~4 minecraft:iron_block
setblock ~-15 ~50 ~4 minecraft:iron_block
setblock ~-16 ~51 ~4 minecraft:iron_block
setblock ~-17 ~52 ~4 minecraft:iron_block
setblock ~-18 ~53 ~4 minecraft:iron_block
setblock ~-19 ~54 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~-1 ~35 ~-4 minecraft:iron_block
setblock ~-2 ~36 ~-4 minecraft:iron_block
setblock ~-3 ~36 ~-4 minecraft:iron_block
setblock ~-4 ~37 ~-4 minecraft:iron_block
setblock ~-5 ~37 ~-4 minecraft:iron_block
setblock ~-6 ~37 ~-4 minecraft:iron_block
setblock ~-7 ~38 ~-4 minecraft:iron_block
setblock ~-8 ~38 ~-4 minecraft:iron_block
setblock ~-9 ~39 ~-4 minecraft:iron_block
setblock ~-10 ~39 ~-4 minecraft:iron_block
setblock ~-11 ~39 ~-4 minecraft:iron_block
setblock ~-12 ~40 ~-4 minecraft:iron_block
setblock ~-13 ~40 ~-4 minecraft:iron_block
setblock ~-14 ~41 ~-4 minecraft:iron_block
setblock ~-15 ~41 ~-4 minecraft:iron_block
setblock ~-16 ~41 ~-4 minecraft:iron_block
setblock ~-17 ~42 ~-4 minecraft:iron_block
setblock ~-18 ~42 ~-4 minecraft:iron_block
setblock ~-19 ~43 ~-4 minecraft:iron_block
setblock ~-20 ~43 ~-4 minecraft:iron_block
setblock ~-21 ~43 ~-4 minecraft:iron_block
setblock ~-22 ~44 ~-4 minecraft:iron_block
setblock ~-23 ~44 ~-4 minecraft:iron_block
setblock ~-24 ~45 ~-4 minecraft:iron_block
setblock ~-25 ~45 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~-1 ~35 ~4 minecraft:iron_block
setblock ~-2 ~36 ~4 minecraft:iron_block
setblock ~-3 ~36 ~4 minecraft:iron_block
setblock ~-4 ~37 ~4 minecraft:iron_block
setblock ~-5 ~37 ~4 minecraft:iron_block
setblock ~-6 ~37 ~4 minecraft:iron_block
setblock ~-7 ~38 ~4 minecraft:iron_block
setblock ~-8 ~38 ~4 minecraft:iron_block
setblock ~-9 ~39 ~4 minecraft:iron_block
setblock ~-10 ~39 ~4 minecraft:iron_block
setblock ~-11 ~39 ~4 minecraft:iron_block
setblock ~-12 ~40 ~4 minecraft:iron_block
setblock ~-13 ~40 ~4 minecraft:iron_block
setblock ~-14 ~41 ~4 minecraft:iron_block
setblock ~-15 ~41 ~4 minecraft:iron_block
setblock ~-16 ~41 ~4 minecraft:iron_block
setblock ~-17 ~42 ~4 minecraft:iron_block
setblock ~-18 ~42 ~4 minecraft:iron_block
setblock ~-19 ~43 ~4 minecraft:iron_block
setblock ~-20 ~43 ~4 minecraft:iron_block
setblock ~-21 ~43 ~4 minecraft:iron_block
setblock ~-22 ~44 ~4 minecraft:iron_block
setblock ~-23 ~44 ~4 minecraft:iron_block
setblock ~-24 ~45 ~4 minecraft:iron_block
setblock ~-25 ~45 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~-1 ~35 ~-4 minecraft:iron_block
setblock ~-2 ~35 ~-4 minecraft:iron_block
setblock ~-3 ~35 ~-4 minecraft:iron_block
setblock ~-4 ~35 ~-4 minecraft:iron_block
setblock ~-5 ~35 ~-4 minecraft:iron_block
setblock ~-6 ~35 ~-4 minecraft:iron_block
setblock ~-7 ~35 ~-4 minecraft:iron_block
setblock ~-8 ~35 ~-4 minecraft:iron_block
setblock ~-9 ~35 ~-4 minecraft:iron_block
setblock ~-10 ~35 ~-4 minecraft:iron_block
setblock ~-11 ~35 ~-4 minecraft:iron_block
setblock ~-12 ~35 ~-4 minecraft:iron_block
setblock ~-13 ~35 ~-4 minecraft:iron_block
setblock ~-14 ~35 ~-4 minecraft:iron_block
setblock ~-15 ~35 ~-4 minecraft:iron_block
setblock ~-16 ~35 ~-4 minecraft:iron_block
setblock ~-17 ~35 ~-4 minecraft:iron_block
setblock ~-18 ~35 ~-4 minecraft:iron_block
setblock ~-19 ~35 ~-4 minecraft:iron_block
setblock ~-20 ~35 ~-4 minecraft:iron_block
setblock ~-21 ~35 ~-4 minecraft:iron_block
setblock ~-22 ~35 ~-4 minecraft:iron_block
setblock ~-23 ~35 ~-4 minecraft:iron_block
setblock ~-24 ~35 ~-4 minecraft:iron_block
setblock ~-25 ~35 ~-4 minecraft:iron_block
setblock ~-26 ~35 ~-4 minecraft:iron_block
setblock ~-27 ~35 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~-1 ~35 ~4 minecraft:iron_block
setblock ~-2 ~35 ~4 minecraft:iron_block
setblock ~-3 ~35 ~4 minecraft:iron_block
setblock ~-4 ~35 ~4 minecraft:iron_block
setblock ~-5 ~35 ~4 minecraft:iron_block
setblock ~-6 ~35 ~4 minecraft:iron_block
setblock ~-7 ~35 ~4 minecraft:iron_block
setblock ~-8 ~35 ~4 minecraft:iron_block
setblock ~-9 ~35 ~4 minecraft:iron_block
setblock ~-10 ~35 ~4 minecraft:iron_block
setblock ~-11 ~35 ~4 minecraft:iron_block
setblock ~-12 ~35 ~4 minecraft:iron_block
setblock ~-13 ~35 ~4 minecraft:iron_block
setblock ~-14 ~35 ~4 minecraft:iron_block
setblock ~-15 ~35 ~4 minecraft:iron_block
setblock ~-16 ~35 ~4 minecraft:iron_block
setblock ~-17 ~35 ~4 minecraft:iron_block
setblock ~-18 ~35 ~4 minecraft:iron_block
setblock ~-19 ~35 ~4 minecraft:iron_block
setblock ~-20 ~35 ~4 minecraft:iron_block
setblock ~-21 ~35 ~4 minecraft:iron_block
setblock ~-22 ~35 ~4 minecraft:iron_block
setblock ~-23 ~35 ~4 minecraft:iron_block
setblock ~-24 ~35 ~4 minecraft:iron_block
setblock ~-25 ~35 ~4 minecraft:iron_block
setblock ~-26 ~35 ~4 minecraft:iron_block
setblock ~-27 ~35 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~-1 ~35 ~-4 minecraft:iron_block
setblock ~-2 ~34 ~-4 minecraft:iron_block
setblock ~-3 ~34 ~-4 minecraft:iron_block
setblock ~-4 ~33 ~-4 minecraft:iron_block
setblock ~-5 ~33 ~-4 minecraft:iron_block
setblock ~-6 ~33 ~-4 minecraft:iron_block
setblock ~-7 ~32 ~-4 minecraft:iron_block
setblock ~-8 ~32 ~-4 minecraft:iron_block
setblock ~-9 ~31 ~-4 minecraft:iron_block
setblock ~-10 ~31 ~-4 minecraft:iron_block
setblock ~-11 ~31 ~-4 minecraft:iron_block
setblock ~-12 ~30 ~-4 minecraft:iron_block
setblock ~-13 ~30 ~-4 minecraft:iron_block
setblock ~-14 ~29 ~-4 minecraft:iron_block
setblock ~-15 ~29 ~-4 minecraft:iron_block
setblock ~-16 ~29 ~-4 minecraft:iron_block
setblock ~-17 ~28 ~-4 minecraft:iron_block
setblock ~-18 ~28 ~-4 minecraft:iron_block
setblock ~-19 ~27 ~-4 minecraft:iron_block
setblock ~-20 ~27 ~-4 minecraft:iron_block
setblock ~-21 ~27 ~-4 minecraft:iron_block
setblock ~-22 ~26 ~-4 minecraft:iron_block
setblock ~-23 ~26 ~-4 minecraft:iron_block
setblock ~-24 ~25 ~-4 minecraft:iron_block
setblock ~-25 ~25 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~-1 ~35 ~4 minecraft:iron_block
setblock ~-2 ~34 ~4 minecraft:iron_block
setblock ~-3 ~34 ~4 minecraft:iron_block
setblock ~-4 ~33 ~4 minecraft:iron_block
setblock ~-5 ~33 ~4 minecraft:iron_block
setblock ~-6 ~33 ~4 minecraft:iron_block
setblock ~-7 ~32 ~4 minecraft:iron_block
setblock ~-8 ~32 ~4 minecraft:iron_block
setblock ~-9 ~31 ~4 minecraft:iron_block
setblock ~-10 ~31 ~4 minecraft:iron_block
setblock ~-11 ~31 ~4 minecraft:iron_block
setblock ~-12 ~30 ~4 minecraft:iron_block
setblock ~-13 ~30 ~4 minecraft:iron_block
setblock ~-14 ~29 ~4 minecraft:iron_block
setblock ~-15 ~29 ~4 minecraft:iron_block
setblock ~-16 ~29 ~4 minecraft:iron_block
setblock ~-17 ~28 ~4 minecraft:iron_block
setblock ~-18 ~28 ~4 minecraft:iron_block
setblock ~-19 ~27 ~4 minecraft:iron_block
setblock ~-20 ~27 ~4 minecraft:iron_block
setblock ~-21 ~27 ~4 minecraft:iron_block
setblock ~-22 ~26 ~4 minecraft:iron_block
setblock ~-23 ~26 ~4 minecraft:iron_block
setblock ~-24 ~25 ~4 minecraft:iron_block
setblock ~-25 ~25 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~-1 ~34 ~-4 minecraft:iron_block
setblock ~-2 ~33 ~-4 minecraft:iron_block
setblock ~-3 ~32 ~-4 minecraft:iron_block
setblock ~-4 ~31 ~-4 minecraft:iron_block
setblock ~-5 ~30 ~-4 minecraft:iron_block
setblock ~-6 ~29 ~-4 minecraft:iron_block
setblock ~-7 ~28 ~-4 minecraft:iron_block
setblock ~-8 ~27 ~-4 minecraft:iron_block
setblock ~-9 ~26 ~-4 minecraft:iron_block
setblock ~-10 ~25 ~-4 minecraft:iron_block
setblock ~-11 ~24 ~-4 minecraft:iron_block
setblock ~-12 ~23 ~-4 minecraft:iron_block
setblock ~-13 ~22 ~-4 minecraft:iron_block
setblock ~-14 ~21 ~-4 minecraft:iron_block
setblock ~-15 ~20 ~-4 minecraft:iron_block
setblock ~-16 ~19 ~-4 minecraft:iron_block
setblock ~-17 ~18 ~-4 minecraft:iron_block
setblock ~-18 ~17 ~-4 minecraft:iron_block
setblock ~-19 ~16 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~-1 ~34 ~4 minecraft:iron_block
setblock ~-2 ~33 ~4 minecraft:iron_block
setblock ~-3 ~32 ~4 minecraft:iron_block
setblock ~-4 ~31 ~4 minecraft:iron_block
setblock ~-5 ~30 ~4 minecraft:iron_block
setblock ~-6 ~29 ~4 minecraft:iron_block
setblock ~-7 ~28 ~4 minecraft:iron_block
setblock ~-8 ~27 ~4 minecraft:iron_block
setblock ~-9 ~26 ~4 minecraft:iron_block
setblock ~-10 ~25 ~4 minecraft:iron_block
setblock ~-11 ~24 ~4 minecraft:iron_block
setblock ~-12 ~23 ~4 minecraft:iron_block
setblock ~-13 ~22 ~4 minecraft:iron_block
setblock ~-14 ~21 ~4 minecraft:iron_block
setblock ~-15 ~20 ~4 minecraft:iron_block
setblock ~-16 ~19 ~4 minecraft:iron_block
setblock ~-17 ~18 ~4 minecraft:iron_block
setblock ~-18 ~17 ~4 minecraft:iron_block
setblock ~-19 ~16 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~ ~34 ~-4 minecraft:iron_block
setblock ~-1 ~33 ~-4 minecraft:iron_block
setblock ~-1 ~32 ~-4 minecraft:iron_block
setblock ~-2 ~31 ~-4 minecraft:iron_block
setblock ~-2 ~30 ~-4 minecraft:iron_block
setblock ~-2 ~29 ~-4 minecraft:iron_block
setblock ~-3 ~28 ~-4 minecraft:iron_block
setblock ~-3 ~27 ~-4 minecraft:iron_block
setblock ~-4 ~26 ~-4 minecraft:iron_block
setblock ~-4 ~25 ~-4 minecraft:iron_block
setblock ~-4 ~24 ~-4 minecraft:iron_block
setblock ~-5 ~23 ~-4 minecraft:iron_block
setblock ~-5 ~22 ~-4 minecraft:iron_block
setblock ~-6 ~21 ~-4 minecraft:iron_block
setblock ~-6 ~20 ~-4 minecraft:iron_block
setblock ~-6 ~19 ~-4 minecraft:iron_block
setblock ~-7 ~18 ~-4 minecraft:iron_block
setblock ~-7 ~17 ~-4 minecraft:iron_block
setblock ~-8 ~16 ~-4 minecraft:iron_block
setblock ~-8 ~15 ~-4 minecraft:iron_block
setblock ~-8 ~14 ~-4 minecraft:iron_block
setblock ~-9 ~13 ~-4 minecraft:iron_block
setblock ~-9 ~12 ~-4 minecraft:iron_block
setblock ~-10 ~11 ~-4 minecraft:iron_block
setblock ~-10 ~10 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~ ~34 ~4 minecraft:iron_block
setblock ~-1 ~33 ~4 minecraft:iron_block
setblock ~-1 ~32 ~4 minecraft:iron_block
setblock ~-2 ~31 ~4 minecraft:iron_block
setblock ~-2 ~30 ~4 minecraft:iron_block
setblock ~-2 ~29 ~4 minecraft:iron_block
setblock ~-3 ~28 ~4 minecraft:iron_block
setblock ~-3 ~27 ~4 minecraft:iron_block
setblock ~-4 ~26 ~4 minecraft:iron_block
setblock ~-4 ~25 ~4 minecraft:iron_block
setblock ~-4 ~24 ~4 minecraft:iron_block
setblock ~-5 ~23 ~4 minecraft:iron_block
setblock ~-5 ~22 ~4 minecraft:iron_block
setblock ~-6 ~21 ~4 minecraft:iron_block
setblock ~-6 ~20 ~4 minecraft:iron_block
setblock ~-6 ~19 ~4 minecraft:iron_block
setblock ~-7 ~18 ~4 minecraft:iron_block
setblock ~-7 ~17 ~4 minecraft:iron_block
setblock ~-8 ~16 ~4 minecraft:iron_block
setblock ~-8 ~15 ~4 minecraft:iron_block
setblock ~-8 ~14 ~4 minecraft:iron_block
setblock ~-9 ~13 ~4 minecraft:iron_block
setblock ~-9 ~12 ~4 minecraft:iron_block
setblock ~-10 ~11 ~4 minecraft:iron_block
setblock ~-10 ~10 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~ ~34 ~-4 minecraft:iron_block
setblock ~ ~33 ~-4 minecraft:iron_block
setblock ~ ~32 ~-4 minecraft:iron_block
setblock ~ ~31 ~-4 minecraft:iron_block
setblock ~ ~30 ~-4 minecraft:iron_block
setblock ~ ~29 ~-4 minecraft:iron_block
setblock ~ ~28 ~-4 minecraft:iron_block
setblock ~ ~27 ~-4 minecraft:iron_block
setblock ~ ~26 ~-4 minecraft:iron_block
setblock ~ ~25 ~-4 minecraft:iron_block
setblock ~ ~24 ~-4 minecraft:iron_block
setblock ~ ~23 ~-4 minecraft:iron_block
setblock ~ ~22 ~-4 minecraft:iron_block
setblock ~ ~21 ~-4 minecraft:iron_block
setblock ~ ~20 ~-4 minecraft:iron_block
setblock ~ ~19 ~-4 minecraft:iron_block
setblock ~ ~18 ~-4 minecraft:iron_block
setblock ~ ~17 ~-4 minecraft:iron_block
setblock ~ ~16 ~-4 minecraft:iron_block
setblock ~ ~15 ~-4 minecraft:iron_block
setblock ~ ~14 ~-4 minecraft:iron_block
setblock ~ ~13 ~-4 minecraft:iron_block
setblock ~ ~12 ~-4 minecraft:iron_block
setblock ~ ~11 ~-4 minecraft:iron_block
setblock ~ ~10 ~-4 minecraft:iron_block
setblock ~ ~9 ~-4 minecraft:iron_block
setblock ~ ~8 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~ ~34 ~4 minecraft:iron_block
setblock ~ ~33 ~4 minecraft:iron_block
setblock ~ ~32 ~4 minecraft:iron_block
setblock ~ ~31 ~4 minecraft:iron_block
setblock ~ ~30 ~4 minecraft:iron_block
setblock ~ ~29 ~4 minecraft:iron_block
setblock ~ ~28 ~4 minecraft:iron_block
setblock ~ ~27 ~4 minecraft:iron_block
setblock ~ ~26 ~4 minecraft:iron_block
setblock ~ ~25 ~4 minecraft:iron_block
setblock ~ ~24 ~4 minecraft:iron_block
setblock ~ ~23 ~4 minecraft:iron_block
setblock ~ ~22 ~4 minecraft:iron_block
setblock ~ ~21 ~4 minecraft:iron_block
setblock ~ ~20 ~4 minecraft:iron_block
setblock ~ ~19 ~4 minecraft:iron_block
setblock ~ ~18 ~4 minecraft:iron_block
setblock ~ ~17 ~4 minecraft:iron_block
setblock ~ ~16 ~4 minecraft:iron_block
setblock ~ ~15 ~4 minecraft:iron_block
setblock ~ ~14 ~4 minecraft:iron_block
setblock ~ ~13 ~4 minecraft:iron_block
setblock ~ ~12 ~4 minecraft:iron_block
setblock ~ ~11 ~4 minecraft:iron_block
setblock ~ ~10 ~4 minecraft:iron_block
setblock ~ ~9 ~4 minecraft:iron_block
setblock ~ ~8 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~ ~34 ~-4 minecraft:iron_block
setblock ~1 ~33 ~-4 minecraft:iron_block
setblock ~1 ~32 ~-4 minecraft:iron_block
setblock ~2 ~31 ~-4 minecraft:iron_block
setblock ~2 ~30 ~-4 minecraft:iron_block
setblock ~2 ~29 ~-4 minecraft:iron_block
setblock ~3 ~28 ~-4 minecraft:iron_block
setblock ~3 ~27 ~-4 minecraft:iron_block
setblock ~4 ~26 ~-4 minecraft:iron_block
setblock ~4 ~25 ~-4 minecraft:iron_block
setblock ~4 ~24 ~-4 minecraft:iron_block
setblock ~5 ~23 ~-4 minecraft:iron_block
setblock ~5 ~22 ~-4 minecraft:iron_block
setblock ~6 ~21 ~-4 minecraft:iron_block
setblock ~6 ~20 ~-4 minecraft:iron_block
setblock ~6 ~19 ~-4 minecraft:iron_block
setblock ~7 ~18 ~-4 minecraft:iron_block
setblock ~7 ~17 ~-4 minecraft:iron_block
setblock ~8 ~16 ~-4 minecraft:iron_block
setblock ~8 ~15 ~-4 minecraft:iron_block
setblock ~8 ~14 ~-4 minecraft:iron_block
setblock ~9 ~13 ~-4 minecraft:iron_block
setblock ~9 ~12 ~-4 minecraft:iron_block
setblock ~10 ~11 ~-4 minecraft:iron_block
setblock ~10 ~10 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~ ~34 ~4 minecraft:iron_block
setblock ~1 ~33 ~4 minecraft:iron_block
setblock ~1 ~32 ~4 minecraft:iron_block
setblock ~2 ~31 ~4 minecraft:iron_block
setblock ~2 ~30 ~4 minecraft:iron_block
setblock ~2 ~29 ~4 minecraft:iron_block
setblock ~3 ~28 ~4 minecraft:iron_block
setblock ~3 ~27 ~4 minecraft:iron_block
setblock ~4 ~26 ~4 minecraft:iron_block
setblock ~4 ~25 ~4 minecraft:iron_block
setblock ~4 ~24 ~4 minecraft:iron_block
setblock ~5 ~23 ~4 minecraft:iron_block
setblock ~5 ~22 ~4 minecraft:iron_block
setblock ~6 ~21 ~4 minecraft:iron_block
setblock ~6 ~20 ~4 minecraft:iron_block
setblock ~6 ~19 ~4 minecraft:iron_block
setblock ~7 ~18 ~4 minecraft:iron_block
setblock ~7 ~17 ~4 minecraft:iron_block
setblock ~8 ~16 ~4 minecraft:iron_block
setblock ~8 ~15 ~4 minecraft:iron_block
setblock ~8 ~14 ~4 minecraft:iron_block
setblock ~9 ~13 ~4 minecraft:iron_block
setblock ~9 ~12 ~4 minecraft:iron_block
setblock ~10 ~11 ~4 minecraft:iron_block
setblock ~10 ~10 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~1 ~34 ~-4 minecraft:iron_block
setblock ~2 ~33 ~-4 minecraft:iron_block
setblock ~3 ~32 ~-4 minecraft:iron_block
setblock ~4 ~31 ~-4 minecraft:iron_block
setblock ~5 ~30 ~-4 minecraft:iron_block
setblock ~6 ~29 ~-4 minecraft:iron_block
setblock ~7 ~28 ~-4 minecraft:iron_block
setblock ~8 ~27 ~-4 minecraft:iron_block
setblock ~9 ~26 ~-4 minecraft:iron_block
setblock ~10 ~25 ~-4 minecraft:iron_block
setblock ~11 ~24 ~-4 minecraft:iron_block
setblock ~12 ~23 ~-4 minecraft:iron_block
setblock ~13 ~22 ~-4 minecraft:iron_block
setblock ~14 ~21 ~-4 minecraft:iron_block
setblock ~15 ~20 ~-4 minecraft:iron_block
setblock ~16 ~19 ~-4 minecraft:iron_block
setblock ~17 ~18 ~-4 minecraft:iron_block
setblock ~18 ~17 ~-4 minecraft:iron_block
setblock ~19 ~16 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~1 ~34 ~4 minecraft:iron_block
setblock ~2 ~33 ~4 minecraft:iron_block
setblock ~3 ~32 ~4 minecraft:iron_block
setblock ~4 ~31 ~4 minecraft:iron_block
setblock ~5 ~30 ~4 minecraft:iron_block
setblock ~6 ~29 ~4 minecraft:iron_block
setblock ~7 ~28 ~4 minecraft:iron_block
setblock ~8 ~27 ~4 minecraft:iron_block
setblock ~9 ~26 ~4 minecraft:iron_block
setblock ~10 ~25 ~4 minecraft:iron_block
setblock ~11 ~24 ~4 minecraft:iron_block
setblock ~12 ~23 ~4 minecraft:iron_block
setblock ~13 ~22 ~4 minecraft:iron_block
setblock ~14 ~21 ~4 minecraft:iron_block
setblock ~15 ~20 ~4 minecraft:iron_block
setblock ~16 ~19 ~4 minecraft:iron_block
setblock ~17 ~18 ~4 minecraft:iron_block
setblock ~18 ~17 ~4 minecraft:iron_block
setblock ~19 ~16 ~4 minecraft:iron_block
setblock ~ ~35 ~-4 minecraft:iron_block
setblock ~1 ~35 ~-4 minecraft:iron_block
setblock ~2 ~34 ~-4 minecraft:iron_block
setblock ~3 ~34 ~-4 minecraft:iron_block
setblock ~4 ~33 ~-4 minecraft:iron_block
setblock ~5 ~33 ~-4 minecraft:iron_block
setblock ~6 ~33 ~-4 minecraft:iron_block
setblock ~7 ~32 ~-4 minecraft:iron_block
setblock ~8 ~32 ~-4 minecraft:iron_block
setblock ~9 ~31 ~-4 minecraft:iron_block
setblock ~10 ~31 ~-4 minecraft:iron_block
setblock ~11 ~31 ~-4 minecraft:iron_block
setblock ~12 ~30 ~-4 minecraft:iron_block
setblock ~13 ~30 ~-4 minecraft:iron_block
setblock ~14 ~29 ~-4 minecraft:iron_block
setblock ~15 ~29 ~-4 minecraft:iron_block
setblock ~16 ~29 ~-4 minecraft:iron_block
setblock ~17 ~28 ~-4 minecraft:iron_block
setblock ~18 ~28 ~-4 minecraft:iron_block
setblock ~19 ~27 ~-4 minecraft:iron_block
setblock ~20 ~27 ~-4 minecraft:iron_block
setblock ~21 ~27 ~-4 minecraft:iron_block
setblock ~22 ~26 ~-4 minecraft:iron_block
setblock ~23 ~26 ~-4 minecraft:iron_block
setblock ~24 ~25 ~-4 minecraft:iron_block
setblock ~25 ~25 ~-4 minecraft:iron_block
setblock ~ ~35 ~4 minecraft:iron_block
setblock ~1 ~35 ~4 minecraft:iron_block
setblock ~2 ~34 ~4 minecraft:iron_block
setblock ~3 ~34 ~4 minecraft:iron_block
setblock ~4 ~33 ~4 minecraft:iron_block
setblock ~5 ~33 ~4 minecraft:iron_block
setblock ~6 ~33 ~4 minecraft:iron_block
setblock ~7 ~32 ~4 minecraft:iron_block
setblock ~8 ~32 ~4 minecraft:iron_block
setblock ~9 ~31 ~4 minecraft:iron_block
setblock ~10 ~31 ~4 minecraft:iron_block
setblock ~11 ~31 ~4 minecraft:iron_block
setblock ~12 ~30 ~4 minecraft:iron_block
setblock ~13 ~30 ~4 minecraft:iron_block
setblock ~14 ~29 ~4 minecraft:iron_block
setblock ~15 ~29 ~4 minecraft:iron_block
setblock ~16 ~29 ~4 minecraft:iron_block
setblock ~17 ~28 ~4 minecraft:iron_block
setblock ~18 ~28 ~4 minecraft:iron_block
setblock ~19 ~27 ~4 minecraft:iron_block
setblock ~20 ~27 ~4 minecraft:iron_block
setblock ~21 ~27 ~4 minecraft:iron_block
setblock ~22 ~26 ~4 minecraft:iron_block
setblock ~23 ~26 ~4 minecraft:iron_block
setblock ~24 ~25 ~4 minecraft:iron_block
setblock ~25 ~25 ~4 minecraft:iron_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~1 ~35 ~-3 minecraft:gold_block
setblock ~2 ~36 ~-3 minecraft:gold_block
setblock ~3 ~36 ~-3 minecraft:gold_block
setblock ~4 ~37 ~-3 minecraft:gold_block
setblock ~5 ~37 ~-3 minecraft:gold_block
setblock ~6 ~37 ~-3 minecraft:gold_block
setblock ~7 ~38 ~-3 minecraft:gold_block
setblock ~8 ~38 ~-3 minecraft:gold_block
setblock ~9 ~39 ~-3 minecraft:gold_block
setblock ~10 ~39 ~-3 minecraft:gold_block
setblock ~11 ~40 ~-3 minecraft:gold_block
setblock ~12 ~40 ~-3 minecraft:gold_block
setblock ~13 ~40 ~-3 minecraft:gold_block
setblock ~14 ~41 ~-3 minecraft:gold_block
setblock ~15 ~41 ~-3 minecraft:gold_block
setblock ~16 ~42 ~-3 minecraft:gold_block
setblock ~17 ~42 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~1 ~35 ~3 minecraft:gold_block
setblock ~2 ~36 ~3 minecraft:gold_block
setblock ~3 ~36 ~3 minecraft:gold_block
setblock ~4 ~37 ~3 minecraft:gold_block
setblock ~5 ~37 ~3 minecraft:gold_block
setblock ~6 ~37 ~3 minecraft:gold_block
setblock ~7 ~38 ~3 minecraft:gold_block
setblock ~8 ~38 ~3 minecraft:gold_block
setblock ~9 ~39 ~3 minecraft:gold_block
setblock ~10 ~39 ~3 minecraft:gold_block
setblock ~11 ~40 ~3 minecraft:gold_block
setblock ~12 ~40 ~3 minecraft:gold_block
setblock ~13 ~40 ~3 minecraft:gold_block
setblock ~14 ~41 ~3 minecraft:gold_block
setblock ~15 ~41 ~3 minecraft:gold_block
setblock ~16 ~42 ~3 minecraft:gold_block
setblock ~17 ~42 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~ ~36 ~-3 minecraft:gold_block
setblock ~1 ~37 ~-3 minecraft:gold_block
setblock ~1 ~38 ~-3 minecraft:gold_block
setblock ~2 ~39 ~-3 minecraft:gold_block
setblock ~2 ~40 ~-3 minecraft:gold_block
setblock ~2 ~41 ~-3 minecraft:gold_block
setblock ~3 ~42 ~-3 minecraft:gold_block
setblock ~3 ~43 ~-3 minecraft:gold_block
setblock ~4 ~44 ~-3 minecraft:gold_block
setblock ~4 ~45 ~-3 minecraft:gold_block
setblock ~5 ~46 ~-3 minecraft:gold_block
setblock ~5 ~47 ~-3 minecraft:gold_block
setblock ~5 ~48 ~-3 minecraft:gold_block
setblock ~6 ~49 ~-3 minecraft:gold_block
setblock ~6 ~50 ~-3 minecraft:gold_block
setblock ~7 ~51 ~-3 minecraft:gold_block
setblock ~7 ~52 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~ ~36 ~3 minecraft:gold_block
setblock ~1 ~37 ~3 minecraft:gold_block
setblock ~1 ~38 ~3 minecraft:gold_block
setblock ~2 ~39 ~3 minecraft:gold_block
setblock ~2 ~40 ~3 minecraft:gold_block
setblock ~2 ~41 ~3 minecraft:gold_block
setblock ~3 ~42 ~3 minecraft:gold_block
setblock ~3 ~43 ~3 minecraft:gold_block
setblock ~4 ~44 ~3 minecraft:gold_block
setblock ~4 ~45 ~3 minecraft:gold_block
setblock ~5 ~46 ~3 minecraft:gold_block
setblock ~5 ~47 ~3 minecraft:gold_block
setblock ~5 ~48 ~3 minecraft:gold_block
setblock ~6 ~49 ~3 minecraft:gold_block
setblock ~6 ~50 ~3 minecraft:gold_block
setblock ~7 ~51 ~3 minecraft:gold_block
setblock ~7 ~52 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~ ~36 ~-3 minecraft:gold_block
setblock ~-1 ~37 ~-3 minecraft:gold_block
setblock ~-1 ~38 ~-3 minecraft:gold_block
setblock ~-2 ~39 ~-3 minecraft:gold_block
setblock ~-2 ~40 ~-3 minecraft:gold_block
setblock ~-2 ~41 ~-3 minecraft:gold_block
setblock ~-3 ~42 ~-3 minecraft:gold_block
setblock ~-3 ~43 ~-3 minecraft:gold_block
setblock ~-4 ~44 ~-3 minecraft:gold_block
setblock ~-4 ~45 ~-3 minecraft:gold_block
setblock ~-5 ~46 ~-3 minecraft:gold_block
setblock ~-5 ~47 ~-3 minecraft:gold_block
setblock ~-5 ~48 ~-3 minecraft:gold_block
setblock ~-6 ~49 ~-3 minecraft:gold_block
setblock ~-6 ~50 ~-3 minecraft:gold_block
setblock ~-7 ~51 ~-3 minecraft:gold_block
setblock ~-7 ~52 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~ ~36 ~3 minecraft:gold_block
setblock ~-1 ~37 ~3 minecraft:gold_block
setblock ~-1 ~38 ~3 minecraft:gold_block
setblock ~-2 ~39 ~3 minecraft:gold_block
setblock ~-2 ~40 ~3 minecraft:gold_block
setblock ~-2 ~41 ~3 minecraft:gold_block
setblock ~-3 ~42 ~3 minecraft:gold_block
setblock ~-3 ~43 ~3 minecraft:gold_block
setblock ~-4 ~44 ~3 minecraft:gold_block
setblock ~-4 ~45 ~3 minecraft:gold_block
setblock ~-5 ~46 ~3 minecraft:gold_block
setblock ~-5 ~47 ~3 minecraft:gold_block
setblock ~-5 ~48 ~3 minecraft:gold_block
setblock ~-6 ~49 ~3 minecraft:gold_block
setblock ~-6 ~50 ~3 minecraft:gold_block
setblock ~-7 ~51 ~3 minecraft:gold_block
setblock ~-7 ~52 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~-1 ~35 ~-3 minecraft:gold_block
setblock ~-2 ~36 ~-3 minecraft:gold_block
setblock ~-3 ~36 ~-3 minecraft:gold_block
setblock ~-4 ~37 ~-3 minecraft:gold_block
setblock ~-5 ~37 ~-3 minecraft:gold_block
setblock ~-6 ~37 ~-3 minecraft:gold_block
setblock ~-7 ~38 ~-3 minecraft:gold_block
setblock ~-8 ~38 ~-3 minecraft:gold_block
setblock ~-9 ~39 ~-3 minecraft:gold_block
setblock ~-10 ~39 ~-3 minecraft:gold_block
setblock ~-11 ~40 ~-3 minecraft:gold_block
setblock ~-12 ~40 ~-3 minecraft:gold_block
setblock ~-13 ~40 ~-3 minecraft:gold_block
setblock ~-14 ~41 ~-3 minecraft:gold_block
setblock ~-15 ~41 ~-3 minecraft:gold_block
setblock ~-16 ~42 ~-3 minecraft:gold_block
setblock ~-17 ~42 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~-1 ~35 ~3 minecraft:gold_block
setblock ~-2 ~36 ~3 minecraft:gold_block
setblock ~-3 ~36 ~3 minecraft:gold_block
setblock ~-4 ~37 ~3 minecraft:gold_block
setblock ~-5 ~37 ~3 minecraft:gold_block
setblock ~-6 ~37 ~3 minecraft:gold_block
setblock ~-7 ~38 ~3 minecraft:gold_block
setblock ~-8 ~38 ~3 minecraft:gold_block
setblock ~-9 ~39 ~3 minecraft:gold_block
setblock ~-10 ~39 ~3 minecraft:gold_block
setblock ~-11 ~40 ~3 minecraft:gold_block
setblock ~-12 ~40 ~3 minecraft:gold_block
setblock ~-13 ~40 ~3 minecraft:gold_block
setblock ~-14 ~41 ~3 minecraft:gold_block
setblock ~-15 ~41 ~3 minecraft:gold_block
setblock ~-16 ~42 ~3 minecraft:gold_block
setblock ~-17 ~42 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~-1 ~35 ~-3 minecraft:gold_block
setblock ~-2 ~34 ~-3 minecraft:gold_block
setblock ~-3 ~34 ~-3 minecraft:gold_block
setblock ~-4 ~33 ~-3 minecraft:gold_block
setblock ~-5 ~33 ~-3 minecraft:gold_block
setblock ~-6 ~33 ~-3 minecraft:gold_block
setblock ~-7 ~32 ~-3 minecraft:gold_block
setblock ~-8 ~32 ~-3 minecraft:gold_block
setblock ~-9 ~31 ~-3 minecraft:gold_block
setblock ~-10 ~31 ~-3 minecraft:gold_block
setblock ~-11 ~30 ~-3 minecraft:gold_block
setblock ~-12 ~30 ~-3 minecraft:gold_block
setblock ~-13 ~30 ~-3 minecraft:gold_block
setblock ~-14 ~29 ~-3 minecraft:gold_block
setblock ~-15 ~29 ~-3 minecraft:gold_block
setblock ~-16 ~28 ~-3 minecraft:gold_block
setblock ~-17 ~28 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~-1 ~35 ~3 minecraft:gold_block
setblock ~-2 ~34 ~3 minecraft:gold_block
setblock ~-3 ~34 ~3 minecraft:gold_block
setblock ~-4 ~33 ~3 minecraft:gold_block
setblock ~-5 ~33 ~3 minecraft:gold_block
setblock ~-6 ~33 ~3 minecraft:gold_block
setblock ~-7 ~32 ~3 minecraft:gold_block
setblock ~-8 ~32 ~3 minecraft:gold_block
setblock ~-9 ~31 ~3 minecraft:gold_block
setblock ~-10 ~31 ~3 minecraft:gold_block
setblock ~-11 ~30 ~3 minecraft:gold_block
setblock ~-12 ~30 ~3 minecraft:gold_block
setblock ~-13 ~30 ~3 minecraft:gold_block
setblock ~-14 ~29 ~3 minecraft:gold_block
setblock ~-15 ~29 ~3 minecraft:gold_block
setblock ~-16 ~28 ~3 minecraft:gold_block
setblock ~-17 ~28 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~ ~34 ~-3 minecraft:gold_block
setblock ~-1 ~33 ~-3 minecraft:gold_block
setblock ~-1 ~32 ~-3 minecraft:gold_block
setblock ~-2 ~31 ~-3 minecraft:gold_block
setblock ~-2 ~30 ~-3 minecraft:gold_block
setblock ~-2 ~29 ~-3 minecraft:gold_block
setblock ~-3 ~28 ~-3 minecraft:gold_block
setblock ~-3 ~27 ~-3 minecraft:gold_block
setblock ~-4 ~26 ~-3 minecraft:gold_block
setblock ~-4 ~25 ~-3 minecraft:gold_block
setblock ~-5 ~24 ~-3 minecraft:gold_block
setblock ~-5 ~23 ~-3 minecraft:gold_block
setblock ~-5 ~22 ~-3 minecraft:gold_block
setblock ~-6 ~21 ~-3 minecraft:gold_block
setblock ~-6 ~20 ~-3 minecraft:gold_block
setblock ~-7 ~19 ~-3 minecraft:gold_block
setblock ~-7 ~18 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~ ~34 ~3 minecraft:gold_block
setblock ~-1 ~33 ~3 minecraft:gold_block
setblock ~-1 ~32 ~3 minecraft:gold_block
setblock ~-2 ~31 ~3 minecraft:gold_block
setblock ~-2 ~30 ~3 minecraft:gold_block
setblock ~-2 ~29 ~3 minecraft:gold_block
setblock ~-3 ~28 ~3 minecraft:gold_block
setblock ~-3 ~27 ~3 minecraft:gold_block
setblock ~-4 ~26 ~3 minecraft:gold_block
setblock ~-4 ~25 ~3 minecraft:gold_block
setblock ~-5 ~24 ~3 minecraft:gold_block
setblock ~-5 ~23 ~3 minecraft:gold_block
setblock ~-5 ~22 ~3 minecraft:gold_block
setblock ~-6 ~21 ~3 minecraft:gold_block
setblock ~-6 ~20 ~3 minecraft:gold_block
setblock ~-7 ~19 ~3 minecraft:gold_block
setblock ~-7 ~18 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~ ~34 ~-3 minecraft:gold_block
setblock ~1 ~33 ~-3 minecraft:gold_block
setblock ~1 ~32 ~-3 minecraft:gold_block
setblock ~2 ~31 ~-3 minecraft:gold_block
setblock ~2 ~30 ~-3 minecraft:gold_block
setblock ~2 ~29 ~-3 minecraft:gold_block
setblock ~3 ~28 ~-3 minecraft:gold_block
setblock ~3 ~27 ~-3 minecraft:gold_block
setblock ~4 ~26 ~-3 minecraft:gold_block
setblock ~4 ~25 ~-3 minecraft:gold_block
setblock ~5 ~24 ~-3 minecraft:gold_block
setblock ~5 ~23 ~-3 minecraft:gold_block
setblock ~5 ~22 ~-3 minecraft:gold_block
setblock ~6 ~21 ~-3 minecraft:gold_block
setblock ~6 ~20 ~-3 minecraft:gold_block
setblock ~7 ~19 ~-3 minecraft:gold_block
setblock ~7 ~18 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~ ~34 ~3 minecraft:gold_block
setblock ~1 ~33 ~3 minecraft:gold_block
setblock ~1 ~32 ~3 minecraft:gold_block
setblock ~2 ~31 ~3 minecraft:gold_block
setblock ~2 ~30 ~3 minecraft:gold_block
setblock ~2 ~29 ~3 minecraft:gold_block
setblock ~3 ~28 ~3 minecraft:gold_block
setblock ~3 ~27 ~3 minecraft:gold_block
setblock ~4 ~26 ~3 minecraft:gold_block
setblock ~4 ~25 ~3 minecraft:gold_block
setblock ~5 ~24 ~3 minecraft:gold_block
setblock ~5 ~23 ~3 minecraft:gold_block
setblock ~5 ~22 ~3 minecraft:gold_block
setblock ~6 ~21 ~3 minecraft:gold_block
setblock ~6 ~20 ~3 minecraft:gold_block
setblock ~7 ~19 ~3 minecraft:gold_block
setblock ~7 ~18 ~3 minecraft:gold_block
setblock ~ ~35 ~-3 minecraft:gold_block
setblock ~1 ~35 ~-3 minecraft:gold_block
setblock ~2 ~34 ~-3 minecraft:gold_block
setblock ~3 ~34 ~-3 minecraft:gold_block
setblock ~4 ~33 ~-3 minecraft:gold_block
setblock ~5 ~33 ~-3 minecraft:gold_block
setblock ~6 ~33 ~-3 minecraft:gold_block
setblock ~7 ~32 ~-3 minecraft:gold_block
setblock ~8 ~32 ~-3 minecraft:gold_block
setblock ~9 ~31 ~-3 minecraft:gold_block
setblock ~10 ~31 ~-3 minecraft:gold_block
setblock ~11 ~30 ~-3 minecraft:gold_block
setblock ~12 ~30 ~-3 minecraft:gold_block
setblock ~13 ~30 ~-3 minecraft:gold_block
setblock ~14 ~29 ~-3 minecraft:gold_block
setblock ~15 ~29 ~-3 minecraft:gold_block
setblock ~16 ~28 ~-3 minecraft:gold_block
setblock ~17 ~28 ~-3 minecraft:gold_block
setblock ~ ~35 ~3 minecraft:gold_block
setblock ~1 ~35 ~3 minecraft:gold_block
setblock ~2 ~34 ~3 minecraft:gold_block
setblock ~3 ~34 ~3 minecraft:gold_block
setblock ~4 ~33 ~3 minecraft:gold_block
setblock ~5 ~33 ~3 minecraft:gold_block
setblock ~6 ~33 ~3 minecraft:gold_block
setblock ~7 ~32 ~3 minecraft:gold_block
setblock ~8 ~32 ~3 minecraft:gold_block
setblock ~9 ~31 ~3 minecraft:gold_block
setblock ~10 ~31 ~3 minecraft:gold_block
setblock ~11 ~30 ~3 minecraft:gold_block
setblock ~12 ~30 ~3 minecraft:gold_block
setblock ~13 ~30 ~3 minecraft:gold_block
setblock ~14 ~29 ~3 minecraft:gold_block
setblock ~15 ~29 ~3 minecraft:gold_block
setblock ~16 ~28 ~3 minecraft:gold_block
setblock ~17 ~28 ~3 minecraft:gold_block

# === RIM CROSS-TIES ===
fill ~31 ~35 ~-4 ~31 ~35 ~4 minecraft:iron_block
fill ~30 ~43 ~-4 ~30 ~43 ~4 minecraft:iron_block
fill ~27 ~50 ~-4 ~27 ~50 ~4 minecraft:iron_block
fill ~22 ~57 ~-4 ~22 ~57 ~4 minecraft:iron_block
fill ~16 ~62 ~-4 ~16 ~62 ~4 minecraft:iron_block
fill ~8 ~65 ~-4 ~8 ~65 ~4 minecraft:iron_block
fill ~ ~66 ~-4 ~ ~66 ~4 minecraft:iron_block
fill ~-8 ~65 ~-4 ~-8 ~65 ~4 minecraft:iron_block
fill ~-15 ~62 ~-4 ~-15 ~62 ~4 minecraft:iron_block
fill ~-22 ~57 ~-4 ~-22 ~57 ~4 minecraft:iron_block
fill ~-27 ~50 ~-4 ~-27 ~50 ~4 minecraft:iron_block
fill ~-30 ~43 ~-4 ~-30 ~43 ~4 minecraft:iron_block
fill ~-31 ~35 ~-4 ~-31 ~35 ~4 minecraft:iron_block
fill ~-30 ~27 ~-4 ~-30 ~27 ~4 minecraft:iron_block
fill ~-27 ~19 ~-4 ~-27 ~19 ~4 minecraft:iron_block
fill ~-22 ~13 ~-4 ~-22 ~13 ~4 minecraft:iron_block
fill ~-16 ~8 ~-4 ~-16 ~8 ~4 minecraft:iron_block
fill ~-8 ~5 ~-4 ~-8 ~5 ~4 minecraft:iron_block
fill ~ ~4 ~-4 ~ ~4 ~4 minecraft:iron_block
fill ~8 ~5 ~-4 ~8 ~5 ~4 minecraft:iron_block
fill ~16 ~8 ~-4 ~16 ~8 ~4 minecraft:iron_block
fill ~22 ~13 ~-4 ~22 ~13 ~4 minecraft:iron_block
fill ~27 ~19 ~-4 ~27 ~19 ~4 minecraft:iron_block
fill ~30 ~27 ~-4 ~30 ~27 ~4 minecraft:iron_block

# === 12 GONDOLAS ===
fill ~29 ~32 ~-1 ~29 ~34 ~1 minecraft:chain
fill ~27 ~31 ~-2 ~31 ~32 ~2 minecraft:iron_block
fill ~26 ~28 ~-3 ~32 ~28 ~-3 minecraft:red_wool
fill ~26 ~28 ~3 ~32 ~28 ~3 minecraft:red_wool
fill ~26 ~28 ~-2 ~32 ~28 ~2 minecraft:oak_planks
fill ~26 ~29 ~-3 ~26 ~32 ~-3 minecraft:iron_bars
fill ~26 ~29 ~3 ~26 ~32 ~3 minecraft:iron_bars
fill ~32 ~29 ~-3 ~32 ~32 ~-3 minecraft:iron_bars
fill ~32 ~29 ~3 ~32 ~32 ~3 minecraft:iron_bars
fill ~26 ~29 ~-3 ~32 ~30 ~-3 minecraft:red_wool
fill ~26 ~29 ~3 ~32 ~30 ~3 minecraft:red_wool
fill ~27 ~31 ~-3 ~31 ~31 ~-3 minecraft:glass
fill ~27 ~31 ~3 ~31 ~31 ~3 minecraft:glass
fill ~26 ~33 ~-3 ~32 ~33 ~3 minecraft:red_wool
fill ~27 ~34 ~-2 ~31 ~34 ~2 minecraft:red_wool
setblock ~29 ~34 ~-3 minecraft:sea_lantern
setblock ~29 ~34 ~3 minecraft:sea_lantern
fill ~25 ~47 ~-1 ~25 ~49 ~1 minecraft:chain
fill ~23 ~46 ~-2 ~27 ~47 ~2 minecraft:iron_block
fill ~22 ~43 ~-3 ~28 ~43 ~-3 minecraft:blue_wool
fill ~22 ~43 ~3 ~28 ~43 ~3 minecraft:blue_wool
fill ~22 ~43 ~-2 ~28 ~43 ~2 minecraft:oak_planks
fill ~22 ~44 ~-3 ~22 ~47 ~-3 minecraft:iron_bars
fill ~22 ~44 ~3 ~22 ~47 ~3 minecraft:iron_bars
fill ~28 ~44 ~-3 ~28 ~47 ~-3 minecraft:iron_bars
fill ~28 ~44 ~3 ~28 ~47 ~3 minecraft:iron_bars
fill ~22 ~44 ~-3 ~28 ~45 ~-3 minecraft:blue_wool
fill ~22 ~44 ~3 ~28 ~45 ~3 minecraft:blue_wool
fill ~23 ~46 ~-3 ~27 ~46 ~-3 minecraft:glass
fill ~23 ~46 ~3 ~27 ~46 ~3 minecraft:glass
fill ~22 ~48 ~-3 ~28 ~48 ~3 minecraft:blue_wool
fill ~23 ~49 ~-2 ~27 ~49 ~2 minecraft:blue_wool
setblock ~25 ~49 ~-3 minecraft:sea_lantern
setblock ~25 ~49 ~3 minecraft:sea_lantern
fill ~15 ~57 ~-1 ~15 ~59 ~1 minecraft:chain
fill ~13 ~56 ~-2 ~17 ~57 ~2 minecraft:iron_block
fill ~12 ~53 ~-3 ~18 ~53 ~-3 minecraft:yellow_wool
fill ~12 ~53 ~3 ~18 ~53 ~3 minecraft:yellow_wool
fill ~12 ~53 ~-2 ~18 ~53 ~2 minecraft:oak_planks
fill ~12 ~54 ~-3 ~12 ~57 ~-3 minecraft:iron_bars
fill ~12 ~54 ~3 ~12 ~57 ~3 minecraft:iron_bars
fill ~18 ~54 ~-3 ~18 ~57 ~-3 minecraft:iron_bars
fill ~18 ~54 ~3 ~18 ~57 ~3 minecraft:iron_bars
fill ~12 ~54 ~-3 ~18 ~55 ~-3 minecraft:yellow_wool
fill ~12 ~54 ~3 ~18 ~55 ~3 minecraft:yellow_wool
fill ~13 ~56 ~-3 ~17 ~56 ~-3 minecraft:glass
fill ~13 ~56 ~3 ~17 ~56 ~3 minecraft:glass
fill ~12 ~58 ~-3 ~18 ~58 ~3 minecraft:yellow_wool
fill ~13 ~59 ~-2 ~17 ~59 ~2 minecraft:yellow_wool
setblock ~15 ~59 ~-3 minecraft:sea_lantern
setblock ~15 ~59 ~3 minecraft:sea_lantern
fill ~ ~61 ~-1 ~ ~63 ~1 minecraft:chain
fill ~-2 ~60 ~-2 ~2 ~61 ~2 minecraft:iron_block
fill ~-3 ~57 ~-3 ~3 ~57 ~-3 minecraft:lime_wool
fill ~-3 ~57 ~3 ~3 ~57 ~3 minecraft:lime_wool
fill ~-3 ~57 ~-2 ~3 ~57 ~2 minecraft:oak_planks
fill ~-3 ~58 ~-3 ~-3 ~61 ~-3 minecraft:iron_bars
fill ~-3 ~58 ~3 ~-3 ~61 ~3 minecraft:iron_bars
fill ~3 ~58 ~-3 ~3 ~61 ~-3 minecraft:iron_bars
fill ~3 ~58 ~3 ~3 ~61 ~3 minecraft:iron_bars
fill ~-3 ~58 ~-3 ~3 ~59 ~-3 minecraft:lime_wool
fill ~-3 ~58 ~3 ~3 ~59 ~3 minecraft:lime_wool
fill ~-2 ~60 ~-3 ~2 ~60 ~-3 minecraft:glass
fill ~-2 ~60 ~3 ~2 ~60 ~3 minecraft:glass
fill ~-3 ~62 ~-3 ~3 ~62 ~3 minecraft:lime_wool
fill ~-2 ~63 ~-2 ~2 ~63 ~2 minecraft:lime_wool
setblock ~ ~63 ~-3 minecraft:sea_lantern
setblock ~ ~63 ~3 minecraft:sea_lantern
fill ~-14 ~57 ~-1 ~-14 ~59 ~1 minecraft:chain
fill ~-16 ~56 ~-2 ~-12 ~57 ~2 minecraft:iron_block
fill ~-17 ~53 ~-3 ~-11 ~53 ~-3 minecraft:purple_wool
fill ~-17 ~53 ~3 ~-11 ~53 ~3 minecraft:purple_wool
fill ~-17 ~53 ~-2 ~-11 ~53 ~2 minecraft:oak_planks
fill ~-17 ~54 ~-3 ~-17 ~57 ~-3 minecraft:iron_bars
fill ~-17 ~54 ~3 ~-17 ~57 ~3 minecraft:iron_bars
fill ~-11 ~54 ~-3 ~-11 ~57 ~-3 minecraft:iron_bars
fill ~-11 ~54 ~3 ~-11 ~57 ~3 minecraft:iron_bars
fill ~-17 ~54 ~-3 ~-11 ~55 ~-3 minecraft:purple_wool
fill ~-17 ~54 ~3 ~-11 ~55 ~3 minecraft:purple_wool
fill ~-16 ~56 ~-3 ~-12 ~56 ~-3 minecraft:glass
fill ~-16 ~56 ~3 ~-12 ~56 ~3 minecraft:glass
fill ~-17 ~58 ~-3 ~-11 ~58 ~3 minecraft:purple_wool
fill ~-16 ~59 ~-2 ~-12 ~59 ~2 minecraft:purple_wool
setblock ~-14 ~59 ~-3 minecraft:sea_lantern
setblock ~-14 ~59 ~3 minecraft:sea_lantern
fill ~-25 ~47 ~-1 ~-25 ~49 ~1 minecraft:chain
fill ~-27 ~46 ~-2 ~-23 ~47 ~2 minecraft:iron_block
fill ~-28 ~43 ~-3 ~-22 ~43 ~-3 minecraft:orange_wool
fill ~-28 ~43 ~3 ~-22 ~43 ~3 minecraft:orange_wool
fill ~-28 ~43 ~-2 ~-22 ~43 ~2 minecraft:oak_planks
fill ~-28 ~44 ~-3 ~-28 ~47 ~-3 minecraft:iron_bars
fill ~-28 ~44 ~3 ~-28 ~47 ~3 minecraft:iron_bars
fill ~-22 ~44 ~-3 ~-22 ~47 ~-3 minecraft:iron_bars
fill ~-22 ~44 ~3 ~-22 ~47 ~3 minecraft:iron_bars
fill ~-28 ~44 ~-3 ~-22 ~45 ~-3 minecraft:orange_wool
fill ~-28 ~44 ~3 ~-22 ~45 ~3 minecraft:orange_wool
fill ~-27 ~46 ~-3 ~-23 ~46 ~-3 minecraft:glass
fill ~-27 ~46 ~3 ~-23 ~46 ~3 minecraft:glass
fill ~-28 ~48 ~-3 ~-22 ~48 ~3 minecraft:orange_wool
fill ~-27 ~49 ~-2 ~-23 ~49 ~2 minecraft:orange_wool
setblock ~-25 ~49 ~-3 minecraft:sea_lantern
setblock ~-25 ~49 ~3 minecraft:sea_lantern
fill ~-29 ~32 ~-1 ~-29 ~34 ~1 minecraft:chain
fill ~-31 ~31 ~-2 ~-27 ~32 ~2 minecraft:iron_block
fill ~-32 ~28 ~-3 ~-26 ~28 ~-3 minecraft:cyan_wool
fill ~-32 ~28 ~3 ~-26 ~28 ~3 minecraft:cyan_wool
fill ~-32 ~28 ~-2 ~-26 ~28 ~2 minecraft:oak_planks
fill ~-32 ~29 ~-3 ~-32 ~32 ~-3 minecraft:iron_bars
fill ~-32 ~29 ~3 ~-32 ~32 ~3 minecraft:iron_bars
fill ~-26 ~29 ~-3 ~-26 ~32 ~-3 minecraft:iron_bars
fill ~-26 ~29 ~3 ~-26 ~32 ~3 minecraft:iron_bars
fill ~-32 ~29 ~-3 ~-26 ~30 ~-3 minecraft:cyan_wool
fill ~-32 ~29 ~3 ~-26 ~30 ~3 minecraft:cyan_wool
fill ~-31 ~31 ~-3 ~-27 ~31 ~-3 minecraft:glass
fill ~-31 ~31 ~3 ~-27 ~31 ~3 minecraft:glass
fill ~-32 ~33 ~-3 ~-26 ~33 ~3 minecraft:cyan_wool
fill ~-31 ~34 ~-2 ~-27 ~34 ~2 minecraft:cyan_wool
setblock ~-29 ~34 ~-3 minecraft:sea_lantern
setblock ~-29 ~34 ~3 minecraft:sea_lantern
fill ~-25 ~17 ~-1 ~-25 ~19 ~1 minecraft:chain
fill ~-27 ~16 ~-2 ~-23 ~17 ~2 minecraft:iron_block
fill ~-28 ~13 ~-3 ~-22 ~13 ~-3 minecraft:magenta_wool
fill ~-28 ~13 ~3 ~-22 ~13 ~3 minecraft:magenta_wool
fill ~-28 ~13 ~-2 ~-22 ~13 ~2 minecraft:oak_planks
fill ~-28 ~14 ~-3 ~-28 ~17 ~-3 minecraft:iron_bars
fill ~-28 ~14 ~3 ~-28 ~17 ~3 minecraft:iron_bars
fill ~-22 ~14 ~-3 ~-22 ~17 ~-3 minecraft:iron_bars
fill ~-22 ~14 ~3 ~-22 ~17 ~3 minecraft:iron_bars
fill ~-28 ~14 ~-3 ~-22 ~15 ~-3 minecraft:magenta_wool
fill ~-28 ~14 ~3 ~-22 ~15 ~3 minecraft:magenta_wool
fill ~-27 ~16 ~-3 ~-23 ~16 ~-3 minecraft:glass
fill ~-27 ~16 ~3 ~-23 ~16 ~3 minecraft:glass
fill ~-28 ~18 ~-3 ~-22 ~18 ~3 minecraft:magenta_wool
fill ~-27 ~19 ~-2 ~-23 ~19 ~2 minecraft:magenta_wool
setblock ~-25 ~19 ~-3 minecraft:sea_lantern
setblock ~-25 ~19 ~3 minecraft:sea_lantern
fill ~-15 ~7 ~-1 ~-15 ~9 ~1 minecraft:chain
fill ~-17 ~6 ~-2 ~-13 ~7 ~2 minecraft:iron_block
fill ~-18 ~3 ~-3 ~-12 ~3 ~-3 minecraft:white_wool
fill ~-18 ~3 ~3 ~-12 ~3 ~3 minecraft:white_wool
fill ~-18 ~3 ~-2 ~-12 ~3 ~2 minecraft:oak_planks
fill ~-18 ~4 ~-3 ~-18 ~7 ~-3 minecraft:iron_bars
fill ~-18 ~4 ~3 ~-18 ~7 ~3 minecraft:iron_bars
fill ~-12 ~4 ~-3 ~-12 ~7 ~-3 minecraft:iron_bars
fill ~-12 ~4 ~3 ~-12 ~7 ~3 minecraft:iron_bars
fill ~-18 ~4 ~-3 ~-12 ~5 ~-3 minecraft:white_wool
fill ~-18 ~4 ~3 ~-12 ~5 ~3 minecraft:white_wool
fill ~-17 ~6 ~-3 ~-13 ~6 ~-3 minecraft:glass
fill ~-17 ~6 ~3 ~-13 ~6 ~3 minecraft:glass
fill ~-18 ~8 ~-3 ~-12 ~8 ~3 minecraft:white_wool
fill ~-17 ~9 ~-2 ~-13 ~9 ~2 minecraft:white_wool
setblock ~-15 ~9 ~-3 minecraft:sea_lantern
setblock ~-15 ~9 ~3 minecraft:sea_lantern
fill ~ ~3 ~-1 ~ ~5 ~1 minecraft:chain
fill ~-2 ~2 ~-2 ~2 ~3 ~2 minecraft:iron_block
fill ~-3 ~-1 ~-3 ~3 ~-1 ~-3 minecraft:red_wool
fill ~-3 ~-1 ~3 ~3 ~-1 ~3 minecraft:red_wool
fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 minecraft:oak_planks
fill ~-3 ~ ~-3 ~-3 ~3 ~-3 minecraft:iron_bars
fill ~-3 ~ ~3 ~-3 ~3 ~3 minecraft:iron_bars
fill ~3 ~ ~-3 ~3 ~3 ~-3 minecraft:iron_bars
fill ~3 ~ ~3 ~3 ~3 ~3 minecraft:iron_bars
fill ~-3 ~ ~-3 ~3 ~1 ~-3 minecraft:red_wool
fill ~-3 ~ ~3 ~3 ~1 ~3 minecraft:red_wool
fill ~-2 ~2 ~-3 ~2 ~2 ~-3 minecraft:glass
fill ~-2 ~2 ~3 ~2 ~2 ~3 minecraft:glass
fill ~-3 ~4 ~-3 ~3 ~4 ~3 minecraft:red_wool
fill ~-2 ~5 ~-2 ~2 ~5 ~2 minecraft:red_wool
setblock ~ ~5 ~-3 minecraft:sea_lantern
setblock ~ ~5 ~3 minecraft:sea_lantern
fill ~15 ~7 ~-1 ~15 ~9 ~1 minecraft:chain
fill ~13 ~6 ~-2 ~17 ~7 ~2 minecraft:iron_block
fill ~12 ~3 ~-3 ~18 ~3 ~-3 minecraft:blue_wool
fill ~12 ~3 ~3 ~18 ~3 ~3 minecraft:blue_wool
fill ~12 ~3 ~-2 ~18 ~3 ~2 minecraft:oak_planks
fill ~12 ~4 ~-3 ~12 ~7 ~-3 minecraft:iron_bars
fill ~12 ~4 ~3 ~12 ~7 ~3 minecraft:iron_bars
fill ~18 ~4 ~-3 ~18 ~7 ~-3 minecraft:iron_bars
fill ~18 ~4 ~3 ~18 ~7 ~3 minecraft:iron_bars
fill ~12 ~4 ~-3 ~18 ~5 ~-3 minecraft:blue_wool
fill ~12 ~4 ~3 ~18 ~5 ~3 minecraft:blue_wool
fill ~13 ~6 ~-3 ~17 ~6 ~-3 minecraft:glass
fill ~13 ~6 ~3 ~17 ~6 ~3 minecraft:glass
fill ~12 ~8 ~-3 ~18 ~8 ~3 minecraft:blue_wool
fill ~13 ~9 ~-2 ~17 ~9 ~2 minecraft:blue_wool
setblock ~15 ~9 ~-3 minecraft:sea_lantern
setblock ~15 ~9 ~3 minecraft:sea_lantern
fill ~25 ~17 ~-1 ~25 ~19 ~1 minecraft:chain
fill ~23 ~16 ~-2 ~27 ~17 ~2 minecraft:iron_block
fill ~22 ~13 ~-3 ~28 ~13 ~-3 minecraft:yellow_wool
fill ~22 ~13 ~3 ~28 ~13 ~3 minecraft:yellow_wool
fill ~22 ~13 ~-2 ~28 ~13 ~2 minecraft:oak_planks
fill ~22 ~14 ~-3 ~22 ~17 ~-3 minecraft:iron_bars
fill ~22 ~14 ~3 ~22 ~17 ~3 minecraft:iron_bars
fill ~28 ~14 ~-3 ~28 ~17 ~-3 minecraft:iron_bars
fill ~28 ~14 ~3 ~28 ~17 ~3 minecraft:iron_bars
fill ~22 ~14 ~-3 ~28 ~15 ~-3 minecraft:yellow_wool
fill ~22 ~14 ~3 ~28 ~15 ~3 minecraft:yellow_wool
fill ~23 ~16 ~-3 ~27 ~16 ~-3 minecraft:glass
fill ~23 ~16 ~3 ~27 ~16 ~3 minecraft:glass
fill ~22 ~18 ~-3 ~28 ~18 ~3 minecraft:yellow_wool
fill ~23 ~19 ~-2 ~27 ~19 ~2 minecraft:yellow_wool
setblock ~25 ~19 ~-3 minecraft:sea_lantern
setblock ~25 ~19 ~3 minecraft:sea_lantern

# === OPERATOR STATION ===
fill ~7 ~2 ~-5 ~12 ~2 ~ minecraft:stone_bricks
fill ~8 ~3 ~-4 ~11 ~5 ~-1 minecraft:dark_oak_planks
fill ~8 ~4 ~-5 ~11 ~5 ~-5 minecraft:glass
fill ~7 ~6 ~-5 ~12 ~6 ~ minecraft:red_wool
setblock ~9 ~3 ~-5 minecraft:gold_block
setblock ~10 ~3 ~-5 minecraft:redstone_lamp

# === PLAZA LIGHT TOWERS ===
fill ~-36 ~ ~-24 ~-36 ~6 ~-24 minecraft:dark_oak_fence
fill ~-37 ~7 ~-25 ~-35 ~7 ~-23 minecraft:iron_block
setblock ~-36 ~8 ~-24 minecraft:sea_lantern
fill ~-24 ~ ~-24 ~-24 ~6 ~-24 minecraft:dark_oak_fence
fill ~-25 ~7 ~-25 ~-23 ~7 ~-23 minecraft:iron_block
setblock ~-24 ~8 ~-24 minecraft:sea_lantern
fill ~24 ~ ~-24 ~24 ~6 ~-24 minecraft:dark_oak_fence
fill ~23 ~7 ~-25 ~25 ~7 ~-23 minecraft:iron_block
setblock ~24 ~8 ~-24 minecraft:sea_lantern
fill ~36 ~ ~-24 ~36 ~6 ~-24 minecraft:dark_oak_fence
fill ~35 ~7 ~-25 ~37 ~7 ~-23 minecraft:iron_block
setblock ~36 ~8 ~-24 minecraft:sea_lantern
fill ~-36 ~ ~24 ~-36 ~6 ~24 minecraft:dark_oak_fence
fill ~-37 ~7 ~23 ~-35 ~7 ~25 minecraft:iron_block
setblock ~-36 ~8 ~24 minecraft:sea_lantern
fill ~-24 ~ ~24 ~-24 ~6 ~24 minecraft:dark_oak_fence
fill ~-25 ~7 ~23 ~-23 ~7 ~25 minecraft:iron_block
setblock ~-24 ~8 ~24 minecraft:sea_lantern
fill ~24 ~ ~24 ~24 ~6 ~24 minecraft:dark_oak_fence
fill ~23 ~7 ~23 ~25 ~7 ~25 minecraft:iron_block
setblock ~24 ~8 ~24 minecraft:sea_lantern
fill ~36 ~ ~24 ~36 ~6 ~24 minecraft:dark_oak_fence
fill ~35 ~7 ~23 ~37 ~7 ~25 minecraft:iron_block
setblock ~36 ~8 ~24 minecraft:sea_lantern

# === BENCHES & LANDSCAPING ===
fill ~-36 ~ ~16 ~-32 ~ ~16 minecraft:oak_planks
setblock ~-36 ~1 ~17 minecraft:spruce_fence
setblock ~-32 ~1 ~17 minecraft:spruce_fence
fill ~-26 ~ ~16 ~-22 ~ ~16 minecraft:oak_planks
setblock ~-26 ~1 ~17 minecraft:spruce_fence
setblock ~-22 ~1 ~17 minecraft:spruce_fence
fill ~22 ~ ~16 ~26 ~ ~16 minecraft:oak_planks
setblock ~22 ~1 ~17 minecraft:spruce_fence
setblock ~26 ~1 ~17 minecraft:spruce_fence
fill ~32 ~ ~16 ~36 ~ ~16 minecraft:oak_planks
setblock ~32 ~1 ~17 minecraft:spruce_fence
setblock ~36 ~1 ~17 minecraft:spruce_fence
fill ~-40 ~ ~4 ~-36 ~ ~8 minecraft:dirt
fill ~-39 ~1 ~5 ~-37 ~1 ~7 minecraft:oak_leaves
setblock ~-38 ~2 ~6 minecraft:lantern
fill ~-32 ~ ~4 ~-28 ~ ~8 minecraft:dirt
fill ~-31 ~1 ~5 ~-29 ~1 ~7 minecraft:oak_leaves
setblock ~-30 ~2 ~6 minecraft:lantern
fill ~28 ~ ~4 ~32 ~ ~8 minecraft:dirt
fill ~29 ~1 ~5 ~31 ~1 ~7 minecraft:oak_leaves
setblock ~30 ~2 ~6 minecraft:lantern
fill ~36 ~ ~4 ~40 ~ ~8 minecraft:dirt
fill ~37 ~1 ~5 ~39 ~1 ~7 minecraft:oak_leaves
setblock ~38 ~2 ~6 minecraft:lantern

# === SUPPORT EMBLEMS ===
fill ~-2 ~19 ~-9 ~2 ~23 ~-9 minecraft:black_wool
fill ~-1 ~20 ~-9 ~1 ~22 ~-9 minecraft:gold_block
setblock ~ ~21 ~-9 minecraft:sea_lantern
fill ~-2 ~19 ~9 ~2 ~23 ~9 minecraft:black_wool
fill ~-1 ~20 ~9 ~1 ~22 ~9 minecraft:gold_block
setblock ~ ~21 ~9 minecraft:sea_lantern

# === BOARDING SAFETY RAILS & EXIT ===
fill ~-15 ~2 ~-8 ~-5 ~2 ~-8 minecraft:iron_bars
fill ~5 ~2 ~-8 ~15 ~2 ~-8 minecraft:iron_bars
setblock ~-4 ~2 ~-8 minecraft:gold_block
setblock ~4 ~2 ~-8 minecraft:gold_block
fill ~15 ~-1 ~8 ~38 ~-1 ~14 minecraft:smooth_stone
fill ~15 ~ ~8 ~38 ~ ~8 minecraft:spruce_fence
fill ~15 ~ ~14 ~38 ~ ~14 minecraft:spruce_fence
fill ~38 ~ ~8 ~38 ~ ~14 minecraft:spruce_fence
fill ~18 ~ ~11 ~18 ~3 ~11 minecraft:dark_oak_fence
setblock ~18 ~4 ~11 minecraft:lantern
fill ~28 ~ ~11 ~28 ~3 ~11 minecraft:dark_oak_fence
setblock ~28 ~4 ~11 minecraft:lantern
fill ~36 ~ ~11 ~36 ~3 ~11 minecraft:dark_oak_fence
setblock ~36 ~4 ~11 minecraft:lantern

# === END OF BUILD ===
# Use flat open ground. The main public entrance is on the negative-Z side.
# This function builds the attraction; it does not animate or rotate the wheel.
