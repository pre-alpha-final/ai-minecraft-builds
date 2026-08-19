say [MegaCoaster] build_started
# MEGA COASTER - Minecraft Bedrock Edition
# Run with /function mega_coaster while standing on reasonably flat ground.
# Your feet are the build origin. The station begins a few blocks above you.
# Approximate footprint: X -4..98, Y -1..40, Z -22..52.
# Uses explicit modern Bedrock block states for rail orientation.

# === STATION / PLAZA ===
fill ~-4 ~-1 ~-7 ~28 ~ ~7 minecraft:stone_bricks
fill ~-3 ~1 ~-5 ~26 ~2 ~-2 minecraft:smooth_stone
fill ~-3 ~1 ~2 ~26 ~2 ~5 minecraft:smooth_stone
fill ~-4 ~1 ~-6 ~27 ~1 ~-6 minecraft:cyan_concrete
fill ~-4 ~1 ~6 ~27 ~1 ~6 minecraft:cyan_concrete
fill ~-4 ~1 ~-6 ~-4 ~1 ~6 minecraft:cyan_concrete
fill ~27 ~1 ~-6 ~27 ~1 ~6 minecraft:cyan_concrete
fill ~-2 ~2 ~-2 ~25 ~2 ~-2 minecraft:light_blue_concrete
fill ~-2 ~2 ~2 ~25 ~2 ~2 minecraft:light_blue_concrete
fill ~-1 ~3 ~-4 ~24 ~3 ~-4 minecraft:iron_bars
fill ~-1 ~3 ~4 ~24 ~3 ~4 minecraft:iron_bars
fill ~-2 ~3 ~-5 ~-2 ~8 ~-5 minecraft:quartz_block
fill ~-2 ~3 ~5 ~-2 ~8 ~5 minecraft:quartz_block
fill ~4 ~3 ~-5 ~4 ~8 ~-5 minecraft:quartz_block
fill ~4 ~3 ~5 ~4 ~8 ~5 minecraft:quartz_block
fill ~10 ~3 ~-5 ~10 ~8 ~-5 minecraft:quartz_block
fill ~10 ~3 ~5 ~10 ~8 ~5 minecraft:quartz_block
fill ~16 ~3 ~-5 ~16 ~8 ~-5 minecraft:quartz_block
fill ~16 ~3 ~5 ~16 ~8 ~5 minecraft:quartz_block
fill ~22 ~3 ~-5 ~22 ~8 ~-5 minecraft:quartz_block
fill ~22 ~3 ~5 ~22 ~8 ~5 minecraft:quartz_block
fill ~26 ~3 ~-5 ~26 ~8 ~-5 minecraft:quartz_block
fill ~26 ~3 ~5 ~26 ~8 ~5 minecraft:quartz_block
fill ~-3 ~9 ~-6 ~27 ~9 ~6 minecraft:deepslate_tiles
fill ~-2 ~9 ~-5 ~26 ~9 ~5 minecraft:tinted_glass
fill ~-2 ~9 ~-5 ~-2 ~9 ~5 minecraft:quartz_block
fill ~4 ~9 ~-5 ~4 ~9 ~5 minecraft:quartz_block
fill ~10 ~9 ~-5 ~10 ~9 ~5 minecraft:quartz_block
fill ~16 ~9 ~-5 ~16 ~9 ~5 minecraft:quartz_block
fill ~22 ~9 ~-5 ~22 ~9 ~5 minecraft:quartz_block
fill ~26 ~9 ~-5 ~26 ~9 ~5 minecraft:quartz_block
setblock ~ ~8 ~-3 minecraft:sea_lantern
setblock ~ ~8 ~3 minecraft:sea_lantern
setblock ~6 ~8 ~-3 minecraft:sea_lantern
setblock ~6 ~8 ~3 minecraft:sea_lantern
setblock ~12 ~8 ~-3 minecraft:sea_lantern
setblock ~12 ~8 ~3 minecraft:sea_lantern
setblock ~18 ~8 ~-3 minecraft:sea_lantern
setblock ~18 ~8 ~3 minecraft:sea_lantern
setblock ~24 ~8 ~-3 minecraft:sea_lantern
setblock ~24 ~8 ~3 minecraft:sea_lantern
fill ~27 ~2 ~-6 ~27 ~7 ~-6 minecraft:blue_concrete
fill ~27 ~2 ~6 ~27 ~7 ~6 minecraft:blue_concrete
fill ~27 ~7 ~-6 ~27 ~7 ~6 minecraft:blue_concrete
setblock ~27 ~7 ~-4 minecraft:sea_lantern
setblock ~27 ~7 ~ minecraft:sea_lantern
setblock ~27 ~7 ~4 minecraft:sea_lantern

# === FIRST-DROP TUNNEL / SPLASH ZONE ===
fill ~86 ~ ~37 ~94 ~1 ~47 minecraft:dark_prismarine
fill ~87 ~2 ~38 ~93 ~10 ~46 minecraft:deepslate_tiles hollow
fill ~89 ~3 ~38 ~91 ~8 ~38 minecraft:air
fill ~89 ~3 ~46 ~91 ~8 ~46 minecraft:air
fill ~89 ~3 ~39 ~91 ~8 ~45 minecraft:air
setblock ~88 ~6 ~39 minecraft:sea_lantern
setblock ~92 ~6 ~39 minecraft:sea_lantern
setblock ~88 ~6 ~42 minecraft:sea_lantern
setblock ~92 ~6 ~42 minecraft:sea_lantern
setblock ~88 ~6 ~45 minecraft:sea_lantern
setblock ~92 ~6 ~45 minecraft:sea_lantern
fill ~82 ~ ~38 ~85 ~ ~48 minecraft:prismarine_bricks
fill ~95 ~ ~38 ~98 ~ ~48 minecraft:prismarine_bricks
fill ~82 ~1 ~38 ~85 ~1 ~48 minecraft:water
fill ~95 ~1 ~38 ~98 ~1 ~48 minecraft:water

# === OBSERVATION TOWER ===
fill ~54 ~ ~43 ~60 ~ ~49 minecraft:stone_bricks
fill ~55 ~1 ~44 ~55 ~20 ~44 minecraft:blue_concrete
fill ~59 ~1 ~44 ~59 ~20 ~44 minecraft:blue_concrete
fill ~55 ~1 ~48 ~55 ~20 ~48 minecraft:blue_concrete
fill ~59 ~1 ~48 ~59 ~20 ~48 minecraft:blue_concrete
fill ~54 ~10 ~43 ~60 ~10 ~49 minecraft:smooth_stone
fill ~54 ~20 ~43 ~60 ~20 ~49 minecraft:smooth_stone
fill ~56 ~11 ~45 ~58 ~19 ~47 minecraft:air
fill ~54 ~11 ~43 ~60 ~12 ~43 minecraft:glass
fill ~54 ~11 ~49 ~60 ~12 ~49 minecraft:glass
fill ~54 ~11 ~44 ~54 ~12 ~48 minecraft:glass
fill ~60 ~11 ~44 ~60 ~12 ~48 minecraft:glass
fill ~54 ~21 ~43 ~60 ~22 ~43 minecraft:glass
fill ~54 ~21 ~49 ~60 ~22 ~49 minecraft:glass
fill ~54 ~21 ~44 ~54 ~22 ~48 minecraft:glass
fill ~60 ~21 ~44 ~60 ~22 ~48 minecraft:glass
setblock ~57 ~21 ~46 minecraft:sea_lantern

# === LANDSCAPING ===
fill ~-2 ~ ~-12 ~-2 ~4 ~-12 minecraft:oak_log
fill ~-4 ~4 ~-14 ~ ~6 ~-10 minecraft:oak_leaves
fill ~-3 ~7 ~-13 ~-1 ~7 ~-11 minecraft:oak_leaves
fill ~8 ~ ~-14 ~8 ~4 ~-14 minecraft:oak_log
fill ~6 ~4 ~-16 ~10 ~6 ~-12 minecraft:oak_leaves
fill ~7 ~7 ~-15 ~9 ~7 ~-13 minecraft:oak_leaves
fill ~24 ~ ~-14 ~24 ~4 ~-14 minecraft:oak_log
fill ~22 ~4 ~-16 ~26 ~6 ~-12 minecraft:oak_leaves
fill ~23 ~7 ~-15 ~25 ~7 ~-13 minecraft:oak_leaves
fill ~32 ~ ~-10 ~32 ~4 ~-10 minecraft:oak_log
fill ~30 ~4 ~-12 ~34 ~6 ~-8 minecraft:oak_leaves
fill ~31 ~7 ~-11 ~33 ~7 ~-9 minecraft:oak_leaves
fill ~74 ~ ~44 ~74 ~4 ~44 minecraft:oak_log
fill ~72 ~4 ~42 ~76 ~6 ~46 minecraft:oak_leaves
fill ~73 ~7 ~43 ~75 ~7 ~45 minecraft:oak_leaves
fill ~78 ~ ~50 ~78 ~4 ~50 minecraft:oak_log
fill ~76 ~4 ~48 ~80 ~6 ~52 minecraft:oak_leaves
fill ~77 ~7 ~49 ~79 ~7 ~51 minecraft:oak_leaves
fill ~12 ~ ~42 ~12 ~4 ~42 minecraft:oak_log
fill ~10 ~4 ~40 ~14 ~6 ~44 minecraft:oak_leaves
fill ~11 ~7 ~41 ~13 ~7 ~43 minecraft:oak_leaves
fill ~8 ~ ~34 ~8 ~4 ~34 minecraft:oak_log
fill ~6 ~4 ~32 ~10 ~6 ~36 minecraft:oak_leaves
fill ~7 ~7 ~33 ~9 ~7 ~35 minecraft:oak_leaves
fill ~22 ~ ~30 ~22 ~4 ~30 minecraft:oak_log
fill ~20 ~4 ~28 ~24 ~6 ~32 minecraft:oak_leaves
fill ~21 ~7 ~29 ~23 ~7 ~31 minecraft:oak_leaves
fill ~-2 ~ ~-8 ~-2 ~4 ~-8 minecraft:polished_blackstone_brick_wall
setblock ~-2 ~5 ~-8 minecraft:sea_lantern
fill ~8 ~ ~-8 ~8 ~4 ~-8 minecraft:polished_blackstone_brick_wall
setblock ~8 ~5 ~-8 minecraft:sea_lantern
fill ~18 ~ ~-8 ~18 ~4 ~-8 minecraft:polished_blackstone_brick_wall
setblock ~18 ~5 ~-8 minecraft:sea_lantern
fill ~28 ~ ~-8 ~28 ~4 ~-8 minecraft:polished_blackstone_brick_wall
setblock ~28 ~5 ~-8 minecraft:sea_lantern
fill ~36 ~ ~6 ~36 ~4 ~6 minecraft:polished_blackstone_brick_wall
setblock ~36 ~5 ~6 minecraft:sea_lantern
fill ~86 ~ ~32 ~86 ~4 ~32 minecraft:polished_blackstone_brick_wall
setblock ~86 ~5 ~32 minecraft:sea_lantern
fill ~72 ~ ~52 ~72 ~4 ~52 minecraft:polished_blackstone_brick_wall
setblock ~72 ~5 ~52 minecraft:sea_lantern
fill ~14 ~ ~54 ~14 ~4 ~54 minecraft:polished_blackstone_brick_wall
setblock ~14 ~5 ~54 minecraft:sea_lantern
fill ~14 ~ ~-22 ~14 ~4 ~-22 minecraft:polished_blackstone_brick_wall
setblock ~14 ~5 ~-22 minecraft:sea_lantern
fill ~2 ~ ~-16 ~2 ~4 ~-16 minecraft:polished_blackstone_brick_wall
setblock ~2 ~5 ~-16 minecraft:sea_lantern

# === TRACK CLEARANCE ===
fill ~-1 ~4 ~-1 ~1 ~5 ~1 minecraft:air
fill ~ ~4 ~-1 ~2 ~5 ~1 minecraft:air
fill ~1 ~4 ~-1 ~3 ~5 ~1 minecraft:air
fill ~2 ~4 ~-1 ~4 ~5 ~1 minecraft:air
fill ~3 ~4 ~-1 ~5 ~5 ~1 minecraft:air
fill ~4 ~4 ~-1 ~6 ~5 ~1 minecraft:air
fill ~5 ~4 ~-1 ~7 ~5 ~1 minecraft:air
fill ~6 ~4 ~-1 ~8 ~5 ~1 minecraft:air
fill ~7 ~4 ~-1 ~9 ~5 ~1 minecraft:air
fill ~8 ~4 ~-1 ~10 ~5 ~1 minecraft:air
fill ~9 ~4 ~-1 ~11 ~5 ~1 minecraft:air
fill ~10 ~4 ~-1 ~12 ~5 ~1 minecraft:air
fill ~11 ~4 ~-1 ~13 ~5 ~1 minecraft:air
fill ~12 ~4 ~-1 ~14 ~5 ~1 minecraft:air
fill ~13 ~4 ~-1 ~15 ~5 ~1 minecraft:air
fill ~14 ~4 ~-1 ~16 ~5 ~1 minecraft:air
fill ~15 ~4 ~-1 ~17 ~5 ~1 minecraft:air
fill ~16 ~4 ~-1 ~18 ~5 ~1 minecraft:air
fill ~17 ~4 ~-1 ~19 ~5 ~1 minecraft:air
fill ~18 ~4 ~-1 ~20 ~5 ~1 minecraft:air
fill ~19 ~4 ~-1 ~21 ~5 ~1 minecraft:air
fill ~20 ~4 ~-1 ~22 ~5 ~1 minecraft:air
fill ~21 ~4 ~-1 ~23 ~5 ~1 minecraft:air
fill ~22 ~4 ~-1 ~24 ~5 ~1 minecraft:air
fill ~23 ~4 ~-1 ~25 ~5 ~1 minecraft:air
fill ~24 ~4 ~-1 ~26 ~5 ~1 minecraft:air
fill ~25 ~4 ~-1 ~27 ~5 ~1 minecraft:air
fill ~26 ~4 ~-1 ~28 ~5 ~1 minecraft:air
fill ~27 ~4 ~-1 ~29 ~5 ~1 minecraft:air
fill ~28 ~4 ~-1 ~30 ~5 ~1 minecraft:air
fill ~29 ~4 ~-1 ~31 ~5 ~1 minecraft:air
fill ~30 ~4 ~-1 ~32 ~5 ~1 minecraft:air
fill ~31 ~4 ~-1 ~33 ~5 ~1 minecraft:air
fill ~32 ~4 ~-1 ~34 ~5 ~1 minecraft:air
fill ~33 ~4 ~-1 ~35 ~5 ~1 minecraft:air
fill ~34 ~4 ~-1 ~36 ~5 ~1 minecraft:air
fill ~35 ~4 ~-1 ~37 ~5 ~1 minecraft:air
fill ~36 ~4 ~-1 ~38 ~5 ~1 minecraft:air
fill ~37 ~4 ~-1 ~39 ~5 ~1 minecraft:air
fill ~38 ~4 ~-1 ~40 ~5 ~1 minecraft:air
fill ~39 ~4 ~-1 ~41 ~5 ~1 minecraft:air
fill ~40 ~5 ~-1 ~42 ~6 ~1 minecraft:air
fill ~41 ~6 ~-1 ~43 ~7 ~1 minecraft:air
fill ~42 ~7 ~-1 ~44 ~8 ~1 minecraft:air
fill ~43 ~8 ~-1 ~45 ~9 ~1 minecraft:air
fill ~44 ~9 ~-1 ~46 ~10 ~1 minecraft:air
fill ~45 ~10 ~-1 ~47 ~11 ~1 minecraft:air
fill ~46 ~11 ~-1 ~48 ~12 ~1 minecraft:air
fill ~47 ~12 ~-1 ~49 ~13 ~1 minecraft:air
fill ~48 ~13 ~-1 ~50 ~14 ~1 minecraft:air
fill ~49 ~14 ~-1 ~51 ~15 ~1 minecraft:air
fill ~50 ~15 ~-1 ~52 ~16 ~1 minecraft:air
fill ~51 ~16 ~-1 ~53 ~17 ~1 minecraft:air
fill ~52 ~17 ~-1 ~54 ~18 ~1 minecraft:air
fill ~53 ~18 ~-1 ~55 ~19 ~1 minecraft:air
fill ~54 ~19 ~-1 ~56 ~20 ~1 minecraft:air
fill ~55 ~20 ~-1 ~57 ~21 ~1 minecraft:air
fill ~56 ~21 ~-1 ~58 ~22 ~1 minecraft:air
fill ~57 ~22 ~-1 ~59 ~23 ~1 minecraft:air
fill ~58 ~23 ~-1 ~60 ~24 ~1 minecraft:air
fill ~59 ~24 ~-1 ~61 ~25 ~1 minecraft:air
fill ~60 ~25 ~-1 ~62 ~26 ~1 minecraft:air
fill ~61 ~26 ~-1 ~63 ~27 ~1 minecraft:air
fill ~62 ~27 ~-1 ~64 ~28 ~1 minecraft:air
fill ~63 ~28 ~-1 ~65 ~29 ~1 minecraft:air
fill ~64 ~29 ~-1 ~66 ~30 ~1 minecraft:air
fill ~65 ~30 ~-1 ~67 ~31 ~1 minecraft:air
fill ~66 ~31 ~-1 ~68 ~32 ~1 minecraft:air
fill ~67 ~32 ~-1 ~69 ~33 ~1 minecraft:air
fill ~68 ~33 ~-1 ~70 ~34 ~1 minecraft:air
fill ~69 ~34 ~-1 ~71 ~35 ~1 minecraft:air
fill ~70 ~35 ~-1 ~72 ~36 ~1 minecraft:air
fill ~71 ~36 ~-1 ~73 ~37 ~1 minecraft:air
fill ~72 ~37 ~-1 ~74 ~38 ~1 minecraft:air
fill ~73 ~38 ~-1 ~75 ~39 ~1 minecraft:air
fill ~74 ~39 ~-1 ~76 ~40 ~1 minecraft:air
fill ~75 ~40 ~-1 ~77 ~41 ~1 minecraft:air
fill ~76 ~40 ~-1 ~78 ~41 ~1 minecraft:air
fill ~77 ~40 ~-1 ~79 ~41 ~1 minecraft:air
fill ~78 ~40 ~-1 ~80 ~41 ~1 minecraft:air
fill ~79 ~40 ~-1 ~81 ~41 ~1 minecraft:air
fill ~80 ~40 ~-1 ~82 ~41 ~1 minecraft:air
fill ~81 ~40 ~-1 ~83 ~41 ~1 minecraft:air
fill ~82 ~40 ~-1 ~84 ~41 ~1 minecraft:air
fill ~83 ~40 ~-1 ~85 ~41 ~1 minecraft:air
fill ~84 ~40 ~-1 ~86 ~41 ~1 minecraft:air
fill ~85 ~40 ~-1 ~87 ~41 ~1 minecraft:air
fill ~86 ~40 ~-1 ~88 ~41 ~1 minecraft:air
fill ~87 ~40 ~-1 ~89 ~41 ~1 minecraft:air
fill ~88 ~40 ~-1 ~90 ~41 ~1 minecraft:air
fill ~89 ~40 ~-1 ~91 ~41 ~1 minecraft:air
fill ~89 ~39 ~ ~91 ~40 ~2 minecraft:air
fill ~89 ~38 ~1 ~91 ~39 ~3 minecraft:air
fill ~89 ~37 ~2 ~91 ~38 ~4 minecraft:air
fill ~89 ~36 ~3 ~91 ~37 ~5 minecraft:air
fill ~89 ~35 ~4 ~91 ~36 ~6 minecraft:air
fill ~89 ~34 ~5 ~91 ~35 ~7 minecraft:air
fill ~89 ~33 ~6 ~91 ~34 ~8 minecraft:air
fill ~89 ~32 ~7 ~91 ~33 ~9 minecraft:air
fill ~89 ~31 ~8 ~91 ~32 ~10 minecraft:air
fill ~89 ~30 ~9 ~91 ~31 ~11 minecraft:air
fill ~89 ~29 ~10 ~91 ~30 ~12 minecraft:air
fill ~89 ~28 ~11 ~91 ~29 ~13 minecraft:air
fill ~89 ~27 ~12 ~91 ~28 ~14 minecraft:air
fill ~89 ~26 ~13 ~91 ~27 ~15 minecraft:air
fill ~89 ~25 ~14 ~91 ~26 ~16 minecraft:air
fill ~89 ~24 ~15 ~91 ~25 ~17 minecraft:air
fill ~89 ~23 ~16 ~91 ~24 ~18 minecraft:air
fill ~89 ~22 ~17 ~91 ~23 ~19 minecraft:air
fill ~89 ~21 ~18 ~91 ~22 ~20 minecraft:air
fill ~89 ~20 ~19 ~91 ~21 ~21 minecraft:air
fill ~89 ~19 ~20 ~91 ~20 ~22 minecraft:air
fill ~89 ~18 ~21 ~91 ~19 ~23 minecraft:air
fill ~89 ~17 ~22 ~91 ~18 ~24 minecraft:air
fill ~89 ~16 ~23 ~91 ~17 ~25 minecraft:air
fill ~89 ~15 ~24 ~91 ~16 ~26 minecraft:air
fill ~89 ~14 ~25 ~91 ~15 ~27 minecraft:air
fill ~89 ~13 ~26 ~91 ~14 ~28 minecraft:air
fill ~89 ~12 ~27 ~91 ~13 ~29 minecraft:air
fill ~89 ~11 ~28 ~91 ~12 ~30 minecraft:air
fill ~89 ~10 ~29 ~91 ~11 ~31 minecraft:air
fill ~89 ~9 ~30 ~91 ~10 ~32 minecraft:air
fill ~89 ~8 ~31 ~91 ~9 ~33 minecraft:air
fill ~89 ~7 ~32 ~91 ~8 ~34 minecraft:air
fill ~89 ~6 ~33 ~91 ~7 ~35 minecraft:air
fill ~89 ~6 ~34 ~91 ~7 ~36 minecraft:air
fill ~89 ~6 ~35 ~91 ~7 ~37 minecraft:air
fill ~89 ~6 ~36 ~91 ~7 ~38 minecraft:air
fill ~89 ~6 ~37 ~91 ~7 ~39 minecraft:air
fill ~89 ~6 ~38 ~91 ~7 ~40 minecraft:air
fill ~89 ~6 ~39 ~91 ~7 ~41 minecraft:air
fill ~89 ~6 ~40 ~91 ~7 ~42 minecraft:air
fill ~89 ~6 ~41 ~91 ~7 ~43 minecraft:air
fill ~89 ~6 ~42 ~91 ~7 ~44 minecraft:air
fill ~89 ~6 ~43 ~91 ~7 ~45 minecraft:air
fill ~89 ~6 ~44 ~91 ~7 ~46 minecraft:air
fill ~89 ~6 ~45 ~91 ~7 ~47 minecraft:air
fill ~89 ~6 ~46 ~91 ~7 ~48 minecraft:air
fill ~89 ~6 ~47 ~91 ~7 ~49 minecraft:air
fill ~89 ~6 ~48 ~91 ~7 ~50 minecraft:air
fill ~89 ~6 ~49 ~91 ~7 ~51 minecraft:air
fill ~88 ~6 ~49 ~90 ~7 ~51 minecraft:air
fill ~87 ~6 ~49 ~89 ~7 ~51 minecraft:air
fill ~86 ~6 ~49 ~88 ~7 ~51 minecraft:air
fill ~85 ~6 ~49 ~87 ~7 ~51 minecraft:air
fill ~84 ~6 ~49 ~86 ~7 ~51 minecraft:air
fill ~83 ~6 ~49 ~85 ~7 ~51 minecraft:air
fill ~82 ~6 ~49 ~84 ~7 ~51 minecraft:air
fill ~81 ~6 ~49 ~83 ~7 ~51 minecraft:air
fill ~80 ~6 ~49 ~82 ~7 ~51 minecraft:air
fill ~79 ~6 ~49 ~81 ~7 ~51 minecraft:air
fill ~78 ~6 ~49 ~80 ~7 ~51 minecraft:air
fill ~77 ~6 ~49 ~79 ~7 ~51 minecraft:air
fill ~76 ~6 ~49 ~78 ~7 ~51 minecraft:air
fill ~75 ~6 ~49 ~77 ~7 ~51 minecraft:air
fill ~74 ~6 ~49 ~76 ~7 ~51 minecraft:air
fill ~73 ~6 ~49 ~75 ~7 ~51 minecraft:air
fill ~72 ~6 ~49 ~74 ~7 ~51 minecraft:air
fill ~71 ~6 ~49 ~73 ~7 ~51 minecraft:air
fill ~69 ~6 ~49 ~71 ~7 ~51 minecraft:air
fill ~68 ~7 ~49 ~70 ~8 ~51 minecraft:air
fill ~67 ~8 ~49 ~69 ~9 ~51 minecraft:air
fill ~66 ~9 ~49 ~68 ~10 ~51 minecraft:air
fill ~65 ~10 ~49 ~67 ~11 ~51 minecraft:air
fill ~64 ~11 ~49 ~66 ~12 ~51 minecraft:air
fill ~63 ~12 ~49 ~65 ~13 ~51 minecraft:air
fill ~62 ~13 ~49 ~64 ~14 ~51 minecraft:air
fill ~61 ~14 ~49 ~63 ~15 ~51 minecraft:air
fill ~60 ~15 ~49 ~62 ~16 ~51 minecraft:air
fill ~59 ~16 ~49 ~61 ~17 ~51 minecraft:air
fill ~58 ~17 ~49 ~60 ~18 ~51 minecraft:air
fill ~57 ~18 ~49 ~59 ~19 ~51 minecraft:air
fill ~56 ~19 ~49 ~58 ~20 ~51 minecraft:air
fill ~55 ~20 ~49 ~57 ~21 ~51 minecraft:air
fill ~54 ~21 ~49 ~56 ~22 ~51 minecraft:air
fill ~53 ~22 ~49 ~55 ~23 ~51 minecraft:air
fill ~52 ~23 ~49 ~54 ~24 ~51 minecraft:air
fill ~51 ~24 ~49 ~53 ~25 ~51 minecraft:air
fill ~50 ~25 ~49 ~52 ~26 ~51 minecraft:air
fill ~49 ~26 ~49 ~51 ~27 ~51 minecraft:air
fill ~48 ~26 ~49 ~50 ~27 ~51 minecraft:air
fill ~47 ~26 ~49 ~49 ~27 ~51 minecraft:air
fill ~46 ~26 ~49 ~48 ~27 ~51 minecraft:air
fill ~45 ~26 ~49 ~47 ~27 ~51 minecraft:air
fill ~44 ~26 ~49 ~46 ~27 ~51 minecraft:air
fill ~43 ~25 ~49 ~45 ~26 ~51 minecraft:air
fill ~42 ~24 ~49 ~44 ~25 ~51 minecraft:air
fill ~41 ~23 ~49 ~43 ~24 ~51 minecraft:air
fill ~40 ~22 ~49 ~42 ~23 ~51 minecraft:air
fill ~39 ~21 ~49 ~41 ~22 ~51 minecraft:air
fill ~38 ~20 ~49 ~40 ~21 ~51 minecraft:air
fill ~37 ~19 ~49 ~39 ~20 ~51 minecraft:air
fill ~36 ~18 ~49 ~38 ~19 ~51 minecraft:air
fill ~35 ~17 ~49 ~37 ~18 ~51 minecraft:air
fill ~34 ~16 ~49 ~36 ~17 ~51 minecraft:air
fill ~33 ~15 ~49 ~35 ~16 ~51 minecraft:air
fill ~32 ~14 ~49 ~34 ~15 ~51 minecraft:air
fill ~31 ~13 ~49 ~33 ~14 ~51 minecraft:air
fill ~30 ~12 ~49 ~32 ~13 ~51 minecraft:air
fill ~29 ~11 ~49 ~31 ~12 ~51 minecraft:air
fill ~28 ~10 ~49 ~30 ~11 ~51 minecraft:air
fill ~27 ~9 ~49 ~29 ~10 ~51 minecraft:air
fill ~26 ~8 ~49 ~28 ~9 ~51 minecraft:air
fill ~25 ~7 ~49 ~27 ~8 ~51 minecraft:air
fill ~24 ~6 ~49 ~26 ~7 ~51 minecraft:air
fill ~23 ~6 ~49 ~25 ~7 ~51 minecraft:air
fill ~22 ~6 ~49 ~24 ~7 ~51 minecraft:air
fill ~21 ~6 ~49 ~23 ~7 ~51 minecraft:air
fill ~20 ~6 ~49 ~22 ~7 ~51 minecraft:air
fill ~19 ~6 ~49 ~21 ~7 ~51 minecraft:air
fill ~18 ~6 ~49 ~20 ~7 ~51 minecraft:air
fill ~17 ~6 ~49 ~19 ~7 ~51 minecraft:air
fill ~16 ~6 ~49 ~18 ~7 ~51 minecraft:air
fill ~15 ~6 ~49 ~17 ~7 ~51 minecraft:air
fill ~14 ~6 ~49 ~16 ~7 ~51 minecraft:air
fill ~14 ~6 ~48 ~16 ~7 ~50 minecraft:air
fill ~14 ~6 ~47 ~16 ~7 ~49 minecraft:air
fill ~14 ~6 ~46 ~16 ~7 ~48 minecraft:air
fill ~14 ~6 ~45 ~16 ~7 ~47 minecraft:air
fill ~14 ~6 ~44 ~16 ~7 ~46 minecraft:air
fill ~14 ~6 ~43 ~16 ~7 ~45 minecraft:air
fill ~14 ~6 ~42 ~16 ~7 ~44 minecraft:air
fill ~14 ~6 ~41 ~16 ~7 ~43 minecraft:air
fill ~14 ~6 ~40 ~16 ~7 ~42 minecraft:air
fill ~14 ~6 ~39 ~16 ~7 ~41 minecraft:air
fill ~14 ~6 ~38 ~16 ~7 ~40 minecraft:air
fill ~14 ~6 ~37 ~16 ~7 ~39 minecraft:air
fill ~14 ~6 ~36 ~16 ~7 ~38 minecraft:air
fill ~14 ~6 ~34 ~16 ~7 ~36 minecraft:air
fill ~14 ~7 ~33 ~16 ~8 ~35 minecraft:air
fill ~14 ~8 ~32 ~16 ~9 ~34 minecraft:air
fill ~14 ~9 ~31 ~16 ~10 ~33 minecraft:air
fill ~14 ~10 ~30 ~16 ~11 ~32 minecraft:air
fill ~14 ~11 ~29 ~16 ~12 ~31 minecraft:air
fill ~14 ~12 ~28 ~16 ~13 ~30 minecraft:air
fill ~14 ~13 ~27 ~16 ~14 ~29 minecraft:air
fill ~14 ~14 ~26 ~16 ~15 ~28 minecraft:air
fill ~14 ~15 ~25 ~16 ~16 ~27 minecraft:air
fill ~14 ~16 ~24 ~16 ~17 ~26 minecraft:air
fill ~14 ~16 ~23 ~16 ~17 ~25 minecraft:air
fill ~14 ~16 ~22 ~16 ~17 ~24 minecraft:air
fill ~14 ~16 ~21 ~16 ~17 ~23 minecraft:air
fill ~14 ~16 ~20 ~16 ~17 ~22 minecraft:air
fill ~14 ~15 ~19 ~16 ~16 ~21 minecraft:air
fill ~14 ~14 ~18 ~16 ~15 ~20 minecraft:air
fill ~14 ~13 ~17 ~16 ~14 ~19 minecraft:air
fill ~14 ~12 ~16 ~16 ~13 ~18 minecraft:air
fill ~14 ~11 ~15 ~16 ~12 ~17 minecraft:air
fill ~14 ~10 ~14 ~16 ~11 ~16 minecraft:air
fill ~14 ~9 ~13 ~16 ~10 ~15 minecraft:air
fill ~14 ~8 ~12 ~16 ~9 ~14 minecraft:air
fill ~14 ~7 ~11 ~16 ~8 ~13 minecraft:air
fill ~14 ~6 ~10 ~16 ~7 ~12 minecraft:air
fill ~14 ~6 ~9 ~16 ~7 ~11 minecraft:air
fill ~14 ~6 ~8 ~16 ~7 ~10 minecraft:air
fill ~14 ~6 ~7 ~16 ~7 ~9 minecraft:air
fill ~14 ~6 ~6 ~16 ~7 ~8 minecraft:air
fill ~14 ~6 ~5 ~16 ~7 ~7 minecraft:air
fill ~14 ~6 ~4 ~16 ~7 ~6 minecraft:air
fill ~14 ~6 ~3 ~16 ~7 ~5 minecraft:air
fill ~14 ~6 ~2 ~16 ~7 ~4 minecraft:air
fill ~14 ~6 ~1 ~16 ~7 ~3 minecraft:air
fill ~14 ~6 ~ ~16 ~7 ~2 minecraft:air
fill ~14 ~6 ~-1 ~16 ~7 ~1 minecraft:air
fill ~14 ~6 ~-2 ~16 ~7 ~ minecraft:air
fill ~14 ~6 ~-3 ~16 ~7 ~-1 minecraft:air
fill ~14 ~6 ~-4 ~16 ~7 ~-2 minecraft:air
fill ~14 ~6 ~-5 ~16 ~7 ~-3 minecraft:air
fill ~14 ~6 ~-6 ~16 ~7 ~-4 minecraft:air
fill ~14 ~6 ~-7 ~16 ~7 ~-5 minecraft:air
fill ~14 ~6 ~-8 ~16 ~7 ~-6 minecraft:air
fill ~14 ~6 ~-9 ~16 ~7 ~-7 minecraft:air
fill ~14 ~6 ~-10 ~16 ~7 ~-8 minecraft:air
fill ~14 ~6 ~-11 ~16 ~7 ~-9 minecraft:air
fill ~14 ~6 ~-12 ~16 ~7 ~-10 minecraft:air
fill ~14 ~6 ~-13 ~16 ~7 ~-11 minecraft:air
fill ~14 ~6 ~-14 ~16 ~7 ~-12 minecraft:air
fill ~14 ~6 ~-15 ~16 ~7 ~-13 minecraft:air
fill ~14 ~6 ~-16 ~16 ~7 ~-14 minecraft:air
fill ~14 ~6 ~-17 ~16 ~7 ~-15 minecraft:air
fill ~14 ~6 ~-18 ~16 ~7 ~-16 minecraft:air
fill ~14 ~6 ~-19 ~16 ~7 ~-17 minecraft:air
fill ~14 ~6 ~-20 ~16 ~7 ~-18 minecraft:air
fill ~14 ~6 ~-21 ~16 ~7 ~-19 minecraft:air
fill ~13 ~6 ~-21 ~15 ~7 ~-19 minecraft:air
fill ~12 ~6 ~-21 ~14 ~7 ~-19 minecraft:air
fill ~11 ~6 ~-21 ~13 ~7 ~-19 minecraft:air
fill ~10 ~6 ~-21 ~12 ~7 ~-19 minecraft:air
fill ~9 ~6 ~-21 ~11 ~7 ~-19 minecraft:air
fill ~8 ~6 ~-21 ~10 ~7 ~-19 minecraft:air
fill ~7 ~6 ~-21 ~9 ~7 ~-19 minecraft:air
fill ~6 ~6 ~-21 ~8 ~7 ~-19 minecraft:air
fill ~5 ~6 ~-21 ~7 ~7 ~-19 minecraft:air
fill ~4 ~6 ~-21 ~6 ~7 ~-19 minecraft:air
fill ~3 ~6 ~-21 ~5 ~7 ~-19 minecraft:air
fill ~2 ~6 ~-21 ~4 ~7 ~-19 minecraft:air
fill ~1 ~6 ~-21 ~3 ~7 ~-19 minecraft:air
fill ~ ~6 ~-21 ~2 ~7 ~-19 minecraft:air
fill ~-1 ~6 ~-21 ~1 ~7 ~-19 minecraft:air
fill ~-1 ~6 ~-20 ~1 ~7 ~-18 minecraft:air
fill ~-1 ~6 ~-19 ~1 ~7 ~-17 minecraft:air
fill ~-1 ~6 ~-18 ~1 ~7 ~-16 minecraft:air
fill ~-1 ~6 ~-17 ~1 ~7 ~-15 minecraft:air
fill ~-1 ~6 ~-16 ~1 ~7 ~-14 minecraft:air
fill ~-1 ~6 ~-15 ~1 ~7 ~-13 minecraft:air
fill ~-1 ~6 ~-14 ~1 ~7 ~-12 minecraft:air
fill ~-1 ~6 ~-13 ~1 ~7 ~-11 minecraft:air
fill ~-1 ~6 ~-12 ~1 ~7 ~-10 minecraft:air
fill ~-1 ~6 ~-11 ~1 ~7 ~-9 minecraft:air
fill ~-1 ~6 ~-10 ~1 ~7 ~-8 minecraft:air
fill ~-1 ~6 ~-9 ~1 ~7 ~-7 minecraft:air
fill ~-1 ~6 ~-8 ~1 ~7 ~-6 minecraft:air
fill ~-1 ~6 ~-7 ~1 ~7 ~-5 minecraft:air
fill ~-1 ~6 ~-6 ~1 ~7 ~-4 minecraft:air
fill ~-1 ~5 ~-5 ~1 ~6 ~-3 minecraft:air
fill ~-1 ~4 ~-4 ~1 ~5 ~-2 minecraft:air
fill ~-1 ~4 ~-3 ~1 ~5 ~-1 minecraft:air
fill ~-1 ~4 ~-2 ~1 ~5 ~ minecraft:air

# === TRACK BED ===
setblock ~ ~2 ~ minecraft:polished_blackstone_bricks
setblock ~1 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~2 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~3 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~4 ~2 ~ minecraft:redstone_block
setblock ~5 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~6 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~7 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~8 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~9 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~10 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~11 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~12 ~2 ~ minecraft:redstone_block
setblock ~13 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~14 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~15 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~16 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~17 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~18 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~19 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~20 ~2 ~ minecraft:redstone_block
setblock ~21 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~22 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~23 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~24 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~25 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~26 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~27 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~28 ~2 ~ minecraft:redstone_block
setblock ~29 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~30 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~31 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~32 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~33 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~34 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~35 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~36 ~2 ~ minecraft:redstone_block
setblock ~37 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~38 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~39 ~2 ~ minecraft:polished_blackstone_bricks
setblock ~40 ~2 ~ minecraft:redstone_block
setblock ~41 ~3 ~ minecraft:polished_blackstone_bricks
setblock ~42 ~4 ~ minecraft:redstone_block
setblock ~43 ~5 ~ minecraft:polished_blackstone_bricks
setblock ~44 ~6 ~ minecraft:redstone_block
setblock ~45 ~7 ~ minecraft:polished_blackstone_bricks
setblock ~46 ~8 ~ minecraft:redstone_block
setblock ~47 ~9 ~ minecraft:polished_blackstone_bricks
setblock ~48 ~10 ~ minecraft:redstone_block
setblock ~49 ~11 ~ minecraft:polished_blackstone_bricks
setblock ~50 ~12 ~ minecraft:redstone_block
setblock ~51 ~13 ~ minecraft:polished_blackstone_bricks
setblock ~52 ~14 ~ minecraft:redstone_block
setblock ~53 ~15 ~ minecraft:polished_blackstone_bricks
setblock ~54 ~16 ~ minecraft:redstone_block
setblock ~55 ~17 ~ minecraft:polished_blackstone_bricks
setblock ~56 ~18 ~ minecraft:redstone_block
setblock ~57 ~19 ~ minecraft:polished_blackstone_bricks
setblock ~58 ~20 ~ minecraft:redstone_block
setblock ~59 ~21 ~ minecraft:polished_blackstone_bricks
setblock ~60 ~22 ~ minecraft:redstone_block
setblock ~61 ~23 ~ minecraft:polished_blackstone_bricks
setblock ~62 ~24 ~ minecraft:redstone_block
setblock ~63 ~25 ~ minecraft:polished_blackstone_bricks
setblock ~64 ~26 ~ minecraft:redstone_block
setblock ~65 ~27 ~ minecraft:polished_blackstone_bricks
setblock ~66 ~28 ~ minecraft:redstone_block
setblock ~67 ~29 ~ minecraft:polished_blackstone_bricks
setblock ~68 ~30 ~ minecraft:redstone_block
setblock ~69 ~31 ~ minecraft:polished_blackstone_bricks
setblock ~70 ~32 ~ minecraft:redstone_block
setblock ~71 ~33 ~ minecraft:polished_blackstone_bricks
setblock ~72 ~34 ~ minecraft:redstone_block
setblock ~73 ~35 ~ minecraft:polished_blackstone_bricks
setblock ~74 ~36 ~ minecraft:redstone_block
setblock ~75 ~37 ~ minecraft:polished_blackstone_bricks
setblock ~76 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~77 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~78 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~79 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~80 ~38 ~ minecraft:redstone_block
setblock ~81 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~82 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~83 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~84 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~85 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~86 ~38 ~ minecraft:redstone_block
setblock ~87 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~88 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~89 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~90 ~38 ~ minecraft:polished_blackstone_bricks
setblock ~90 ~37 ~1 minecraft:polished_blackstone_bricks
setblock ~90 ~36 ~2 minecraft:polished_blackstone_bricks
setblock ~90 ~35 ~3 minecraft:polished_blackstone_bricks
setblock ~90 ~34 ~4 minecraft:polished_blackstone_bricks
setblock ~90 ~33 ~5 minecraft:polished_blackstone_bricks
setblock ~90 ~32 ~6 minecraft:polished_blackstone_bricks
setblock ~90 ~31 ~7 minecraft:polished_blackstone_bricks
setblock ~90 ~30 ~8 minecraft:polished_blackstone_bricks
setblock ~90 ~29 ~9 minecraft:polished_blackstone_bricks
setblock ~90 ~28 ~10 minecraft:polished_blackstone_bricks
setblock ~90 ~27 ~11 minecraft:polished_blackstone_bricks
setblock ~90 ~26 ~12 minecraft:polished_blackstone_bricks
setblock ~90 ~25 ~13 minecraft:polished_blackstone_bricks
setblock ~90 ~24 ~14 minecraft:polished_blackstone_bricks
setblock ~90 ~23 ~15 minecraft:polished_blackstone_bricks
setblock ~90 ~22 ~16 minecraft:polished_blackstone_bricks
setblock ~90 ~21 ~17 minecraft:polished_blackstone_bricks
setblock ~90 ~20 ~18 minecraft:polished_blackstone_bricks
setblock ~90 ~19 ~19 minecraft:polished_blackstone_bricks
setblock ~90 ~18 ~20 minecraft:polished_blackstone_bricks
setblock ~90 ~17 ~21 minecraft:polished_blackstone_bricks
setblock ~90 ~16 ~22 minecraft:polished_blackstone_bricks
setblock ~90 ~15 ~23 minecraft:polished_blackstone_bricks
setblock ~90 ~14 ~24 minecraft:polished_blackstone_bricks
setblock ~90 ~13 ~25 minecraft:polished_blackstone_bricks
setblock ~90 ~12 ~26 minecraft:polished_blackstone_bricks
setblock ~90 ~11 ~27 minecraft:polished_blackstone_bricks
setblock ~90 ~10 ~28 minecraft:polished_blackstone_bricks
setblock ~90 ~9 ~29 minecraft:polished_blackstone_bricks
setblock ~90 ~8 ~30 minecraft:polished_blackstone_bricks
setblock ~90 ~7 ~31 minecraft:polished_blackstone_bricks
setblock ~90 ~6 ~32 minecraft:polished_blackstone_bricks
setblock ~90 ~5 ~33 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~34 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~35 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~36 minecraft:redstone_block
setblock ~90 ~4 ~37 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~38 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~39 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~40 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~41 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~42 minecraft:redstone_block
setblock ~90 ~4 ~43 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~44 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~45 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~46 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~47 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~48 minecraft:redstone_block
setblock ~90 ~4 ~49 minecraft:polished_blackstone_bricks
setblock ~90 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~89 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~88 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~87 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~86 ~4 ~50 minecraft:redstone_block
setblock ~85 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~84 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~83 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~82 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~81 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~80 ~4 ~50 minecraft:redstone_block
setblock ~79 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~78 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~77 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~76 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~75 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~74 ~4 ~50 minecraft:redstone_block
setblock ~73 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~72 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~70 ~4 ~50 minecraft:redstone_block
setblock ~69 ~5 ~50 minecraft:polished_blackstone_bricks
setblock ~68 ~6 ~50 minecraft:redstone_block
setblock ~67 ~7 ~50 minecraft:polished_blackstone_bricks
setblock ~66 ~8 ~50 minecraft:redstone_block
setblock ~65 ~9 ~50 minecraft:polished_blackstone_bricks
setblock ~64 ~10 ~50 minecraft:redstone_block
setblock ~63 ~11 ~50 minecraft:polished_blackstone_bricks
setblock ~62 ~12 ~50 minecraft:redstone_block
setblock ~61 ~13 ~50 minecraft:polished_blackstone_bricks
setblock ~60 ~14 ~50 minecraft:redstone_block
setblock ~59 ~15 ~50 minecraft:polished_blackstone_bricks
setblock ~58 ~16 ~50 minecraft:redstone_block
setblock ~57 ~17 ~50 minecraft:polished_blackstone_bricks
setblock ~56 ~18 ~50 minecraft:redstone_block
setblock ~55 ~19 ~50 minecraft:polished_blackstone_bricks
setblock ~54 ~20 ~50 minecraft:redstone_block
setblock ~53 ~21 ~50 minecraft:polished_blackstone_bricks
setblock ~52 ~22 ~50 minecraft:redstone_block
setblock ~51 ~23 ~50 minecraft:polished_blackstone_bricks
setblock ~50 ~24 ~50 minecraft:polished_blackstone_bricks
setblock ~49 ~24 ~50 minecraft:polished_blackstone_bricks
setblock ~48 ~24 ~50 minecraft:redstone_block
setblock ~47 ~24 ~50 minecraft:polished_blackstone_bricks
setblock ~46 ~24 ~50 minecraft:polished_blackstone_bricks
setblock ~45 ~24 ~50 minecraft:redstone_block
setblock ~44 ~23 ~50 minecraft:polished_blackstone_bricks
setblock ~43 ~22 ~50 minecraft:polished_blackstone_bricks
setblock ~42 ~21 ~50 minecraft:polished_blackstone_bricks
setblock ~41 ~20 ~50 minecraft:polished_blackstone_bricks
setblock ~40 ~19 ~50 minecraft:polished_blackstone_bricks
setblock ~39 ~18 ~50 minecraft:polished_blackstone_bricks
setblock ~38 ~17 ~50 minecraft:polished_blackstone_bricks
setblock ~37 ~16 ~50 minecraft:polished_blackstone_bricks
setblock ~36 ~15 ~50 minecraft:polished_blackstone_bricks
setblock ~35 ~14 ~50 minecraft:polished_blackstone_bricks
setblock ~34 ~13 ~50 minecraft:polished_blackstone_bricks
setblock ~33 ~12 ~50 minecraft:polished_blackstone_bricks
setblock ~32 ~11 ~50 minecraft:polished_blackstone_bricks
setblock ~31 ~10 ~50 minecraft:polished_blackstone_bricks
setblock ~30 ~9 ~50 minecraft:polished_blackstone_bricks
setblock ~29 ~8 ~50 minecraft:polished_blackstone_bricks
setblock ~28 ~7 ~50 minecraft:polished_blackstone_bricks
setblock ~27 ~6 ~50 minecraft:polished_blackstone_bricks
setblock ~26 ~5 ~50 minecraft:polished_blackstone_bricks
setblock ~25 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~24 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~23 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~22 ~4 ~50 minecraft:redstone_block
setblock ~21 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~20 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~19 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~18 ~4 ~50 minecraft:redstone_block
setblock ~17 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~16 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~50 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~49 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~48 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~47 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~46 minecraft:redstone_block
setblock ~15 ~4 ~45 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~44 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~43 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~42 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~41 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~40 minecraft:redstone_block
setblock ~15 ~4 ~39 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~38 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~37 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~35 minecraft:redstone_block
setblock ~15 ~5 ~34 minecraft:polished_blackstone_bricks
setblock ~15 ~6 ~33 minecraft:redstone_block
setblock ~15 ~7 ~32 minecraft:polished_blackstone_bricks
setblock ~15 ~8 ~31 minecraft:redstone_block
setblock ~15 ~9 ~30 minecraft:polished_blackstone_bricks
setblock ~15 ~10 ~29 minecraft:redstone_block
setblock ~15 ~11 ~28 minecraft:polished_blackstone_bricks
setblock ~15 ~12 ~27 minecraft:redstone_block
setblock ~15 ~13 ~26 minecraft:polished_blackstone_bricks
setblock ~15 ~14 ~25 minecraft:polished_blackstone_bricks
setblock ~15 ~14 ~24 minecraft:polished_blackstone_bricks
setblock ~15 ~14 ~23 minecraft:polished_blackstone_bricks
setblock ~15 ~14 ~22 minecraft:polished_blackstone_bricks
setblock ~15 ~14 ~21 minecraft:polished_blackstone_bricks
setblock ~15 ~13 ~20 minecraft:polished_blackstone_bricks
setblock ~15 ~12 ~19 minecraft:polished_blackstone_bricks
setblock ~15 ~11 ~18 minecraft:polished_blackstone_bricks
setblock ~15 ~10 ~17 minecraft:polished_blackstone_bricks
setblock ~15 ~9 ~16 minecraft:polished_blackstone_bricks
setblock ~15 ~8 ~15 minecraft:polished_blackstone_bricks
setblock ~15 ~7 ~14 minecraft:polished_blackstone_bricks
setblock ~15 ~6 ~13 minecraft:polished_blackstone_bricks
setblock ~15 ~5 ~12 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~11 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~10 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~9 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~8 minecraft:redstone_block
setblock ~15 ~4 ~7 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~6 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~5 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~4 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~3 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~2 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~1 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~ minecraft:redstone_block
setblock ~15 ~4 ~-1 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-2 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-3 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-4 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-5 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-6 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-7 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-8 minecraft:redstone_block
setblock ~15 ~4 ~-9 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-10 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-11 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-12 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-13 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-14 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-15 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-16 minecraft:redstone_block
setblock ~15 ~4 ~-17 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-18 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-19 minecraft:polished_blackstone_bricks
setblock ~15 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~14 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~13 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~12 ~4 ~-20 minecraft:redstone_block
setblock ~11 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~10 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~9 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~8 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~7 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~6 ~4 ~-20 minecraft:redstone_block
setblock ~5 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~4 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~3 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~2 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~1 ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-20 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-19 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-18 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-17 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-16 minecraft:redstone_block
setblock ~ ~4 ~-15 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-14 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-13 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-12 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-11 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-10 minecraft:redstone_block
setblock ~ ~4 ~-9 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-8 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-7 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-6 minecraft:polished_blackstone_bricks
setblock ~ ~4 ~-5 minecraft:polished_blackstone_bricks
setblock ~ ~3 ~-4 minecraft:polished_blackstone_bricks
setblock ~ ~2 ~-3 minecraft:polished_blackstone_bricks
setblock ~ ~2 ~-2 minecraft:polished_blackstone_bricks
setblock ~ ~2 ~-1 minecraft:polished_blackstone_bricks

# === MAIN LIFT MAINTENANCE CATWALK ===
setblock ~40 ~2 ~-2 minecraft:smooth_stone
setblock ~40 ~3 ~-3 minecraft:iron_bars
setblock ~40 ~3 ~-2 minecraft:sea_lantern
setblock ~41 ~3 ~-2 minecraft:smooth_stone
setblock ~41 ~4 ~-3 minecraft:iron_bars
setblock ~42 ~4 ~-2 minecraft:smooth_stone
setblock ~42 ~5 ~-3 minecraft:iron_bars
setblock ~43 ~5 ~-2 minecraft:smooth_stone
setblock ~43 ~6 ~-3 minecraft:iron_bars
setblock ~44 ~6 ~-2 minecraft:smooth_stone
setblock ~44 ~7 ~-3 minecraft:iron_bars
setblock ~45 ~7 ~-2 minecraft:smooth_stone
setblock ~45 ~8 ~-3 minecraft:iron_bars
setblock ~45 ~8 ~-2 minecraft:sea_lantern
setblock ~46 ~8 ~-2 minecraft:smooth_stone
setblock ~46 ~9 ~-3 minecraft:iron_bars
setblock ~47 ~9 ~-2 minecraft:smooth_stone
setblock ~47 ~10 ~-3 minecraft:iron_bars
setblock ~48 ~10 ~-2 minecraft:smooth_stone
setblock ~48 ~11 ~-3 minecraft:iron_bars
setblock ~49 ~11 ~-2 minecraft:smooth_stone
setblock ~49 ~12 ~-3 minecraft:iron_bars
setblock ~50 ~12 ~-2 minecraft:smooth_stone
setblock ~50 ~13 ~-3 minecraft:iron_bars
setblock ~50 ~13 ~-2 minecraft:sea_lantern
setblock ~51 ~13 ~-2 minecraft:smooth_stone
setblock ~51 ~14 ~-3 minecraft:iron_bars
setblock ~52 ~14 ~-2 minecraft:smooth_stone
setblock ~52 ~15 ~-3 minecraft:iron_bars
setblock ~53 ~15 ~-2 minecraft:smooth_stone
setblock ~53 ~16 ~-3 minecraft:iron_bars
setblock ~54 ~16 ~-2 minecraft:smooth_stone
setblock ~54 ~17 ~-3 minecraft:iron_bars
setblock ~55 ~17 ~-2 minecraft:smooth_stone
setblock ~55 ~18 ~-3 minecraft:iron_bars
setblock ~55 ~18 ~-2 minecraft:sea_lantern
setblock ~56 ~18 ~-2 minecraft:smooth_stone
setblock ~56 ~19 ~-3 minecraft:iron_bars
setblock ~57 ~19 ~-2 minecraft:smooth_stone
setblock ~57 ~20 ~-3 minecraft:iron_bars
setblock ~58 ~20 ~-2 minecraft:smooth_stone
setblock ~58 ~21 ~-3 minecraft:iron_bars
setblock ~59 ~21 ~-2 minecraft:smooth_stone
setblock ~59 ~22 ~-3 minecraft:iron_bars
setblock ~60 ~22 ~-2 minecraft:smooth_stone
setblock ~60 ~23 ~-3 minecraft:iron_bars
setblock ~60 ~23 ~-2 minecraft:sea_lantern
setblock ~61 ~23 ~-2 minecraft:smooth_stone
setblock ~61 ~24 ~-3 minecraft:iron_bars
setblock ~62 ~24 ~-2 minecraft:smooth_stone
setblock ~62 ~25 ~-3 minecraft:iron_bars
setblock ~63 ~25 ~-2 minecraft:smooth_stone
setblock ~63 ~26 ~-3 minecraft:iron_bars
setblock ~64 ~26 ~-2 minecraft:smooth_stone
setblock ~64 ~27 ~-3 minecraft:iron_bars
setblock ~65 ~27 ~-2 minecraft:smooth_stone
setblock ~65 ~28 ~-3 minecraft:iron_bars
setblock ~65 ~28 ~-2 minecraft:sea_lantern
setblock ~66 ~28 ~-2 minecraft:smooth_stone
setblock ~66 ~29 ~-3 minecraft:iron_bars
setblock ~67 ~29 ~-2 minecraft:smooth_stone
setblock ~67 ~30 ~-3 minecraft:iron_bars
setblock ~68 ~30 ~-2 minecraft:smooth_stone
setblock ~68 ~31 ~-3 minecraft:iron_bars
setblock ~69 ~31 ~-2 minecraft:smooth_stone
setblock ~69 ~32 ~-3 minecraft:iron_bars
setblock ~70 ~32 ~-2 minecraft:smooth_stone
setblock ~70 ~33 ~-3 minecraft:iron_bars
setblock ~70 ~33 ~-2 minecraft:sea_lantern
setblock ~71 ~33 ~-2 minecraft:smooth_stone
setblock ~71 ~34 ~-3 minecraft:iron_bars
setblock ~72 ~34 ~-2 minecraft:smooth_stone
setblock ~72 ~35 ~-3 minecraft:iron_bars
setblock ~73 ~35 ~-2 minecraft:smooth_stone
setblock ~73 ~36 ~-3 minecraft:iron_bars
setblock ~74 ~36 ~-2 minecraft:smooth_stone
setblock ~74 ~37 ~-3 minecraft:iron_bars
setblock ~75 ~37 ~-2 minecraft:smooth_stone
setblock ~75 ~38 ~-3 minecraft:iron_bars
setblock ~75 ~38 ~-2 minecraft:sea_lantern
setblock ~76 ~38 ~-2 minecraft:smooth_stone
setblock ~76 ~39 ~-3 minecraft:iron_bars
setblock ~77 ~38 ~-2 minecraft:smooth_stone
setblock ~77 ~39 ~-3 minecraft:iron_bars
setblock ~78 ~38 ~-2 minecraft:smooth_stone
setblock ~78 ~39 ~-3 minecraft:iron_bars
setblock ~79 ~38 ~-2 minecraft:smooth_stone
setblock ~79 ~39 ~-3 minecraft:iron_bars
setblock ~80 ~38 ~-2 minecraft:smooth_stone
setblock ~80 ~39 ~-3 minecraft:iron_bars
setblock ~80 ~39 ~-2 minecraft:sea_lantern
setblock ~81 ~38 ~-2 minecraft:smooth_stone
setblock ~81 ~39 ~-3 minecraft:iron_bars
setblock ~82 ~38 ~-2 minecraft:smooth_stone
setblock ~82 ~39 ~-3 minecraft:iron_bars
setblock ~83 ~38 ~-2 minecraft:smooth_stone
setblock ~83 ~39 ~-3 minecraft:iron_bars
setblock ~84 ~38 ~-2 minecraft:smooth_stone
setblock ~84 ~39 ~-3 minecraft:iron_bars
setblock ~85 ~38 ~-2 minecraft:smooth_stone
setblock ~85 ~39 ~-3 minecraft:iron_bars
setblock ~85 ~39 ~-2 minecraft:sea_lantern
setblock ~86 ~38 ~-2 minecraft:smooth_stone
setblock ~86 ~39 ~-3 minecraft:iron_bars
setblock ~87 ~38 ~-2 minecraft:smooth_stone
setblock ~87 ~39 ~-3 minecraft:iron_bars
setblock ~88 ~38 ~-2 minecraft:smooth_stone
setblock ~88 ~39 ~-3 minecraft:iron_bars
setblock ~89 ~38 ~-2 minecraft:smooth_stone
setblock ~89 ~39 ~-3 minecraft:iron_bars

# === COASTER SUPPORT FRAMES ===
fill ~42 ~ ~-2 ~42 ~3 ~-2 minecraft:blue_concrete
fill ~42 ~ ~2 ~42 ~3 ~2 minecraft:blue_concrete
fill ~42 ~3 ~-2 ~42 ~3 ~2 minecraft:light_blue_concrete
setblock ~42 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~42 ~ ~2 minecraft:polished_blackstone_bricks
setblock ~42 ~2 ~ minecraft:sea_lantern
fill ~50 ~ ~-2 ~50 ~11 ~-2 minecraft:blue_concrete
fill ~50 ~ ~2 ~50 ~11 ~2 minecraft:blue_concrete
fill ~50 ~11 ~-2 ~50 ~11 ~2 minecraft:light_blue_concrete
setblock ~50 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~50 ~ ~2 minecraft:polished_blackstone_bricks
fill ~55 ~ ~-2 ~55 ~16 ~-2 minecraft:blue_concrete
fill ~55 ~ ~2 ~55 ~16 ~2 minecraft:blue_concrete
fill ~55 ~16 ~-2 ~55 ~16 ~2 minecraft:light_blue_concrete
setblock ~55 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~55 ~ ~2 minecraft:polished_blackstone_bricks
fill ~60 ~ ~-2 ~60 ~21 ~-2 minecraft:blue_concrete
fill ~60 ~ ~2 ~60 ~21 ~2 minecraft:blue_concrete
fill ~60 ~21 ~-2 ~60 ~21 ~2 minecraft:light_blue_concrete
setblock ~60 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~60 ~ ~2 minecraft:polished_blackstone_bricks
setblock ~60 ~20 ~ minecraft:sea_lantern
fill ~65 ~ ~-2 ~65 ~26 ~-2 minecraft:blue_concrete
fill ~65 ~ ~2 ~65 ~26 ~2 minecraft:blue_concrete
fill ~65 ~26 ~-2 ~65 ~26 ~2 minecraft:light_blue_concrete
setblock ~65 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~65 ~ ~2 minecraft:polished_blackstone_bricks
fill ~70 ~ ~-2 ~70 ~31 ~-2 minecraft:blue_concrete
fill ~70 ~ ~2 ~70 ~31 ~2 minecraft:blue_concrete
fill ~70 ~31 ~-2 ~70 ~31 ~2 minecraft:light_blue_concrete
setblock ~70 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~70 ~ ~2 minecraft:polished_blackstone_bricks
fill ~75 ~ ~-2 ~75 ~36 ~-2 minecraft:blue_concrete
fill ~75 ~ ~2 ~75 ~36 ~2 minecraft:blue_concrete
fill ~75 ~36 ~-2 ~75 ~36 ~2 minecraft:light_blue_concrete
setblock ~75 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~75 ~ ~2 minecraft:polished_blackstone_bricks
setblock ~75 ~35 ~ minecraft:sea_lantern
fill ~80 ~ ~-2 ~80 ~37 ~-2 minecraft:blue_concrete
fill ~80 ~ ~2 ~80 ~37 ~2 minecraft:blue_concrete
fill ~80 ~37 ~-2 ~80 ~37 ~2 minecraft:light_blue_concrete
setblock ~80 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~80 ~ ~2 minecraft:polished_blackstone_bricks
fill ~85 ~ ~-2 ~85 ~37 ~-2 minecraft:blue_concrete
fill ~85 ~ ~2 ~85 ~37 ~2 minecraft:blue_concrete
fill ~85 ~37 ~-2 ~85 ~37 ~2 minecraft:light_blue_concrete
setblock ~85 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~85 ~ ~2 minecraft:polished_blackstone_bricks
fill ~88 ~ ~-2 ~88 ~37 ~-2 minecraft:blue_concrete
fill ~92 ~ ~-2 ~92 ~37 ~-2 minecraft:blue_concrete
fill ~88 ~ ~2 ~88 ~37 ~2 minecraft:blue_concrete
fill ~92 ~ ~2 ~92 ~37 ~2 minecraft:blue_concrete
fill ~88 ~37 ~ ~92 ~37 ~ minecraft:light_blue_concrete
fill ~90 ~37 ~-2 ~90 ~37 ~2 minecraft:light_blue_concrete
setblock ~90 ~36 ~ minecraft:sea_lantern
fill ~88 ~ ~5 ~88 ~32 ~5 minecraft:blue_concrete
fill ~92 ~ ~5 ~92 ~32 ~5 minecraft:blue_concrete
fill ~88 ~32 ~5 ~92 ~32 ~5 minecraft:light_blue_concrete
setblock ~88 ~ ~5 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~5 minecraft:polished_blackstone_bricks
fill ~88 ~ ~10 ~88 ~27 ~10 minecraft:blue_concrete
fill ~92 ~ ~10 ~92 ~27 ~10 minecraft:blue_concrete
fill ~88 ~27 ~10 ~92 ~27 ~10 minecraft:light_blue_concrete
setblock ~88 ~ ~10 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~10 minecraft:polished_blackstone_bricks
fill ~88 ~ ~15 ~88 ~22 ~15 minecraft:blue_concrete
fill ~92 ~ ~15 ~92 ~22 ~15 minecraft:blue_concrete
fill ~88 ~22 ~15 ~92 ~22 ~15 minecraft:light_blue_concrete
setblock ~88 ~ ~15 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~15 minecraft:polished_blackstone_bricks
setblock ~90 ~21 ~15 minecraft:sea_lantern
fill ~88 ~ ~20 ~88 ~17 ~20 minecraft:blue_concrete
fill ~92 ~ ~20 ~92 ~17 ~20 minecraft:blue_concrete
fill ~88 ~17 ~20 ~92 ~17 ~20 minecraft:light_blue_concrete
setblock ~88 ~ ~20 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~20 minecraft:polished_blackstone_bricks
fill ~88 ~ ~25 ~88 ~12 ~25 minecraft:blue_concrete
fill ~92 ~ ~25 ~92 ~12 ~25 minecraft:blue_concrete
fill ~88 ~12 ~25 ~92 ~12 ~25 minecraft:light_blue_concrete
setblock ~88 ~ ~25 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~25 minecraft:polished_blackstone_bricks
fill ~88 ~ ~29 ~88 ~8 ~29 minecraft:blue_concrete
fill ~92 ~ ~29 ~92 ~8 ~29 minecraft:blue_concrete
fill ~88 ~8 ~29 ~92 ~8 ~29 minecraft:light_blue_concrete
setblock ~88 ~ ~29 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~29 minecraft:polished_blackstone_bricks
setblock ~90 ~7 ~29 minecraft:sea_lantern
fill ~88 ~ ~36 ~88 ~3 ~36 minecraft:blue_concrete
fill ~92 ~ ~36 ~92 ~3 ~36 minecraft:blue_concrete
fill ~88 ~3 ~36 ~92 ~3 ~36 minecraft:light_blue_concrete
setblock ~88 ~ ~36 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~36 minecraft:polished_blackstone_bricks
fill ~88 ~ ~43 ~88 ~3 ~43 minecraft:blue_concrete
fill ~92 ~ ~43 ~92 ~3 ~43 minecraft:blue_concrete
fill ~88 ~3 ~43 ~92 ~3 ~43 minecraft:light_blue_concrete
setblock ~88 ~ ~43 minecraft:polished_blackstone_bricks
setblock ~92 ~ ~43 minecraft:polished_blackstone_bricks
fill ~88 ~ ~48 ~88 ~3 ~48 minecraft:blue_concrete
fill ~92 ~ ~48 ~92 ~3 ~48 minecraft:blue_concrete
fill ~88 ~ ~52 ~88 ~3 ~52 minecraft:blue_concrete
fill ~92 ~ ~52 ~92 ~3 ~52 minecraft:blue_concrete
fill ~88 ~3 ~50 ~92 ~3 ~50 minecraft:light_blue_concrete
fill ~90 ~3 ~48 ~90 ~3 ~52 minecraft:light_blue_concrete
setblock ~90 ~2 ~50 minecraft:sea_lantern
fill ~83 ~ ~48 ~83 ~3 ~48 minecraft:blue_concrete
fill ~83 ~ ~52 ~83 ~3 ~52 minecraft:blue_concrete
fill ~83 ~3 ~48 ~83 ~3 ~52 minecraft:light_blue_concrete
setblock ~83 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~83 ~ ~52 minecraft:polished_blackstone_bricks
fill ~76 ~ ~48 ~76 ~3 ~48 minecraft:blue_concrete
fill ~76 ~ ~52 ~76 ~3 ~52 minecraft:blue_concrete
fill ~76 ~3 ~48 ~76 ~3 ~52 minecraft:light_blue_concrete
setblock ~76 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~76 ~ ~52 minecraft:polished_blackstone_bricks
fill ~68 ~ ~48 ~68 ~5 ~48 minecraft:blue_concrete
fill ~68 ~ ~52 ~68 ~5 ~52 minecraft:blue_concrete
fill ~68 ~5 ~48 ~68 ~5 ~52 minecraft:light_blue_concrete
setblock ~68 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~68 ~ ~52 minecraft:polished_blackstone_bricks
setblock ~68 ~4 ~50 minecraft:sea_lantern
fill ~59 ~ ~48 ~59 ~14 ~48 minecraft:blue_concrete
fill ~59 ~ ~52 ~59 ~14 ~52 minecraft:blue_concrete
fill ~59 ~14 ~48 ~59 ~14 ~52 minecraft:light_blue_concrete
setblock ~59 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~59 ~ ~52 minecraft:polished_blackstone_bricks
fill ~54 ~ ~48 ~54 ~19 ~48 minecraft:blue_concrete
fill ~54 ~ ~52 ~54 ~19 ~52 minecraft:blue_concrete
fill ~54 ~19 ~48 ~54 ~19 ~52 minecraft:light_blue_concrete
setblock ~54 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~54 ~ ~52 minecraft:polished_blackstone_bricks
fill ~49 ~ ~48 ~49 ~23 ~48 minecraft:blue_concrete
fill ~49 ~ ~52 ~49 ~23 ~52 minecraft:blue_concrete
fill ~49 ~23 ~48 ~49 ~23 ~52 minecraft:light_blue_concrete
setblock ~49 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~49 ~ ~52 minecraft:polished_blackstone_bricks
setblock ~49 ~22 ~50 minecraft:sea_lantern
fill ~44 ~ ~48 ~44 ~22 ~48 minecraft:blue_concrete
fill ~44 ~ ~52 ~44 ~22 ~52 minecraft:blue_concrete
fill ~44 ~22 ~48 ~44 ~22 ~52 minecraft:light_blue_concrete
setblock ~44 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~44 ~ ~52 minecraft:polished_blackstone_bricks
fill ~39 ~ ~48 ~39 ~17 ~48 minecraft:blue_concrete
fill ~39 ~ ~52 ~39 ~17 ~52 minecraft:blue_concrete
fill ~39 ~17 ~48 ~39 ~17 ~52 minecraft:light_blue_concrete
setblock ~39 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~39 ~ ~52 minecraft:polished_blackstone_bricks
fill ~34 ~ ~48 ~34 ~12 ~48 minecraft:blue_concrete
fill ~34 ~ ~52 ~34 ~12 ~52 minecraft:blue_concrete
fill ~34 ~12 ~48 ~34 ~12 ~52 minecraft:light_blue_concrete
setblock ~34 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~34 ~ ~52 minecraft:polished_blackstone_bricks
setblock ~34 ~11 ~50 minecraft:sea_lantern
fill ~26 ~ ~48 ~26 ~4 ~48 minecraft:blue_concrete
fill ~26 ~ ~52 ~26 ~4 ~52 minecraft:blue_concrete
fill ~26 ~4 ~48 ~26 ~4 ~52 minecraft:light_blue_concrete
setblock ~26 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~26 ~ ~52 minecraft:polished_blackstone_bricks
fill ~19 ~ ~48 ~19 ~3 ~48 minecraft:blue_concrete
fill ~19 ~ ~52 ~19 ~3 ~52 minecraft:blue_concrete
fill ~19 ~3 ~48 ~19 ~3 ~52 minecraft:light_blue_concrete
setblock ~19 ~ ~48 minecraft:polished_blackstone_bricks
setblock ~19 ~ ~52 minecraft:polished_blackstone_bricks
fill ~13 ~ ~48 ~13 ~3 ~48 minecraft:blue_concrete
fill ~17 ~ ~48 ~17 ~3 ~48 minecraft:blue_concrete
fill ~13 ~ ~52 ~13 ~3 ~52 minecraft:blue_concrete
fill ~17 ~ ~52 ~17 ~3 ~52 minecraft:blue_concrete
fill ~13 ~3 ~50 ~17 ~3 ~50 minecraft:light_blue_concrete
fill ~15 ~3 ~48 ~15 ~3 ~52 minecraft:light_blue_concrete
setblock ~15 ~2 ~50 minecraft:sea_lantern
fill ~13 ~ ~47 ~13 ~3 ~47 minecraft:blue_concrete
fill ~17 ~ ~47 ~17 ~3 ~47 minecraft:blue_concrete
fill ~13 ~3 ~47 ~17 ~3 ~47 minecraft:light_blue_concrete
setblock ~13 ~ ~47 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~47 minecraft:polished_blackstone_bricks
fill ~13 ~ ~40 ~13 ~3 ~40 minecraft:blue_concrete
fill ~17 ~ ~40 ~17 ~3 ~40 minecraft:blue_concrete
fill ~13 ~3 ~40 ~17 ~3 ~40 minecraft:light_blue_concrete
setblock ~13 ~ ~40 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~40 minecraft:polished_blackstone_bricks
fill ~13 ~ ~32 ~13 ~6 ~32 minecraft:blue_concrete
fill ~17 ~ ~32 ~17 ~6 ~32 minecraft:blue_concrete
fill ~13 ~6 ~32 ~17 ~6 ~32 minecraft:light_blue_concrete
setblock ~13 ~ ~32 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~32 minecraft:polished_blackstone_bricks
setblock ~15 ~5 ~32 minecraft:sea_lantern
fill ~13 ~ ~28 ~13 ~10 ~28 minecraft:blue_concrete
fill ~17 ~ ~28 ~17 ~10 ~28 minecraft:blue_concrete
fill ~13 ~10 ~28 ~17 ~10 ~28 minecraft:light_blue_concrete
setblock ~13 ~ ~28 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~28 minecraft:polished_blackstone_bricks
fill ~13 ~ ~23 ~13 ~13 ~23 minecraft:blue_concrete
fill ~17 ~ ~23 ~17 ~13 ~23 minecraft:blue_concrete
fill ~13 ~13 ~23 ~17 ~13 ~23 minecraft:light_blue_concrete
setblock ~13 ~ ~23 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~23 minecraft:polished_blackstone_bricks
fill ~13 ~ ~18 ~13 ~10 ~18 minecraft:blue_concrete
fill ~17 ~ ~18 ~17 ~10 ~18 minecraft:blue_concrete
fill ~13 ~10 ~18 ~17 ~10 ~18 minecraft:light_blue_concrete
setblock ~13 ~ ~18 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~18 minecraft:polished_blackstone_bricks
setblock ~15 ~9 ~18 minecraft:sea_lantern
fill ~13 ~ ~11 ~13 ~3 ~11 minecraft:blue_concrete
fill ~17 ~ ~11 ~17 ~3 ~11 minecraft:blue_concrete
fill ~13 ~3 ~11 ~17 ~3 ~11 minecraft:light_blue_concrete
setblock ~13 ~ ~11 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~11 minecraft:polished_blackstone_bricks
fill ~13 ~ ~4 ~13 ~3 ~4 minecraft:blue_concrete
fill ~17 ~ ~4 ~17 ~3 ~4 minecraft:blue_concrete
fill ~13 ~3 ~4 ~17 ~3 ~4 minecraft:light_blue_concrete
setblock ~13 ~ ~4 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~4 minecraft:polished_blackstone_bricks
fill ~13 ~ ~-3 ~13 ~3 ~-3 minecraft:blue_concrete
fill ~17 ~ ~-3 ~17 ~3 ~-3 minecraft:blue_concrete
fill ~13 ~3 ~-3 ~17 ~3 ~-3 minecraft:light_blue_concrete
setblock ~13 ~ ~-3 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~-3 minecraft:polished_blackstone_bricks
setblock ~15 ~2 ~-3 minecraft:sea_lantern
fill ~13 ~ ~-10 ~13 ~3 ~-10 minecraft:blue_concrete
fill ~17 ~ ~-10 ~17 ~3 ~-10 minecraft:blue_concrete
fill ~13 ~3 ~-10 ~17 ~3 ~-10 minecraft:light_blue_concrete
setblock ~13 ~ ~-10 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~-10 minecraft:polished_blackstone_bricks
fill ~13 ~ ~-17 ~13 ~3 ~-17 minecraft:blue_concrete
fill ~17 ~ ~-17 ~17 ~3 ~-17 minecraft:blue_concrete
fill ~13 ~3 ~-17 ~17 ~3 ~-17 minecraft:light_blue_concrete
setblock ~13 ~ ~-17 minecraft:polished_blackstone_bricks
setblock ~17 ~ ~-17 minecraft:polished_blackstone_bricks
fill ~13 ~ ~-22 ~13 ~3 ~-22 minecraft:blue_concrete
fill ~17 ~ ~-22 ~17 ~3 ~-22 minecraft:blue_concrete
fill ~13 ~ ~-18 ~13 ~3 ~-18 minecraft:blue_concrete
fill ~17 ~ ~-18 ~17 ~3 ~-18 minecraft:blue_concrete
fill ~13 ~3 ~-20 ~17 ~3 ~-20 minecraft:light_blue_concrete
fill ~15 ~3 ~-22 ~15 ~3 ~-18 minecraft:light_blue_concrete
setblock ~15 ~2 ~-20 minecraft:sea_lantern
fill ~11 ~ ~-22 ~11 ~3 ~-22 minecraft:blue_concrete
fill ~11 ~ ~-18 ~11 ~3 ~-18 minecraft:blue_concrete
fill ~11 ~3 ~-22 ~11 ~3 ~-18 minecraft:light_blue_concrete
setblock ~11 ~ ~-22 minecraft:polished_blackstone_bricks
setblock ~11 ~ ~-18 minecraft:polished_blackstone_bricks
fill ~4 ~ ~-22 ~4 ~3 ~-22 minecraft:blue_concrete
fill ~4 ~ ~-18 ~4 ~3 ~-18 minecraft:blue_concrete
fill ~4 ~3 ~-22 ~4 ~3 ~-18 minecraft:light_blue_concrete
setblock ~4 ~ ~-22 minecraft:polished_blackstone_bricks
setblock ~4 ~ ~-18 minecraft:polished_blackstone_bricks
fill ~-2 ~ ~-22 ~-2 ~3 ~-22 minecraft:blue_concrete
fill ~2 ~ ~-22 ~2 ~3 ~-22 minecraft:blue_concrete
fill ~-2 ~ ~-18 ~-2 ~3 ~-18 minecraft:blue_concrete
fill ~2 ~ ~-18 ~2 ~3 ~-18 minecraft:blue_concrete
fill ~-2 ~3 ~-20 ~2 ~3 ~-20 minecraft:light_blue_concrete
fill ~ ~3 ~-22 ~ ~3 ~-18 minecraft:light_blue_concrete
setblock ~ ~2 ~-20 minecraft:sea_lantern
fill ~-2 ~ ~-17 ~-2 ~3 ~-17 minecraft:blue_concrete
fill ~2 ~ ~-17 ~2 ~3 ~-17 minecraft:blue_concrete
fill ~-2 ~3 ~-17 ~2 ~3 ~-17 minecraft:light_blue_concrete
setblock ~-2 ~ ~-17 minecraft:polished_blackstone_bricks
setblock ~2 ~ ~-17 minecraft:polished_blackstone_bricks
fill ~-2 ~ ~-10 ~-2 ~3 ~-10 minecraft:blue_concrete
fill ~2 ~ ~-10 ~2 ~3 ~-10 minecraft:blue_concrete
fill ~-2 ~3 ~-10 ~2 ~3 ~-10 minecraft:light_blue_concrete
setblock ~-2 ~ ~-10 minecraft:polished_blackstone_bricks
setblock ~2 ~ ~-10 minecraft:polished_blackstone_bricks
fill ~43 ~ ~-3 ~43 ~7 ~-3 minecraft:polished_blackstone_bricks
fill ~49 ~ ~3 ~49 ~7 ~3 minecraft:polished_blackstone_bricks
fill ~43 ~4 ~-3 ~49 ~4 ~3 minecraft:light_blue_concrete
fill ~49 ~ ~-3 ~49 ~13 ~-3 minecraft:polished_blackstone_bricks
fill ~55 ~ ~3 ~55 ~13 ~3 minecraft:polished_blackstone_bricks
fill ~49 ~7 ~-3 ~55 ~7 ~3 minecraft:light_blue_concrete
fill ~55 ~ ~-3 ~55 ~19 ~-3 minecraft:polished_blackstone_bricks
fill ~61 ~ ~3 ~61 ~19 ~3 minecraft:polished_blackstone_bricks
fill ~55 ~10 ~-3 ~61 ~10 ~3 minecraft:light_blue_concrete
fill ~61 ~ ~-3 ~61 ~25 ~-3 minecraft:polished_blackstone_bricks
fill ~67 ~ ~3 ~67 ~25 ~3 minecraft:polished_blackstone_bricks
fill ~61 ~13 ~-3 ~67 ~13 ~3 minecraft:light_blue_concrete
fill ~67 ~ ~-3 ~67 ~31 ~-3 minecraft:polished_blackstone_bricks
fill ~73 ~ ~3 ~73 ~31 ~3 minecraft:polished_blackstone_bricks
fill ~67 ~16 ~-3 ~73 ~16 ~3 minecraft:light_blue_concrete
fill ~73 ~ ~-3 ~73 ~37 ~-3 minecraft:polished_blackstone_bricks
fill ~79 ~ ~3 ~79 ~37 ~3 minecraft:polished_blackstone_bricks
fill ~73 ~19 ~-3 ~79 ~19 ~3 minecraft:light_blue_concrete
fill ~81 ~ ~-3 ~81 ~37 ~-3 minecraft:polished_blackstone_bricks
fill ~87 ~ ~3 ~87 ~37 ~3 minecraft:polished_blackstone_bricks
fill ~81 ~19 ~-3 ~87 ~19 ~3 minecraft:light_blue_concrete
fill ~87 ~ ~-3 ~87 ~37 ~-3 minecraft:polished_blackstone_bricks
fill ~93 ~ ~3 ~93 ~37 ~3 minecraft:polished_blackstone_bricks
fill ~87 ~19 ~-3 ~93 ~19 ~3 minecraft:light_blue_concrete

# === LIFT-HILL PORTAL ARCH ===
fill ~34 ~ ~-5 ~34 ~10 ~-5 minecraft:blue_concrete
fill ~34 ~ ~5 ~34 ~10 ~5 minecraft:blue_concrete
fill ~34 ~10 ~-5 ~34 ~10 ~5 minecraft:blue_concrete
fill ~34 ~8 ~-4 ~34 ~9 ~4 minecraft:light_blue_stained_glass
setblock ~34 ~10 ~-4 minecraft:sea_lantern
setblock ~34 ~10 ~ minecraft:sea_lantern
setblock ~34 ~10 ~4 minecraft:sea_lantern

# === RAILS ===
# -- STATION CURVE --
setblock ~ ~3 ~ minecraft:rail
# -- STATION LAUNCH --
setblock ~1 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~2 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~3 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~4 ~3 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~5 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~6 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~7 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~8 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~9 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~10 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~11 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~12 ~3 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~13 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~14 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~15 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~16 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~17 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~18 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~19 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~20 ~3 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~21 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~22 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~23 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~24 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~25 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~26 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~27 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~28 ~3 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~29 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~30 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~31 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~32 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~33 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~34 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~35 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~36 ~3 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~37 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~38 ~3 ~ minecraft:rail ["rail_direction" = 1]
setblock ~39 ~3 ~ minecraft:rail ["rail_direction" = 1]
# -- MAIN LIFT --
setblock ~40 ~3 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~41 ~4 ~ minecraft:rail ["rail_direction" = 2]
setblock ~42 ~5 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~43 ~6 ~ minecraft:rail ["rail_direction" = 2]
setblock ~44 ~7 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~45 ~8 ~ minecraft:rail ["rail_direction" = 2]
setblock ~46 ~9 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~47 ~10 ~ minecraft:rail ["rail_direction" = 2]
setblock ~48 ~11 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~49 ~12 ~ minecraft:rail ["rail_direction" = 2]
setblock ~50 ~13 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~51 ~14 ~ minecraft:rail ["rail_direction" = 2]
setblock ~52 ~15 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~53 ~16 ~ minecraft:rail ["rail_direction" = 2]
setblock ~54 ~17 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~55 ~18 ~ minecraft:rail ["rail_direction" = 2]
setblock ~56 ~19 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~57 ~20 ~ minecraft:rail ["rail_direction" = 2]
setblock ~58 ~21 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~59 ~22 ~ minecraft:rail ["rail_direction" = 2]
setblock ~60 ~23 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~61 ~24 ~ minecraft:rail ["rail_direction" = 2]
setblock ~62 ~25 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~63 ~26 ~ minecraft:rail ["rail_direction" = 2]
setblock ~64 ~27 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~65 ~28 ~ minecraft:rail ["rail_direction" = 2]
setblock ~66 ~29 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~67 ~30 ~ minecraft:rail ["rail_direction" = 2]
setblock ~68 ~31 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~69 ~32 ~ minecraft:rail ["rail_direction" = 2]
setblock ~70 ~33 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~71 ~34 ~ minecraft:rail ["rail_direction" = 2]
setblock ~72 ~35 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~73 ~36 ~ minecraft:rail ["rail_direction" = 2]
setblock ~74 ~37 ~ minecraft:golden_rail ["rail_direction" = 2]
setblock ~75 ~38 ~ minecraft:rail ["rail_direction" = 2]
# -- CREST --
setblock ~76 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~77 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~78 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~79 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~80 ~39 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~81 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~82 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~83 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~84 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~85 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~86 ~39 ~ minecraft:golden_rail ["rail_direction" = 1]
setblock ~87 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~88 ~39 ~ minecraft:rail ["rail_direction" = 1]
setblock ~89 ~39 ~ minecraft:rail ["rail_direction" = 1]
# -- TOP TURN --
setblock ~90 ~39 ~ minecraft:rail
# -- FIRST DROP --
setblock ~90 ~38 ~1 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~37 ~2 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~36 ~3 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~35 ~4 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~34 ~5 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~33 ~6 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~32 ~7 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~31 ~8 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~30 ~9 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~29 ~10 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~28 ~11 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~27 ~12 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~26 ~13 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~25 ~14 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~24 ~15 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~23 ~16 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~22 ~17 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~21 ~18 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~20 ~19 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~19 ~20 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~18 ~21 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~17 ~22 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~16 ~23 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~15 ~24 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~14 ~25 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~13 ~26 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~12 ~27 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~11 ~28 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~10 ~29 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~9 ~30 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~8 ~31 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~7 ~32 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~6 ~33 minecraft:rail ["rail_direction" = 4]
setblock ~90 ~5 ~34 minecraft:rail ["rail_direction" = 4]
# -- FIRST VALLEY --
setblock ~90 ~5 ~35 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~36 minecraft:golden_rail ["rail_direction" = 0]
setblock ~90 ~5 ~37 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~38 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~39 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~40 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~41 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~42 minecraft:golden_rail ["rail_direction" = 0]
setblock ~90 ~5 ~43 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~44 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~45 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~46 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~47 minecraft:rail ["rail_direction" = 0]
setblock ~90 ~5 ~48 minecraft:golden_rail ["rail_direction" = 0]
setblock ~90 ~5 ~49 minecraft:rail ["rail_direction" = 0]
# -- VALLEY TURN --
setblock ~90 ~5 ~50 minecraft:rail
# -- WEST RUN --
setblock ~89 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~88 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~87 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~86 ~5 ~50 minecraft:golden_rail ["rail_direction" = 1]
setblock ~85 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~84 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~83 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~82 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~81 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~80 ~5 ~50 minecraft:golden_rail ["rail_direction" = 1]
setblock ~79 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~78 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~77 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~76 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~75 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~74 ~5 ~50 minecraft:golden_rail ["rail_direction" = 1]
setblock ~73 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~72 ~5 ~50 minecraft:rail ["rail_direction" = 1]
# -- SECOND LIFT --
setblock ~70 ~5 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~69 ~6 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~68 ~7 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~67 ~8 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~66 ~9 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~65 ~10 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~64 ~11 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~63 ~12 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~62 ~13 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~61 ~14 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~60 ~15 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~59 ~16 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~58 ~17 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~57 ~18 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~56 ~19 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~55 ~20 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~54 ~21 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~53 ~22 ~50 minecraft:rail ["rail_direction" = 3]
setblock ~52 ~23 ~50 minecraft:golden_rail ["rail_direction" = 3]
setblock ~51 ~24 ~50 minecraft:rail ["rail_direction" = 3]
# -- SECOND CREST --
setblock ~50 ~25 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~49 ~25 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~48 ~25 ~50 minecraft:golden_rail ["rail_direction" = 1]
setblock ~47 ~25 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~46 ~25 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~45 ~25 ~50 minecraft:golden_rail ["rail_direction" = 1]
# -- SECOND DROP --
setblock ~44 ~24 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~43 ~23 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~42 ~22 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~41 ~21 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~40 ~20 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~39 ~19 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~38 ~18 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~37 ~17 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~36 ~16 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~35 ~15 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~34 ~14 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~33 ~13 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~32 ~12 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~31 ~11 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~30 ~10 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~29 ~9 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~28 ~8 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~27 ~7 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~26 ~6 ~50 minecraft:rail ["rail_direction" = 2]
setblock ~25 ~5 ~50 minecraft:rail ["rail_direction" = 2]
# -- SECOND VALLEY --
setblock ~24 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~23 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~22 ~5 ~50 minecraft:golden_rail ["rail_direction" = 1]
setblock ~21 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~20 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~19 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~18 ~5 ~50 minecraft:golden_rail ["rail_direction" = 1]
setblock ~17 ~5 ~50 minecraft:rail ["rail_direction" = 1]
setblock ~16 ~5 ~50 minecraft:rail ["rail_direction" = 1]
# -- NORTH TURN --
setblock ~15 ~5 ~50 minecraft:rail
# -- NORTH RUN --
setblock ~15 ~5 ~49 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~48 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~47 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~46 minecraft:golden_rail ["rail_direction" = 0]
setblock ~15 ~5 ~45 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~44 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~43 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~42 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~41 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~40 minecraft:golden_rail ["rail_direction" = 0]
setblock ~15 ~5 ~39 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~38 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~37 minecraft:rail ["rail_direction" = 0]
# -- BUNNY UP --
setblock ~15 ~5 ~35 minecraft:golden_rail ["rail_direction" = 4]
setblock ~15 ~6 ~34 minecraft:rail ["rail_direction" = 4]
setblock ~15 ~7 ~33 minecraft:golden_rail ["rail_direction" = 4]
setblock ~15 ~8 ~32 minecraft:rail ["rail_direction" = 4]
setblock ~15 ~9 ~31 minecraft:golden_rail ["rail_direction" = 4]
setblock ~15 ~10 ~30 minecraft:rail ["rail_direction" = 4]
setblock ~15 ~11 ~29 minecraft:golden_rail ["rail_direction" = 4]
setblock ~15 ~12 ~28 minecraft:rail ["rail_direction" = 4]
setblock ~15 ~13 ~27 minecraft:golden_rail ["rail_direction" = 4]
setblock ~15 ~14 ~26 minecraft:rail ["rail_direction" = 4]
# -- BUNNY CREST --
setblock ~15 ~15 ~25 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~15 ~24 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~15 ~23 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~15 ~22 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~15 ~21 minecraft:rail ["rail_direction" = 0]
# -- BUNNY DROP --
setblock ~15 ~14 ~20 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~13 ~19 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~12 ~18 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~11 ~17 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~10 ~16 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~9 ~15 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~8 ~14 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~7 ~13 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~6 ~12 minecraft:rail ["rail_direction" = 5]
setblock ~15 ~5 ~11 minecraft:rail ["rail_direction" = 5]
# -- NORTH RETURN --
setblock ~15 ~5 ~10 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~9 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~8 minecraft:golden_rail ["rail_direction" = 0]
setblock ~15 ~5 ~7 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~6 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~5 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~4 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~3 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~2 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~1 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~ minecraft:golden_rail ["rail_direction" = 0]
setblock ~15 ~5 ~-1 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-2 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-3 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-4 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-5 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-6 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-7 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-8 minecraft:golden_rail ["rail_direction" = 0]
setblock ~15 ~5 ~-9 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-10 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-11 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-12 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-13 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-14 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-15 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-16 minecraft:golden_rail ["rail_direction" = 0]
setblock ~15 ~5 ~-17 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-18 minecraft:rail ["rail_direction" = 0]
setblock ~15 ~5 ~-19 minecraft:rail ["rail_direction" = 0]
# -- WEST TURN --
setblock ~15 ~5 ~-20 minecraft:rail
# -- WEST RETURN --
setblock ~14 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~13 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~12 ~5 ~-20 minecraft:golden_rail ["rail_direction" = 1]
setblock ~11 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~10 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~9 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~8 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~7 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~6 ~5 ~-20 minecraft:golden_rail ["rail_direction" = 1]
setblock ~5 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~4 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~3 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~2 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
setblock ~1 ~5 ~-20 minecraft:rail ["rail_direction" = 1]
# -- SOUTH TURN --
setblock ~ ~5 ~-20 minecraft:rail
# -- SOUTH RETURN --
setblock ~ ~5 ~-19 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-18 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-17 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-16 minecraft:golden_rail ["rail_direction" = 0]
setblock ~ ~5 ~-15 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-14 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-13 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-12 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-11 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-10 minecraft:golden_rail ["rail_direction" = 0]
setblock ~ ~5 ~-9 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-8 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-7 minecraft:rail ["rail_direction" = 0]
setblock ~ ~5 ~-6 minecraft:rail ["rail_direction" = 0]
# -- FINAL DESCENT --
setblock ~ ~5 ~-5 minecraft:rail ["rail_direction" = 0]
setblock ~ ~4 ~-4 minecraft:rail ["rail_direction" = 4]
# -- STATION APPROACH --
setblock ~ ~3 ~-3 minecraft:rail ["rail_direction" = 4]
setblock ~ ~3 ~-2 minecraft:rail ["rail_direction" = 0]
setblock ~ ~3 ~-1 minecraft:rail ["rail_direction" = 0]

# === STATION DETAILS / VEHICLE START AREA ===
setblock ~2 ~3 ~-2 minecraft:sea_lantern
setblock ~8 ~3 ~-2 minecraft:sea_lantern
setblock ~14 ~3 ~-2 minecraft:sea_lantern
setblock ~20 ~3 ~-2 minecraft:sea_lantern
setblock ~3 ~3 ~3 minecraft:chest

# Build complete. Place a minecart on the station track and ride east.
say [MegaCoaster] build_complete
