# ================================================================
# MEGA THEME PARK WATER SLIDE
# Minecraft Bedrock Edition
# BEDROCK: Put this file in your Behavior Pack's functions folder.
# Run at the desired origin while facing a cardinal direction and looking horizontally.
# Coordinates use ^left, ^up, ^forward. Approx footprint: left -35..41, forward -37..63, height about 57 blocks.
# WARNING: This build overwrites blocks in its footprint.
# Cheats must be enabled. Commands inside this file intentionally have no leading /.
# ================================================================

tellraw @a {"rawtext":[{"text":"§b§l[Mega Slide] §r§fConstruction started!"}]}

# --- PLAZA / ENTRANCE ---
fill ^-18 ^-1 ^-18 ^18 ^-1 ^18 smooth_stone
fill ^-14 ^0 ^-14 ^14 ^0 ^14 light_gray_concrete
fill ^-12 ^0 ^-12 ^12 ^0 ^12 white_concrete
fill ^-10 ^0 ^-10 ^10 ^0 ^10 cyan_concrete
fill ^-8 ^0 ^-8 ^8 ^0 ^8 smooth_quartz
fill ^-4 ^0 ^10 ^4 ^0 ^40 smooth_stone
fill ^-3 ^1 ^14 ^-3 ^3 ^18 iron_bars
fill ^3 ^1 ^14 ^3 ^3 ^18 iron_bars
fill ^-2 ^1 ^17 ^2 ^1 ^17 yellow_concrete
fill ^-2 ^2 ^17 ^2 ^2 ^17 red_concrete
fill ^-2 ^3 ^17 ^2 ^3 ^17 yellow_concrete
fill ^-6 ^0 ^13 ^-6 ^7 ^13 white_concrete
setblock ^-6 ^8 ^13 sea_lantern
fill ^6 ^0 ^13 ^6 ^7 ^13 white_concrete
setblock ^6 ^8 ^13 sea_lantern
fill ^-6 ^7 ^13 ^6 ^7 ^13 light_blue_concrete
fill ^-5 ^8 ^13 ^5 ^8 ^13 blue_stained_glass

# --- 50-BLOCK SLIDE TOWER ---
fill ^-9 ^-1 ^-9 ^9 ^-1 ^9 dark_prismarine
fill ^-7 ^0 ^-7 ^-5 ^50 ^-5 white_concrete
fill ^5 ^0 ^-7 ^7 ^50 ^-5 white_concrete
fill ^-7 ^0 ^5 ^-5 ^50 ^7 white_concrete
fill ^5 ^0 ^5 ^7 ^50 ^7 white_concrete
fill ^-8 ^10 ^-8 ^8 ^10 ^8 smooth_quartz
fill ^-3 ^10 ^-3 ^3 ^10 ^3 air
fill ^-8 ^11 ^-8 ^8 ^12 ^-8 blue_stained_glass
fill ^-8 ^11 ^8 ^8 ^12 ^8 blue_stained_glass
fill ^-8 ^11 ^-7 ^-8 ^12 ^7 blue_stained_glass
fill ^8 ^11 ^-7 ^8 ^12 ^7 blue_stained_glass
fill ^-7 ^9 ^-7 ^7 ^9 ^-5 light_blue_concrete
fill ^-7 ^9 ^5 ^7 ^9 ^7 cyan_concrete
fill ^-8 ^20 ^-8 ^8 ^20 ^8 smooth_quartz
fill ^-3 ^20 ^-3 ^3 ^20 ^3 air
fill ^-8 ^21 ^-8 ^8 ^22 ^-8 blue_stained_glass
fill ^-8 ^21 ^8 ^8 ^22 ^8 blue_stained_glass
fill ^-8 ^21 ^-7 ^-8 ^22 ^7 blue_stained_glass
fill ^8 ^21 ^-7 ^8 ^22 ^7 blue_stained_glass
fill ^-7 ^19 ^-7 ^7 ^19 ^-5 light_blue_concrete
fill ^-7 ^19 ^5 ^7 ^19 ^7 cyan_concrete
fill ^-8 ^30 ^-8 ^8 ^30 ^8 smooth_quartz
fill ^-3 ^30 ^-3 ^3 ^30 ^3 air
fill ^-8 ^31 ^-8 ^8 ^32 ^-8 blue_stained_glass
fill ^-8 ^31 ^8 ^8 ^32 ^8 blue_stained_glass
fill ^-8 ^31 ^-7 ^-8 ^32 ^7 blue_stained_glass
fill ^8 ^31 ^-7 ^8 ^32 ^7 blue_stained_glass
fill ^-7 ^29 ^-7 ^7 ^29 ^-5 light_blue_concrete
fill ^-7 ^29 ^5 ^7 ^29 ^7 cyan_concrete
fill ^-8 ^40 ^-8 ^8 ^40 ^8 smooth_quartz
fill ^-3 ^40 ^-3 ^3 ^40 ^3 air
fill ^-8 ^41 ^-8 ^8 ^42 ^-8 blue_stained_glass
fill ^-8 ^41 ^8 ^8 ^42 ^8 blue_stained_glass
fill ^-8 ^41 ^-7 ^-8 ^42 ^7 blue_stained_glass
fill ^8 ^41 ^-7 ^8 ^42 ^7 blue_stained_glass
fill ^-7 ^39 ^-7 ^7 ^39 ^-5 light_blue_concrete
fill ^-7 ^39 ^5 ^7 ^39 ^7 cyan_concrete
fill ^-8 ^50 ^-8 ^8 ^50 ^8 smooth_quartz
fill ^-3 ^50 ^-3 ^3 ^50 ^3 air
fill ^-8 ^51 ^-8 ^8 ^52 ^-8 blue_stained_glass
fill ^-8 ^51 ^8 ^8 ^52 ^8 blue_stained_glass
fill ^-8 ^51 ^-7 ^-8 ^52 ^7 blue_stained_glass
fill ^8 ^51 ^-7 ^8 ^52 ^7 blue_stained_glass
fill ^-7 ^49 ^-7 ^7 ^49 ^-5 light_blue_concrete
fill ^-7 ^49 ^5 ^7 ^49 ^7 cyan_concrete
fill ^-7 ^2 ^-8 ^-1 ^3 ^-8 cyan_concrete
fill ^1 ^4 ^-8 ^7 ^5 ^-8 light_blue_concrete
fill ^-7 ^2 ^8 ^-1 ^3 ^8 light_blue_concrete
fill ^1 ^4 ^8 ^7 ^5 ^8 cyan_concrete
fill ^-5 ^6 ^-8 ^1 ^7 ^-8 cyan_concrete
fill ^-1 ^8 ^-8 ^5 ^9 ^-8 light_blue_concrete
fill ^-5 ^6 ^8 ^1 ^7 ^8 light_blue_concrete
fill ^-1 ^8 ^8 ^5 ^9 ^8 cyan_concrete
fill ^-7 ^10 ^-8 ^-1 ^11 ^-8 cyan_concrete
fill ^1 ^12 ^-8 ^7 ^13 ^-8 light_blue_concrete
fill ^-7 ^10 ^8 ^-1 ^11 ^8 light_blue_concrete
fill ^1 ^12 ^8 ^7 ^13 ^8 cyan_concrete
fill ^-5 ^14 ^-8 ^1 ^15 ^-8 cyan_concrete
fill ^-1 ^16 ^-8 ^5 ^17 ^-8 light_blue_concrete
fill ^-5 ^14 ^8 ^1 ^15 ^8 light_blue_concrete
fill ^-1 ^16 ^8 ^5 ^17 ^8 cyan_concrete
fill ^-7 ^18 ^-8 ^-1 ^19 ^-8 cyan_concrete
fill ^1 ^20 ^-8 ^7 ^21 ^-8 light_blue_concrete
fill ^-7 ^18 ^8 ^-1 ^19 ^8 light_blue_concrete
fill ^1 ^20 ^8 ^7 ^21 ^8 cyan_concrete
fill ^-5 ^22 ^-8 ^1 ^23 ^-8 cyan_concrete
fill ^-1 ^24 ^-8 ^5 ^25 ^-8 light_blue_concrete
fill ^-5 ^22 ^8 ^1 ^23 ^8 light_blue_concrete
fill ^-1 ^24 ^8 ^5 ^25 ^8 cyan_concrete
fill ^-7 ^26 ^-8 ^-1 ^27 ^-8 cyan_concrete
fill ^1 ^28 ^-8 ^7 ^29 ^-8 light_blue_concrete
fill ^-7 ^26 ^8 ^-1 ^27 ^8 light_blue_concrete
fill ^1 ^28 ^8 ^7 ^29 ^8 cyan_concrete
fill ^-5 ^30 ^-8 ^1 ^31 ^-8 cyan_concrete
fill ^-1 ^32 ^-8 ^5 ^33 ^-8 light_blue_concrete
fill ^-5 ^30 ^8 ^1 ^31 ^8 light_blue_concrete
fill ^-1 ^32 ^8 ^5 ^33 ^8 cyan_concrete
fill ^-7 ^34 ^-8 ^-1 ^35 ^-8 cyan_concrete
fill ^1 ^36 ^-8 ^7 ^37 ^-8 light_blue_concrete
fill ^-7 ^34 ^8 ^-1 ^35 ^8 light_blue_concrete
fill ^1 ^36 ^8 ^7 ^37 ^8 cyan_concrete
fill ^-5 ^38 ^-8 ^1 ^39 ^-8 cyan_concrete
fill ^-1 ^40 ^-8 ^5 ^41 ^-8 light_blue_concrete
fill ^-5 ^38 ^8 ^1 ^39 ^8 light_blue_concrete
fill ^-1 ^40 ^8 ^5 ^41 ^8 cyan_concrete
fill ^-7 ^42 ^-8 ^-1 ^43 ^-8 cyan_concrete
fill ^1 ^44 ^-8 ^7 ^45 ^-8 light_blue_concrete
fill ^-7 ^42 ^8 ^-1 ^43 ^8 light_blue_concrete
fill ^1 ^44 ^8 ^7 ^45 ^8 cyan_concrete
fill ^-5 ^46 ^-8 ^1 ^47 ^-8 cyan_concrete
fill ^-1 ^48 ^-8 ^5 ^49 ^-8 light_blue_concrete
fill ^-5 ^46 ^8 ^1 ^47 ^8 light_blue_concrete
fill ^-1 ^48 ^8 ^5 ^49 ^8 cyan_concrete
fill ^-2 ^1 ^-2 ^-2 ^49 ^2 glass
fill ^2 ^1 ^-2 ^2 ^49 ^2 glass
fill ^-1 ^1 ^-2 ^1 ^49 ^-2 glass
fill ^-1 ^1 ^2 ^1 ^49 ^2 glass
fill ^-1 ^1 ^-1 ^1 ^49 ^1 water
fill ^-1 ^0 ^-1 ^1 ^0 ^1 soul_sand
fill ^6 ^49 ^-8 ^12 ^50 ^-4 smooth_quartz
fill ^6 ^51 ^-8 ^12 ^52 ^-8 blue_stained_glass
fill ^6 ^51 ^-4 ^12 ^52 ^-4 blue_stained_glass
fill ^-8 ^51 ^-8 ^-8 ^55 ^-8 white_concrete
fill ^8 ^51 ^-8 ^8 ^55 ^-8 white_concrete
fill ^-8 ^51 ^8 ^-8 ^55 ^8 white_concrete
fill ^8 ^51 ^8 ^8 ^55 ^8 white_concrete
fill ^-9 ^56 ^-9 ^-7 ^56 ^9 red_concrete
fill ^-6 ^56 ^-9 ^-4 ^56 ^9 yellow_concrete
fill ^-3 ^56 ^-9 ^-1 ^56 ^9 red_concrete
fill ^0 ^56 ^-9 ^2 ^56 ^9 yellow_concrete
fill ^3 ^56 ^-9 ^5 ^56 ^9 red_concrete
fill ^6 ^56 ^-9 ^8 ^56 ^9 yellow_concrete
fill ^9 ^56 ^-9 ^9 ^56 ^9 red_concrete

# --- GIANT DESCENDING WATER SLIDE ---
fill ^10 ^49 ^-7 ^10 ^49 ^-5 cyan_concrete
setblock ^10 ^50 ^-8 white_concrete
setblock ^10 ^50 ^-4 white_concrete
setblock ^10 ^51 ^-8 blue_stained_glass
setblock ^10 ^51 ^-4 blue_stained_glass
setblock ^10 ^50 ^-4 sea_lantern
fill ^11 ^49 ^-7 ^11 ^49 ^-5 cyan_concrete
setblock ^11 ^50 ^-8 white_concrete
setblock ^11 ^50 ^-4 white_concrete
setblock ^11 ^51 ^-8 blue_stained_glass
setblock ^11 ^51 ^-4 blue_stained_glass
fill ^12 ^49 ^-7 ^12 ^49 ^-5 cyan_concrete
setblock ^12 ^50 ^-8 white_concrete
setblock ^12 ^50 ^-4 white_concrete
setblock ^12 ^51 ^-8 blue_stained_glass
setblock ^12 ^51 ^-4 blue_stained_glass
fill ^13 ^49 ^-7 ^13 ^49 ^-5 cyan_concrete
setblock ^13 ^50 ^-8 white_concrete
setblock ^13 ^50 ^-4 white_concrete
setblock ^13 ^51 ^-8 blue_stained_glass
setblock ^13 ^51 ^-4 blue_stained_glass
fill ^14 ^49 ^-7 ^14 ^49 ^-5 cyan_concrete
setblock ^14 ^50 ^-8 white_concrete
setblock ^14 ^50 ^-4 white_concrete
setblock ^14 ^51 ^-8 blue_stained_glass
setblock ^14 ^51 ^-4 blue_stained_glass
fill ^15 ^49 ^-7 ^15 ^49 ^-5 cyan_concrete
setblock ^15 ^50 ^-8 white_concrete
setblock ^15 ^50 ^-4 white_concrete
setblock ^15 ^51 ^-8 blue_stained_glass
setblock ^15 ^51 ^-4 blue_stained_glass
fill ^16 ^49 ^-7 ^16 ^49 ^-5 cyan_concrete
setblock ^16 ^50 ^-8 white_concrete
setblock ^16 ^50 ^-4 white_concrete
setblock ^16 ^51 ^-8 blue_stained_glass
setblock ^16 ^51 ^-4 blue_stained_glass
fill ^17 ^49 ^-7 ^17 ^49 ^-5 cyan_concrete
setblock ^17 ^50 ^-8 white_concrete
setblock ^17 ^50 ^-4 white_concrete
setblock ^17 ^51 ^-8 blue_stained_glass
setblock ^17 ^51 ^-4 blue_stained_glass
fill ^18 ^49 ^-7 ^18 ^49 ^-5 cyan_concrete
setblock ^18 ^50 ^-8 white_concrete
setblock ^18 ^50 ^-4 white_concrete
setblock ^18 ^51 ^-8 blue_stained_glass
setblock ^18 ^51 ^-4 blue_stained_glass
fill ^19 ^48 ^-7 ^19 ^48 ^-5 cyan_concrete
setblock ^19 ^49 ^-8 white_concrete
setblock ^19 ^49 ^-4 white_concrete
setblock ^19 ^50 ^-8 blue_stained_glass
setblock ^19 ^50 ^-4 blue_stained_glass
fill ^20 ^48 ^-7 ^20 ^48 ^-5 cyan_concrete
setblock ^20 ^49 ^-8 white_concrete
setblock ^20 ^49 ^-4 white_concrete
setblock ^20 ^50 ^-8 blue_stained_glass
setblock ^20 ^50 ^-4 blue_stained_glass
fill ^21 ^48 ^-7 ^21 ^48 ^-5 cyan_concrete
setblock ^21 ^49 ^-8 white_concrete
setblock ^21 ^49 ^-4 white_concrete
setblock ^21 ^50 ^-8 blue_stained_glass
setblock ^21 ^50 ^-4 blue_stained_glass
fill ^22 ^48 ^-7 ^22 ^48 ^-5 cyan_concrete
setblock ^22 ^49 ^-8 white_concrete
setblock ^22 ^49 ^-4 white_concrete
setblock ^22 ^50 ^-8 blue_stained_glass
setblock ^22 ^50 ^-4 blue_stained_glass
fill ^23 ^48 ^-7 ^23 ^48 ^-5 cyan_concrete
setblock ^23 ^49 ^-8 white_concrete
setblock ^23 ^49 ^-4 white_concrete
setblock ^23 ^50 ^-8 blue_stained_glass
setblock ^23 ^50 ^-4 blue_stained_glass
fill ^24 ^48 ^-7 ^24 ^48 ^-5 cyan_concrete
setblock ^24 ^49 ^-8 white_concrete
setblock ^24 ^49 ^-4 white_concrete
setblock ^24 ^50 ^-8 blue_stained_glass
setblock ^24 ^50 ^-4 blue_stained_glass
fill ^25 ^48 ^-7 ^25 ^48 ^-5 cyan_concrete
setblock ^25 ^49 ^-8 white_concrete
setblock ^25 ^49 ^-4 white_concrete
setblock ^25 ^50 ^-8 blue_stained_glass
setblock ^25 ^50 ^-4 blue_stained_glass
setblock ^25 ^49 ^-4 sea_lantern
fill ^26 ^48 ^-7 ^26 ^48 ^-5 cyan_concrete
setblock ^26 ^49 ^-8 light_blue_concrete
setblock ^26 ^49 ^-4 light_blue_concrete
setblock ^26 ^50 ^-8 blue_stained_glass
setblock ^26 ^50 ^-4 blue_stained_glass
fill ^27 ^48 ^-7 ^27 ^48 ^-5 cyan_concrete
setblock ^27 ^49 ^-8 light_blue_concrete
setblock ^27 ^49 ^-4 light_blue_concrete
setblock ^27 ^50 ^-8 blue_stained_glass
setblock ^27 ^50 ^-4 blue_stained_glass
fill ^28 ^47 ^-7 ^28 ^47 ^-5 cyan_concrete
setblock ^28 ^48 ^-8 light_blue_concrete
setblock ^28 ^48 ^-4 light_blue_concrete
setblock ^28 ^49 ^-8 blue_stained_glass
setblock ^28 ^49 ^-4 blue_stained_glass
fill ^29 ^47 ^-7 ^29 ^47 ^-5 cyan_concrete
setblock ^29 ^48 ^-8 light_blue_concrete
setblock ^29 ^48 ^-4 light_blue_concrete
setblock ^29 ^49 ^-8 blue_stained_glass
setblock ^29 ^49 ^-4 blue_stained_glass
fill ^30 ^47 ^-7 ^30 ^47 ^-5 cyan_concrete
setblock ^30 ^48 ^-8 light_blue_concrete
setblock ^30 ^48 ^-4 light_blue_concrete
setblock ^30 ^49 ^-8 blue_stained_glass
setblock ^30 ^49 ^-4 blue_stained_glass
fill ^31 ^47 ^-7 ^31 ^47 ^-5 cyan_concrete
setblock ^31 ^48 ^-8 light_blue_concrete
setblock ^31 ^48 ^-4 light_blue_concrete
setblock ^31 ^49 ^-8 blue_stained_glass
setblock ^31 ^49 ^-4 blue_stained_glass
fill ^32 ^47 ^-7 ^32 ^47 ^-5 cyan_concrete
setblock ^32 ^48 ^-8 light_blue_concrete
setblock ^32 ^48 ^-4 light_blue_concrete
setblock ^32 ^49 ^-8 blue_stained_glass
setblock ^32 ^49 ^-4 blue_stained_glass
fill ^33 ^47 ^-7 ^33 ^47 ^-5 cyan_concrete
setblock ^33 ^48 ^-8 light_blue_concrete
setblock ^33 ^48 ^-4 light_blue_concrete
setblock ^33 ^49 ^-8 blue_stained_glass
setblock ^33 ^49 ^-4 blue_stained_glass
fill ^34 ^47 ^-7 ^34 ^47 ^-5 light_blue_concrete
setblock ^34 ^48 ^-8 light_blue_concrete
setblock ^34 ^48 ^-4 light_blue_concrete
setblock ^34 ^49 ^-8 blue_stained_glass
setblock ^34 ^49 ^-4 blue_stained_glass
fill ^33 ^47 ^-5 ^35 ^47 ^-5 light_blue_concrete
setblock ^32 ^48 ^-5 light_blue_concrete
setblock ^36 ^48 ^-5 light_blue_concrete
setblock ^32 ^49 ^-5 blue_stained_glass
setblock ^36 ^49 ^-5 blue_stained_glass
fill ^33 ^47 ^-4 ^35 ^47 ^-4 light_blue_concrete
setblock ^32 ^48 ^-4 light_blue_concrete
setblock ^36 ^48 ^-4 light_blue_concrete
setblock ^32 ^49 ^-4 blue_stained_glass
setblock ^36 ^49 ^-4 blue_stained_glass
fill ^33 ^46 ^-3 ^35 ^46 ^-3 light_blue_concrete
setblock ^32 ^47 ^-3 light_blue_concrete
setblock ^36 ^47 ^-3 light_blue_concrete
setblock ^32 ^48 ^-3 blue_stained_glass
setblock ^36 ^48 ^-3 blue_stained_glass
fill ^33 ^46 ^-2 ^35 ^46 ^-2 light_blue_concrete
setblock ^32 ^47 ^-2 light_blue_concrete
setblock ^36 ^47 ^-2 light_blue_concrete
setblock ^32 ^48 ^-2 blue_stained_glass
setblock ^36 ^48 ^-2 blue_stained_glass
fill ^33 ^46 ^-1 ^35 ^46 ^-1 light_blue_concrete
setblock ^32 ^47 ^-1 light_blue_concrete
setblock ^36 ^47 ^-1 light_blue_concrete
setblock ^32 ^48 ^-1 blue_stained_glass
setblock ^36 ^48 ^-1 blue_stained_glass
fill ^33 ^46 ^0 ^35 ^46 ^0 light_blue_concrete
setblock ^32 ^47 ^0 light_blue_concrete
setblock ^36 ^47 ^0 light_blue_concrete
setblock ^32 ^48 ^0 blue_stained_glass
setblock ^36 ^48 ^0 blue_stained_glass
setblock ^36 ^47 ^0 sea_lantern
fill ^33 ^46 ^1 ^35 ^46 ^1 light_blue_concrete
setblock ^32 ^47 ^1 light_blue_concrete
setblock ^36 ^47 ^1 light_blue_concrete
setblock ^32 ^48 ^1 blue_stained_glass
setblock ^36 ^48 ^1 blue_stained_glass
fill ^33 ^46 ^2 ^35 ^46 ^2 light_blue_concrete
setblock ^32 ^47 ^2 white_concrete
setblock ^36 ^47 ^2 white_concrete
setblock ^32 ^48 ^2 blue_stained_glass
setblock ^36 ^48 ^2 blue_stained_glass
fill ^33 ^46 ^3 ^35 ^46 ^3 light_blue_concrete
setblock ^32 ^47 ^3 white_concrete
setblock ^36 ^47 ^3 white_concrete
setblock ^32 ^48 ^3 blue_stained_glass
setblock ^36 ^48 ^3 blue_stained_glass
fill ^33 ^46 ^4 ^35 ^46 ^4 light_blue_concrete
setblock ^32 ^47 ^4 white_concrete
setblock ^36 ^47 ^4 white_concrete
setblock ^32 ^48 ^4 blue_stained_glass
setblock ^36 ^48 ^4 blue_stained_glass
fill ^33 ^46 ^5 ^35 ^46 ^5 light_blue_concrete
setblock ^32 ^47 ^5 white_concrete
setblock ^36 ^47 ^5 white_concrete
setblock ^32 ^48 ^5 blue_stained_glass
setblock ^36 ^48 ^5 blue_stained_glass
fill ^33 ^45 ^6 ^35 ^45 ^6 light_blue_concrete
setblock ^32 ^46 ^6 white_concrete
setblock ^36 ^46 ^6 white_concrete
setblock ^32 ^47 ^6 blue_stained_glass
setblock ^36 ^47 ^6 blue_stained_glass
fill ^33 ^45 ^7 ^35 ^45 ^7 light_blue_concrete
setblock ^32 ^46 ^7 white_concrete
setblock ^36 ^46 ^7 white_concrete
setblock ^32 ^47 ^7 blue_stained_glass
setblock ^36 ^47 ^7 blue_stained_glass
fill ^33 ^45 ^8 ^35 ^45 ^8 light_blue_concrete
setblock ^32 ^46 ^8 white_concrete
setblock ^36 ^46 ^8 white_concrete
setblock ^32 ^47 ^8 blue_stained_glass
setblock ^36 ^47 ^8 blue_stained_glass
fill ^33 ^45 ^9 ^35 ^45 ^9 light_blue_concrete
setblock ^32 ^46 ^9 white_concrete
setblock ^36 ^46 ^9 white_concrete
setblock ^32 ^47 ^9 blue_stained_glass
setblock ^36 ^47 ^9 blue_stained_glass
fill ^33 ^45 ^10 ^35 ^45 ^10 light_blue_concrete
setblock ^32 ^46 ^10 white_concrete
setblock ^36 ^46 ^10 white_concrete
setblock ^32 ^47 ^10 blue_stained_glass
setblock ^36 ^47 ^10 blue_stained_glass
fill ^33 ^45 ^11 ^35 ^45 ^11 light_blue_concrete
setblock ^32 ^46 ^11 white_concrete
setblock ^36 ^46 ^11 white_concrete
setblock ^32 ^47 ^11 blue_stained_glass
setblock ^36 ^47 ^11 blue_stained_glass
fill ^33 ^45 ^12 ^35 ^45 ^12 light_blue_concrete
setblock ^32 ^46 ^12 white_concrete
setblock ^36 ^46 ^12 white_concrete
setblock ^32 ^47 ^12 blue_stained_glass
setblock ^36 ^47 ^12 blue_stained_glass
fill ^33 ^45 ^13 ^35 ^45 ^13 light_blue_concrete
setblock ^32 ^46 ^13 white_concrete
setblock ^36 ^46 ^13 white_concrete
setblock ^32 ^47 ^13 blue_stained_glass
setblock ^36 ^47 ^13 blue_stained_glass
fill ^33 ^45 ^14 ^35 ^45 ^14 light_blue_concrete
setblock ^32 ^46 ^14 white_concrete
setblock ^36 ^46 ^14 white_concrete
setblock ^32 ^47 ^14 blue_stained_glass
setblock ^36 ^47 ^14 blue_stained_glass
fill ^33 ^44 ^15 ^35 ^44 ^15 light_blue_concrete
setblock ^32 ^45 ^15 white_concrete
setblock ^36 ^45 ^15 white_concrete
setblock ^32 ^46 ^15 blue_stained_glass
setblock ^36 ^46 ^15 blue_stained_glass
setblock ^36 ^45 ^15 sea_lantern
fill ^33 ^44 ^16 ^35 ^44 ^16 light_blue_concrete
setblock ^32 ^45 ^16 white_concrete
setblock ^36 ^45 ^16 white_concrete
setblock ^32 ^46 ^16 blue_stained_glass
setblock ^36 ^46 ^16 blue_stained_glass
fill ^33 ^44 ^17 ^35 ^44 ^17 light_blue_concrete
setblock ^32 ^45 ^17 white_concrete
setblock ^36 ^45 ^17 white_concrete
setblock ^32 ^46 ^17 blue_stained_glass
setblock ^36 ^46 ^17 blue_stained_glass
fill ^33 ^44 ^18 ^35 ^44 ^18 cyan_concrete
setblock ^32 ^45 ^18 light_blue_concrete
setblock ^36 ^45 ^18 light_blue_concrete
setblock ^32 ^46 ^18 blue_stained_glass
setblock ^36 ^46 ^18 blue_stained_glass
fill ^33 ^44 ^19 ^35 ^44 ^19 cyan_concrete
setblock ^32 ^45 ^19 light_blue_concrete
setblock ^36 ^45 ^19 light_blue_concrete
setblock ^32 ^46 ^19 blue_stained_glass
setblock ^36 ^46 ^19 blue_stained_glass
fill ^33 ^44 ^20 ^35 ^44 ^20 cyan_concrete
setblock ^32 ^45 ^20 light_blue_concrete
setblock ^36 ^45 ^20 light_blue_concrete
setblock ^32 ^46 ^20 blue_stained_glass
setblock ^36 ^46 ^20 blue_stained_glass
fill ^33 ^44 ^21 ^35 ^44 ^21 cyan_concrete
setblock ^32 ^45 ^21 light_blue_concrete
setblock ^36 ^45 ^21 light_blue_concrete
setblock ^32 ^46 ^21 blue_stained_glass
setblock ^36 ^46 ^21 blue_stained_glass
fill ^33 ^44 ^22 ^35 ^44 ^22 cyan_concrete
setblock ^32 ^45 ^22 light_blue_concrete
setblock ^36 ^45 ^22 light_blue_concrete
setblock ^32 ^46 ^22 blue_stained_glass
setblock ^36 ^46 ^22 blue_stained_glass
fill ^33 ^44 ^23 ^35 ^44 ^23 cyan_concrete
setblock ^32 ^45 ^23 light_blue_concrete
setblock ^36 ^45 ^23 light_blue_concrete
setblock ^32 ^46 ^23 blue_stained_glass
setblock ^36 ^46 ^23 blue_stained_glass
fill ^33 ^43 ^24 ^35 ^43 ^24 cyan_concrete
setblock ^32 ^44 ^24 light_blue_concrete
setblock ^36 ^44 ^24 light_blue_concrete
setblock ^32 ^45 ^24 blue_stained_glass
setblock ^36 ^45 ^24 blue_stained_glass
fill ^33 ^43 ^25 ^35 ^43 ^25 cyan_concrete
setblock ^32 ^44 ^25 light_blue_concrete
setblock ^36 ^44 ^25 light_blue_concrete
setblock ^32 ^45 ^25 blue_stained_glass
setblock ^36 ^45 ^25 blue_stained_glass
fill ^33 ^43 ^26 ^35 ^43 ^26 cyan_concrete
setblock ^32 ^44 ^26 light_blue_concrete
setblock ^36 ^44 ^26 light_blue_concrete
setblock ^32 ^45 ^26 blue_stained_glass
setblock ^36 ^45 ^26 blue_stained_glass
fill ^33 ^43 ^27 ^35 ^43 ^27 cyan_concrete
setblock ^32 ^44 ^27 light_blue_concrete
setblock ^36 ^44 ^27 light_blue_concrete
setblock ^32 ^45 ^27 blue_stained_glass
setblock ^36 ^45 ^27 blue_stained_glass
fill ^33 ^43 ^28 ^35 ^43 ^28 cyan_concrete
setblock ^32 ^44 ^28 light_blue_concrete
setblock ^36 ^44 ^28 light_blue_concrete
setblock ^32 ^45 ^28 blue_stained_glass
setblock ^36 ^45 ^28 blue_stained_glass
fill ^33 ^43 ^29 ^35 ^43 ^29 cyan_concrete
setblock ^32 ^44 ^29 light_blue_concrete
setblock ^36 ^44 ^29 light_blue_concrete
setblock ^32 ^45 ^29 blue_stained_glass
setblock ^36 ^45 ^29 blue_stained_glass
fill ^33 ^43 ^30 ^35 ^43 ^30 cyan_concrete
setblock ^32 ^44 ^30 light_blue_concrete
setblock ^36 ^44 ^30 light_blue_concrete
setblock ^32 ^45 ^30 blue_stained_glass
setblock ^36 ^45 ^30 blue_stained_glass
setblock ^36 ^44 ^30 sea_lantern
fill ^33 ^43 ^29 ^33 ^43 ^31 cyan_concrete
setblock ^33 ^44 ^28 light_blue_concrete
setblock ^33 ^44 ^32 light_blue_concrete
setblock ^33 ^45 ^28 blue_stained_glass
setblock ^33 ^45 ^32 blue_stained_glass
fill ^32 ^43 ^29 ^32 ^43 ^31 cyan_concrete
setblock ^32 ^44 ^28 light_blue_concrete
setblock ^32 ^44 ^32 light_blue_concrete
setblock ^32 ^45 ^28 blue_stained_glass
setblock ^32 ^45 ^32 blue_stained_glass
fill ^31 ^42 ^29 ^31 ^42 ^31 cyan_concrete
setblock ^31 ^43 ^28 light_blue_concrete
setblock ^31 ^43 ^32 light_blue_concrete
setblock ^31 ^44 ^28 blue_stained_glass
setblock ^31 ^44 ^32 blue_stained_glass
fill ^30 ^42 ^29 ^30 ^42 ^31 cyan_concrete
setblock ^30 ^43 ^28 white_concrete
setblock ^30 ^43 ^32 white_concrete
setblock ^30 ^44 ^28 blue_stained_glass
setblock ^30 ^44 ^32 blue_stained_glass
fill ^29 ^42 ^29 ^29 ^42 ^31 cyan_concrete
setblock ^29 ^43 ^28 white_concrete
setblock ^29 ^43 ^32 white_concrete
setblock ^29 ^44 ^28 blue_stained_glass
setblock ^29 ^44 ^32 blue_stained_glass
fill ^28 ^42 ^29 ^28 ^42 ^31 cyan_concrete
setblock ^28 ^43 ^28 white_concrete
setblock ^28 ^43 ^32 white_concrete
setblock ^28 ^44 ^28 blue_stained_glass
setblock ^28 ^44 ^32 blue_stained_glass
fill ^27 ^42 ^29 ^27 ^42 ^31 cyan_concrete
setblock ^27 ^43 ^28 white_concrete
setblock ^27 ^43 ^32 white_concrete
setblock ^27 ^44 ^28 blue_stained_glass
setblock ^27 ^44 ^32 blue_stained_glass
fill ^26 ^42 ^29 ^26 ^42 ^31 cyan_concrete
setblock ^26 ^43 ^28 white_concrete
setblock ^26 ^43 ^32 white_concrete
setblock ^26 ^44 ^28 blue_stained_glass
setblock ^26 ^44 ^32 blue_stained_glass
fill ^25 ^42 ^29 ^25 ^42 ^31 cyan_concrete
setblock ^25 ^43 ^28 white_concrete
setblock ^25 ^43 ^32 white_concrete
setblock ^25 ^44 ^28 blue_stained_glass
setblock ^25 ^44 ^32 blue_stained_glass
fill ^24 ^42 ^29 ^24 ^42 ^31 cyan_concrete
setblock ^24 ^43 ^28 white_concrete
setblock ^24 ^43 ^32 white_concrete
setblock ^24 ^44 ^28 blue_stained_glass
setblock ^24 ^44 ^32 blue_stained_glass
fill ^23 ^42 ^29 ^23 ^42 ^31 cyan_concrete
setblock ^23 ^43 ^28 white_concrete
setblock ^23 ^43 ^32 white_concrete
setblock ^23 ^44 ^28 blue_stained_glass
setblock ^23 ^44 ^32 blue_stained_glass
fill ^22 ^41 ^29 ^22 ^41 ^31 light_blue_concrete
setblock ^22 ^42 ^28 white_concrete
setblock ^22 ^42 ^32 white_concrete
setblock ^22 ^43 ^28 blue_stained_glass
setblock ^22 ^43 ^32 blue_stained_glass
fill ^21 ^41 ^29 ^21 ^41 ^31 light_blue_concrete
setblock ^21 ^42 ^28 white_concrete
setblock ^21 ^42 ^32 white_concrete
setblock ^21 ^43 ^28 blue_stained_glass
setblock ^21 ^43 ^32 blue_stained_glass
fill ^20 ^41 ^29 ^20 ^41 ^31 light_blue_concrete
setblock ^20 ^42 ^28 white_concrete
setblock ^20 ^42 ^32 white_concrete
setblock ^20 ^43 ^28 blue_stained_glass
setblock ^20 ^43 ^32 blue_stained_glass
fill ^19 ^41 ^29 ^19 ^41 ^31 light_blue_concrete
setblock ^19 ^42 ^28 white_concrete
setblock ^19 ^42 ^32 white_concrete
setblock ^19 ^43 ^28 blue_stained_glass
setblock ^19 ^43 ^32 blue_stained_glass
setblock ^19 ^42 ^32 sea_lantern
fill ^18 ^41 ^29 ^18 ^41 ^31 light_blue_concrete
setblock ^18 ^42 ^28 white_concrete
setblock ^18 ^42 ^32 white_concrete
setblock ^18 ^43 ^28 blue_stained_glass
setblock ^18 ^43 ^32 blue_stained_glass
fill ^17 ^41 ^29 ^17 ^41 ^31 light_blue_concrete
setblock ^17 ^42 ^28 white_concrete
setblock ^17 ^42 ^32 white_concrete
setblock ^17 ^43 ^28 blue_stained_glass
setblock ^17 ^43 ^32 blue_stained_glass
fill ^16 ^41 ^29 ^16 ^41 ^31 light_blue_concrete
setblock ^16 ^42 ^28 white_concrete
setblock ^16 ^42 ^32 white_concrete
setblock ^16 ^43 ^28 blue_stained_glass
setblock ^16 ^43 ^32 blue_stained_glass
fill ^15 ^41 ^29 ^15 ^41 ^31 light_blue_concrete
setblock ^15 ^42 ^28 white_concrete
setblock ^15 ^42 ^32 white_concrete
setblock ^15 ^43 ^28 blue_stained_glass
setblock ^15 ^43 ^32 blue_stained_glass
fill ^14 ^41 ^29 ^14 ^41 ^31 light_blue_concrete
setblock ^14 ^42 ^28 light_blue_concrete
setblock ^14 ^42 ^32 light_blue_concrete
setblock ^14 ^43 ^28 blue_stained_glass
setblock ^14 ^43 ^32 blue_stained_glass
fill ^13 ^40 ^29 ^13 ^40 ^31 light_blue_concrete
setblock ^13 ^41 ^28 light_blue_concrete
setblock ^13 ^41 ^32 light_blue_concrete
setblock ^13 ^42 ^28 blue_stained_glass
setblock ^13 ^42 ^32 blue_stained_glass
fill ^12 ^40 ^29 ^12 ^40 ^31 light_blue_concrete
setblock ^12 ^41 ^28 light_blue_concrete
setblock ^12 ^41 ^32 light_blue_concrete
setblock ^12 ^42 ^28 blue_stained_glass
setblock ^12 ^42 ^32 blue_stained_glass
fill ^11 ^40 ^29 ^11 ^40 ^31 light_blue_concrete
setblock ^11 ^41 ^28 light_blue_concrete
setblock ^11 ^41 ^32 light_blue_concrete
setblock ^11 ^42 ^28 blue_stained_glass
setblock ^11 ^42 ^32 blue_stained_glass
fill ^10 ^40 ^29 ^10 ^40 ^31 light_blue_concrete
setblock ^10 ^41 ^28 light_blue_concrete
setblock ^10 ^41 ^32 light_blue_concrete
setblock ^10 ^42 ^28 blue_stained_glass
setblock ^10 ^42 ^32 blue_stained_glass
fill ^9 ^40 ^29 ^9 ^40 ^31 light_blue_concrete
setblock ^9 ^41 ^28 light_blue_concrete
setblock ^9 ^41 ^32 light_blue_concrete
setblock ^9 ^42 ^28 blue_stained_glass
setblock ^9 ^42 ^32 blue_stained_glass
fill ^8 ^40 ^29 ^8 ^40 ^31 light_blue_concrete
setblock ^8 ^41 ^28 light_blue_concrete
setblock ^8 ^41 ^32 light_blue_concrete
setblock ^8 ^42 ^28 blue_stained_glass
setblock ^8 ^42 ^32 blue_stained_glass
fill ^7 ^40 ^29 ^7 ^40 ^31 light_blue_concrete
setblock ^7 ^41 ^28 light_blue_concrete
setblock ^7 ^41 ^32 light_blue_concrete
setblock ^7 ^42 ^28 blue_stained_glass
setblock ^7 ^42 ^32 blue_stained_glass
fill ^6 ^40 ^29 ^6 ^40 ^31 light_blue_concrete
setblock ^6 ^41 ^28 light_blue_concrete
setblock ^6 ^41 ^32 light_blue_concrete
setblock ^6 ^42 ^28 blue_stained_glass
setblock ^6 ^42 ^32 blue_stained_glass
fill ^5 ^40 ^29 ^5 ^40 ^31 light_blue_concrete
setblock ^5 ^41 ^28 light_blue_concrete
setblock ^5 ^41 ^32 light_blue_concrete
setblock ^5 ^42 ^28 blue_stained_glass
setblock ^5 ^42 ^32 blue_stained_glass
fill ^4 ^39 ^29 ^4 ^39 ^31 light_blue_concrete
setblock ^4 ^40 ^28 light_blue_concrete
setblock ^4 ^40 ^32 light_blue_concrete
setblock ^4 ^41 ^28 blue_stained_glass
setblock ^4 ^41 ^32 blue_stained_glass
setblock ^4 ^40 ^32 sea_lantern
fill ^3 ^39 ^29 ^3 ^39 ^31 light_blue_concrete
setblock ^3 ^40 ^28 light_blue_concrete
setblock ^3 ^40 ^32 light_blue_concrete
setblock ^3 ^41 ^28 blue_stained_glass
setblock ^3 ^41 ^32 blue_stained_glass
fill ^2 ^39 ^29 ^2 ^39 ^31 light_blue_concrete
setblock ^2 ^40 ^28 light_blue_concrete
setblock ^2 ^40 ^32 light_blue_concrete
setblock ^2 ^41 ^28 blue_stained_glass
setblock ^2 ^41 ^32 blue_stained_glass
fill ^1 ^39 ^29 ^1 ^39 ^31 light_blue_concrete
setblock ^1 ^40 ^28 light_blue_concrete
setblock ^1 ^40 ^32 light_blue_concrete
setblock ^1 ^41 ^28 blue_stained_glass
setblock ^1 ^41 ^32 blue_stained_glass
fill ^0 ^39 ^29 ^0 ^39 ^31 light_blue_concrete
setblock ^0 ^40 ^28 light_blue_concrete
setblock ^0 ^40 ^32 light_blue_concrete
setblock ^0 ^41 ^28 blue_stained_glass
setblock ^0 ^41 ^32 blue_stained_glass
fill ^-1 ^39 ^29 ^-1 ^39 ^31 light_blue_concrete
setblock ^-1 ^40 ^28 light_blue_concrete
setblock ^-1 ^40 ^32 light_blue_concrete
setblock ^-1 ^41 ^28 blue_stained_glass
setblock ^-1 ^41 ^32 blue_stained_glass
fill ^-2 ^39 ^29 ^-2 ^39 ^31 cyan_concrete
setblock ^-2 ^40 ^28 white_concrete
setblock ^-2 ^40 ^32 white_concrete
setblock ^-2 ^41 ^28 blue_stained_glass
setblock ^-2 ^41 ^32 blue_stained_glass
fill ^-3 ^39 ^29 ^-3 ^39 ^31 cyan_concrete
setblock ^-3 ^40 ^28 white_concrete
setblock ^-3 ^40 ^32 white_concrete
setblock ^-3 ^41 ^28 blue_stained_glass
setblock ^-3 ^41 ^32 blue_stained_glass
fill ^-4 ^39 ^29 ^-4 ^39 ^31 cyan_concrete
setblock ^-4 ^40 ^28 white_concrete
setblock ^-4 ^40 ^32 white_concrete
setblock ^-4 ^41 ^28 blue_stained_glass
setblock ^-4 ^41 ^32 blue_stained_glass
fill ^-5 ^38 ^29 ^-5 ^38 ^31 cyan_concrete
setblock ^-5 ^39 ^28 white_concrete
setblock ^-5 ^39 ^32 white_concrete
setblock ^-5 ^40 ^28 blue_stained_glass
setblock ^-5 ^40 ^32 blue_stained_glass
fill ^-6 ^38 ^29 ^-6 ^38 ^31 cyan_concrete
setblock ^-6 ^39 ^28 white_concrete
setblock ^-6 ^39 ^32 white_concrete
setblock ^-6 ^40 ^28 blue_stained_glass
setblock ^-6 ^40 ^32 blue_stained_glass
fill ^-7 ^38 ^29 ^-7 ^38 ^31 cyan_concrete
setblock ^-7 ^39 ^28 white_concrete
setblock ^-7 ^39 ^32 white_concrete
setblock ^-7 ^40 ^28 blue_stained_glass
setblock ^-7 ^40 ^32 blue_stained_glass
fill ^-8 ^38 ^29 ^-8 ^38 ^31 cyan_concrete
setblock ^-8 ^39 ^28 white_concrete
setblock ^-8 ^39 ^32 white_concrete
setblock ^-8 ^40 ^28 blue_stained_glass
setblock ^-8 ^40 ^32 blue_stained_glass
fill ^-9 ^38 ^29 ^-9 ^38 ^31 cyan_concrete
setblock ^-9 ^39 ^28 white_concrete
setblock ^-9 ^39 ^32 white_concrete
setblock ^-9 ^40 ^28 blue_stained_glass
setblock ^-9 ^40 ^32 blue_stained_glass
fill ^-10 ^38 ^29 ^-10 ^38 ^31 cyan_concrete
setblock ^-10 ^39 ^28 white_concrete
setblock ^-10 ^39 ^32 white_concrete
setblock ^-10 ^40 ^28 blue_stained_glass
setblock ^-10 ^40 ^32 blue_stained_glass
fill ^-11 ^38 ^29 ^-11 ^38 ^31 cyan_concrete
setblock ^-11 ^39 ^28 white_concrete
setblock ^-11 ^39 ^32 white_concrete
setblock ^-11 ^40 ^28 blue_stained_glass
setblock ^-11 ^40 ^32 blue_stained_glass
setblock ^-11 ^39 ^32 sea_lantern
fill ^-12 ^38 ^29 ^-12 ^38 ^31 cyan_concrete
setblock ^-12 ^39 ^28 white_concrete
setblock ^-12 ^39 ^32 white_concrete
setblock ^-12 ^40 ^28 blue_stained_glass
setblock ^-12 ^40 ^32 blue_stained_glass
fill ^-13 ^38 ^29 ^-13 ^38 ^31 cyan_concrete
setblock ^-13 ^39 ^28 white_concrete
setblock ^-13 ^39 ^32 white_concrete
setblock ^-13 ^40 ^28 blue_stained_glass
setblock ^-13 ^40 ^32 blue_stained_glass
fill ^-14 ^37 ^29 ^-14 ^37 ^31 cyan_concrete
setblock ^-14 ^38 ^28 white_concrete
setblock ^-14 ^38 ^32 white_concrete
setblock ^-14 ^39 ^28 blue_stained_glass
setblock ^-14 ^39 ^32 blue_stained_glass
fill ^-15 ^37 ^29 ^-15 ^37 ^31 cyan_concrete
setblock ^-15 ^38 ^28 white_concrete
setblock ^-15 ^38 ^32 white_concrete
setblock ^-15 ^39 ^28 blue_stained_glass
setblock ^-15 ^39 ^32 blue_stained_glass
fill ^-16 ^37 ^29 ^-16 ^37 ^31 cyan_concrete
setblock ^-16 ^38 ^28 white_concrete
setblock ^-16 ^38 ^32 white_concrete
setblock ^-16 ^39 ^28 blue_stained_glass
setblock ^-16 ^39 ^32 blue_stained_glass
fill ^-17 ^37 ^29 ^-17 ^37 ^31 cyan_concrete
setblock ^-17 ^38 ^28 white_concrete
setblock ^-17 ^38 ^32 white_concrete
setblock ^-17 ^39 ^28 blue_stained_glass
setblock ^-17 ^39 ^32 blue_stained_glass
fill ^-18 ^37 ^29 ^-18 ^37 ^31 cyan_concrete
setblock ^-18 ^38 ^28 light_blue_concrete
setblock ^-18 ^38 ^32 light_blue_concrete
setblock ^-18 ^39 ^28 blue_stained_glass
setblock ^-18 ^39 ^32 blue_stained_glass
fill ^-19 ^37 ^29 ^-19 ^37 ^31 cyan_concrete
setblock ^-19 ^38 ^28 light_blue_concrete
setblock ^-19 ^38 ^32 light_blue_concrete
setblock ^-19 ^39 ^28 blue_stained_glass
setblock ^-19 ^39 ^32 blue_stained_glass
fill ^-20 ^37 ^29 ^-20 ^37 ^31 cyan_concrete
setblock ^-20 ^38 ^28 light_blue_concrete
setblock ^-20 ^38 ^32 light_blue_concrete
setblock ^-20 ^39 ^28 blue_stained_glass
setblock ^-20 ^39 ^32 blue_stained_glass
fill ^-21 ^37 ^29 ^-21 ^37 ^31 cyan_concrete
setblock ^-21 ^38 ^28 light_blue_concrete
setblock ^-21 ^38 ^32 light_blue_concrete
setblock ^-21 ^39 ^28 blue_stained_glass
setblock ^-21 ^39 ^32 blue_stained_glass
fill ^-22 ^37 ^29 ^-22 ^37 ^31 cyan_concrete
setblock ^-22 ^38 ^28 light_blue_concrete
setblock ^-22 ^38 ^32 light_blue_concrete
setblock ^-22 ^39 ^28 blue_stained_glass
setblock ^-22 ^39 ^32 blue_stained_glass
fill ^-23 ^36 ^29 ^-23 ^36 ^31 cyan_concrete
setblock ^-23 ^37 ^28 light_blue_concrete
setblock ^-23 ^37 ^32 light_blue_concrete
setblock ^-23 ^38 ^28 blue_stained_glass
setblock ^-23 ^38 ^32 blue_stained_glass
fill ^-24 ^36 ^29 ^-24 ^36 ^31 cyan_concrete
setblock ^-24 ^37 ^28 light_blue_concrete
setblock ^-24 ^37 ^32 light_blue_concrete
setblock ^-24 ^38 ^28 blue_stained_glass
setblock ^-24 ^38 ^32 blue_stained_glass
fill ^-25 ^36 ^29 ^-25 ^36 ^31 cyan_concrete
setblock ^-25 ^37 ^28 light_blue_concrete
setblock ^-25 ^37 ^32 light_blue_concrete
setblock ^-25 ^38 ^28 blue_stained_glass
setblock ^-25 ^38 ^32 blue_stained_glass
fill ^-26 ^36 ^29 ^-26 ^36 ^31 light_blue_concrete
setblock ^-26 ^37 ^28 light_blue_concrete
setblock ^-26 ^37 ^32 light_blue_concrete
setblock ^-26 ^38 ^28 blue_stained_glass
setblock ^-26 ^38 ^32 blue_stained_glass
setblock ^-26 ^37 ^32 sea_lantern
fill ^-27 ^36 ^29 ^-27 ^36 ^31 light_blue_concrete
setblock ^-27 ^37 ^28 light_blue_concrete
setblock ^-27 ^37 ^32 light_blue_concrete
setblock ^-27 ^38 ^28 blue_stained_glass
setblock ^-27 ^38 ^32 blue_stained_glass
fill ^-28 ^36 ^29 ^-28 ^36 ^31 light_blue_concrete
setblock ^-28 ^37 ^28 light_blue_concrete
setblock ^-28 ^37 ^32 light_blue_concrete
setblock ^-28 ^38 ^28 blue_stained_glass
setblock ^-28 ^38 ^32 blue_stained_glass
fill ^-29 ^36 ^29 ^-29 ^36 ^31 light_blue_concrete
setblock ^-29 ^37 ^28 light_blue_concrete
setblock ^-29 ^37 ^32 light_blue_concrete
setblock ^-29 ^38 ^28 blue_stained_glass
setblock ^-29 ^38 ^32 blue_stained_glass
fill ^-30 ^36 ^29 ^-30 ^36 ^31 light_blue_concrete
setblock ^-30 ^37 ^28 light_blue_concrete
setblock ^-30 ^37 ^32 light_blue_concrete
setblock ^-30 ^38 ^28 blue_stained_glass
setblock ^-30 ^38 ^32 blue_stained_glass
fill ^-31 ^36 ^29 ^-31 ^36 ^31 light_blue_concrete
setblock ^-31 ^37 ^28 light_blue_concrete
setblock ^-31 ^37 ^32 light_blue_concrete
setblock ^-31 ^38 ^28 blue_stained_glass
setblock ^-31 ^38 ^32 blue_stained_glass
fill ^-32 ^35 ^29 ^-32 ^35 ^31 light_blue_concrete
setblock ^-32 ^36 ^28 light_blue_concrete
setblock ^-32 ^36 ^32 light_blue_concrete
setblock ^-32 ^37 ^28 blue_stained_glass
setblock ^-32 ^37 ^32 blue_stained_glass
fill ^-33 ^35 ^29 ^-31 ^35 ^29 light_blue_concrete
setblock ^-34 ^36 ^29 light_blue_concrete
setblock ^-30 ^36 ^29 light_blue_concrete
setblock ^-34 ^37 ^29 blue_stained_glass
setblock ^-30 ^37 ^29 blue_stained_glass
fill ^-33 ^35 ^28 ^-31 ^35 ^28 light_blue_concrete
setblock ^-34 ^36 ^28 white_concrete
setblock ^-30 ^36 ^28 white_concrete
setblock ^-34 ^37 ^28 blue_stained_glass
setblock ^-30 ^37 ^28 blue_stained_glass
fill ^-33 ^35 ^27 ^-31 ^35 ^27 light_blue_concrete
setblock ^-34 ^36 ^27 white_concrete
setblock ^-30 ^36 ^27 white_concrete
setblock ^-34 ^37 ^27 blue_stained_glass
setblock ^-30 ^37 ^27 blue_stained_glass
fill ^-33 ^35 ^26 ^-31 ^35 ^26 light_blue_concrete
setblock ^-34 ^36 ^26 white_concrete
setblock ^-30 ^36 ^26 white_concrete
setblock ^-34 ^37 ^26 blue_stained_glass
setblock ^-30 ^37 ^26 blue_stained_glass
fill ^-33 ^35 ^25 ^-31 ^35 ^25 light_blue_concrete
setblock ^-34 ^36 ^25 white_concrete
setblock ^-30 ^36 ^25 white_concrete
setblock ^-34 ^37 ^25 blue_stained_glass
setblock ^-30 ^37 ^25 blue_stained_glass
fill ^-33 ^35 ^24 ^-31 ^35 ^24 light_blue_concrete
setblock ^-34 ^36 ^24 white_concrete
setblock ^-30 ^36 ^24 white_concrete
setblock ^-34 ^37 ^24 blue_stained_glass
setblock ^-30 ^37 ^24 blue_stained_glass
fill ^-33 ^35 ^23 ^-31 ^35 ^23 light_blue_concrete
setblock ^-34 ^36 ^23 white_concrete
setblock ^-30 ^36 ^23 white_concrete
setblock ^-34 ^37 ^23 blue_stained_glass
setblock ^-30 ^37 ^23 blue_stained_glass
fill ^-33 ^35 ^22 ^-31 ^35 ^22 light_blue_concrete
setblock ^-34 ^36 ^22 white_concrete
setblock ^-30 ^36 ^22 white_concrete
setblock ^-34 ^37 ^22 blue_stained_glass
setblock ^-30 ^37 ^22 blue_stained_glass
fill ^-33 ^34 ^21 ^-31 ^34 ^21 light_blue_concrete
setblock ^-34 ^35 ^21 white_concrete
setblock ^-30 ^35 ^21 white_concrete
setblock ^-34 ^36 ^21 blue_stained_glass
setblock ^-30 ^36 ^21 blue_stained_glass
setblock ^-30 ^35 ^21 sea_lantern
fill ^-33 ^34 ^20 ^-31 ^34 ^20 light_blue_concrete
setblock ^-34 ^35 ^20 white_concrete
setblock ^-30 ^35 ^20 white_concrete
setblock ^-34 ^36 ^20 blue_stained_glass
setblock ^-30 ^36 ^20 blue_stained_glass
fill ^-33 ^34 ^19 ^-31 ^34 ^19 light_blue_concrete
setblock ^-34 ^35 ^19 white_concrete
setblock ^-30 ^35 ^19 white_concrete
setblock ^-34 ^36 ^19 blue_stained_glass
setblock ^-30 ^36 ^19 blue_stained_glass
fill ^-33 ^34 ^18 ^-31 ^34 ^18 light_blue_concrete
setblock ^-34 ^35 ^18 white_concrete
setblock ^-30 ^35 ^18 white_concrete
setblock ^-34 ^36 ^18 blue_stained_glass
setblock ^-30 ^36 ^18 blue_stained_glass
fill ^-33 ^34 ^17 ^-31 ^34 ^17 light_blue_concrete
setblock ^-34 ^35 ^17 white_concrete
setblock ^-30 ^35 ^17 white_concrete
setblock ^-34 ^36 ^17 blue_stained_glass
setblock ^-30 ^36 ^17 blue_stained_glass
fill ^-33 ^34 ^16 ^-31 ^34 ^16 light_blue_concrete
setblock ^-34 ^35 ^16 white_concrete
setblock ^-30 ^35 ^16 white_concrete
setblock ^-34 ^36 ^16 blue_stained_glass
setblock ^-30 ^36 ^16 blue_stained_glass
fill ^-33 ^34 ^15 ^-31 ^34 ^15 light_blue_concrete
setblock ^-34 ^35 ^15 white_concrete
setblock ^-30 ^35 ^15 white_concrete
setblock ^-34 ^36 ^15 blue_stained_glass
setblock ^-30 ^36 ^15 blue_stained_glass
fill ^-33 ^34 ^14 ^-31 ^34 ^14 light_blue_concrete
setblock ^-34 ^35 ^14 white_concrete
setblock ^-30 ^35 ^14 white_concrete
setblock ^-34 ^36 ^14 blue_stained_glass
setblock ^-30 ^36 ^14 blue_stained_glass
fill ^-33 ^34 ^13 ^-31 ^34 ^13 light_blue_concrete
setblock ^-34 ^35 ^13 white_concrete
setblock ^-30 ^35 ^13 white_concrete
setblock ^-34 ^36 ^13 blue_stained_glass
setblock ^-30 ^36 ^13 blue_stained_glass
fill ^-33 ^33 ^12 ^-31 ^33 ^12 cyan_concrete
setblock ^-34 ^34 ^12 light_blue_concrete
setblock ^-30 ^34 ^12 light_blue_concrete
setblock ^-34 ^35 ^12 blue_stained_glass
setblock ^-30 ^35 ^12 blue_stained_glass
fill ^-33 ^33 ^11 ^-31 ^33 ^11 cyan_concrete
setblock ^-34 ^34 ^11 light_blue_concrete
setblock ^-30 ^34 ^11 light_blue_concrete
setblock ^-34 ^35 ^11 blue_stained_glass
setblock ^-30 ^35 ^11 blue_stained_glass
fill ^-33 ^33 ^10 ^-31 ^33 ^10 cyan_concrete
setblock ^-34 ^34 ^10 light_blue_concrete
setblock ^-30 ^34 ^10 light_blue_concrete
setblock ^-34 ^35 ^10 blue_stained_glass
setblock ^-30 ^35 ^10 blue_stained_glass
fill ^-33 ^33 ^9 ^-31 ^33 ^9 cyan_concrete
setblock ^-34 ^34 ^9 light_blue_concrete
setblock ^-30 ^34 ^9 light_blue_concrete
setblock ^-34 ^35 ^9 blue_stained_glass
setblock ^-30 ^35 ^9 blue_stained_glass
fill ^-33 ^33 ^8 ^-31 ^33 ^8 cyan_concrete
setblock ^-34 ^34 ^8 light_blue_concrete
setblock ^-30 ^34 ^8 light_blue_concrete
setblock ^-34 ^35 ^8 blue_stained_glass
setblock ^-30 ^35 ^8 blue_stained_glass
fill ^-33 ^33 ^7 ^-31 ^33 ^7 cyan_concrete
setblock ^-34 ^34 ^7 light_blue_concrete
setblock ^-30 ^34 ^7 light_blue_concrete
setblock ^-34 ^35 ^7 blue_stained_glass
setblock ^-30 ^35 ^7 blue_stained_glass
fill ^-33 ^33 ^6 ^-31 ^33 ^6 cyan_concrete
setblock ^-34 ^34 ^6 light_blue_concrete
setblock ^-30 ^34 ^6 light_blue_concrete
setblock ^-34 ^35 ^6 blue_stained_glass
setblock ^-30 ^35 ^6 blue_stained_glass
setblock ^-30 ^34 ^6 sea_lantern
fill ^-33 ^33 ^5 ^-31 ^33 ^5 cyan_concrete
setblock ^-34 ^34 ^5 light_blue_concrete
setblock ^-30 ^34 ^5 light_blue_concrete
setblock ^-34 ^35 ^5 blue_stained_glass
setblock ^-30 ^35 ^5 blue_stained_glass
fill ^-33 ^33 ^4 ^-31 ^33 ^4 cyan_concrete
setblock ^-34 ^34 ^4 light_blue_concrete
setblock ^-30 ^34 ^4 light_blue_concrete
setblock ^-34 ^35 ^4 blue_stained_glass
setblock ^-30 ^35 ^4 blue_stained_glass
fill ^-33 ^32 ^3 ^-31 ^32 ^3 cyan_concrete
setblock ^-34 ^33 ^3 light_blue_concrete
setblock ^-30 ^33 ^3 light_blue_concrete
setblock ^-34 ^34 ^3 blue_stained_glass
setblock ^-30 ^34 ^3 blue_stained_glass
fill ^-33 ^32 ^2 ^-31 ^32 ^2 cyan_concrete
setblock ^-34 ^33 ^2 light_blue_concrete
setblock ^-30 ^33 ^2 light_blue_concrete
setblock ^-34 ^34 ^2 blue_stained_glass
setblock ^-30 ^34 ^2 blue_stained_glass
fill ^-33 ^32 ^1 ^-31 ^32 ^1 cyan_concrete
setblock ^-34 ^33 ^1 light_blue_concrete
setblock ^-30 ^33 ^1 light_blue_concrete
setblock ^-34 ^34 ^1 blue_stained_glass
setblock ^-30 ^34 ^1 blue_stained_glass
fill ^-33 ^32 ^0 ^-31 ^32 ^0 cyan_concrete
setblock ^-34 ^33 ^0 light_blue_concrete
setblock ^-30 ^33 ^0 light_blue_concrete
setblock ^-34 ^34 ^0 blue_stained_glass
setblock ^-30 ^34 ^0 blue_stained_glass
fill ^-33 ^32 ^-1 ^-31 ^32 ^-1 cyan_concrete
setblock ^-34 ^33 ^-1 light_blue_concrete
setblock ^-30 ^33 ^-1 light_blue_concrete
setblock ^-34 ^34 ^-1 blue_stained_glass
setblock ^-30 ^34 ^-1 blue_stained_glass
fill ^-33 ^32 ^-2 ^-31 ^32 ^-2 cyan_concrete
setblock ^-34 ^33 ^-2 light_blue_concrete
setblock ^-30 ^33 ^-2 light_blue_concrete
setblock ^-34 ^34 ^-2 blue_stained_glass
setblock ^-30 ^34 ^-2 blue_stained_glass
fill ^-33 ^32 ^-3 ^-31 ^32 ^-3 cyan_concrete
setblock ^-34 ^33 ^-3 light_blue_concrete
setblock ^-30 ^33 ^-3 light_blue_concrete
setblock ^-34 ^34 ^-3 blue_stained_glass
setblock ^-30 ^34 ^-3 blue_stained_glass
fill ^-33 ^32 ^-4 ^-31 ^32 ^-4 cyan_concrete
setblock ^-34 ^33 ^-4 white_concrete
setblock ^-30 ^33 ^-4 white_concrete
setblock ^-34 ^34 ^-4 blue_stained_glass
setblock ^-30 ^34 ^-4 blue_stained_glass
fill ^-33 ^32 ^-5 ^-31 ^32 ^-5 cyan_concrete
setblock ^-34 ^33 ^-5 white_concrete
setblock ^-30 ^33 ^-5 white_concrete
setblock ^-34 ^34 ^-5 blue_stained_glass
setblock ^-30 ^34 ^-5 blue_stained_glass
fill ^-33 ^31 ^-6 ^-31 ^31 ^-6 cyan_concrete
setblock ^-34 ^32 ^-6 white_concrete
setblock ^-30 ^32 ^-6 white_concrete
setblock ^-34 ^33 ^-6 blue_stained_glass
setblock ^-30 ^33 ^-6 blue_stained_glass
fill ^-33 ^31 ^-7 ^-31 ^31 ^-7 cyan_concrete
setblock ^-34 ^32 ^-7 white_concrete
setblock ^-30 ^32 ^-7 white_concrete
setblock ^-34 ^33 ^-7 blue_stained_glass
setblock ^-30 ^33 ^-7 blue_stained_glass
fill ^-33 ^31 ^-8 ^-31 ^31 ^-8 cyan_concrete
setblock ^-34 ^32 ^-8 white_concrete
setblock ^-30 ^32 ^-8 white_concrete
setblock ^-34 ^33 ^-8 blue_stained_glass
setblock ^-30 ^33 ^-8 blue_stained_glass
fill ^-33 ^31 ^-9 ^-31 ^31 ^-9 cyan_concrete
setblock ^-34 ^32 ^-9 white_concrete
setblock ^-30 ^32 ^-9 white_concrete
setblock ^-34 ^33 ^-9 blue_stained_glass
setblock ^-30 ^33 ^-9 blue_stained_glass
setblock ^-30 ^32 ^-9 sea_lantern
fill ^-33 ^31 ^-10 ^-31 ^31 ^-10 cyan_concrete
setblock ^-34 ^32 ^-10 white_concrete
setblock ^-30 ^32 ^-10 white_concrete
setblock ^-34 ^33 ^-10 blue_stained_glass
setblock ^-30 ^33 ^-10 blue_stained_glass
fill ^-33 ^31 ^-11 ^-31 ^31 ^-11 cyan_concrete
setblock ^-34 ^32 ^-11 white_concrete
setblock ^-30 ^32 ^-11 white_concrete
setblock ^-34 ^33 ^-11 blue_stained_glass
setblock ^-30 ^33 ^-11 blue_stained_glass
fill ^-33 ^31 ^-12 ^-31 ^31 ^-12 light_blue_concrete
setblock ^-34 ^32 ^-12 white_concrete
setblock ^-30 ^32 ^-12 white_concrete
setblock ^-34 ^33 ^-12 blue_stained_glass
setblock ^-30 ^33 ^-12 blue_stained_glass
fill ^-33 ^31 ^-13 ^-31 ^31 ^-13 light_blue_concrete
setblock ^-34 ^32 ^-13 white_concrete
setblock ^-30 ^32 ^-13 white_concrete
setblock ^-34 ^33 ^-13 blue_stained_glass
setblock ^-30 ^33 ^-13 blue_stained_glass
fill ^-33 ^31 ^-14 ^-31 ^31 ^-14 light_blue_concrete
setblock ^-34 ^32 ^-14 white_concrete
setblock ^-30 ^32 ^-14 white_concrete
setblock ^-34 ^33 ^-14 blue_stained_glass
setblock ^-30 ^33 ^-14 blue_stained_glass
fill ^-33 ^30 ^-15 ^-31 ^30 ^-15 light_blue_concrete
setblock ^-34 ^31 ^-15 white_concrete
setblock ^-30 ^31 ^-15 white_concrete
setblock ^-34 ^32 ^-15 blue_stained_glass
setblock ^-30 ^32 ^-15 blue_stained_glass
fill ^-33 ^30 ^-16 ^-31 ^30 ^-16 light_blue_concrete
setblock ^-34 ^31 ^-16 white_concrete
setblock ^-30 ^31 ^-16 white_concrete
setblock ^-34 ^32 ^-16 blue_stained_glass
setblock ^-30 ^32 ^-16 blue_stained_glass
fill ^-33 ^30 ^-17 ^-31 ^30 ^-17 light_blue_concrete
setblock ^-34 ^31 ^-17 white_concrete
setblock ^-30 ^31 ^-17 white_concrete
setblock ^-34 ^32 ^-17 blue_stained_glass
setblock ^-30 ^32 ^-17 blue_stained_glass
fill ^-33 ^30 ^-18 ^-31 ^30 ^-18 light_blue_concrete
setblock ^-34 ^31 ^-18 white_concrete
setblock ^-30 ^31 ^-18 white_concrete
setblock ^-34 ^32 ^-18 blue_stained_glass
setblock ^-30 ^32 ^-18 blue_stained_glass
fill ^-33 ^30 ^-19 ^-31 ^30 ^-19 light_blue_concrete
setblock ^-34 ^31 ^-19 white_concrete
setblock ^-30 ^31 ^-19 white_concrete
setblock ^-34 ^32 ^-19 blue_stained_glass
setblock ^-30 ^32 ^-19 blue_stained_glass
fill ^-33 ^30 ^-20 ^-31 ^30 ^-20 light_blue_concrete
setblock ^-34 ^31 ^-20 light_blue_concrete
setblock ^-30 ^31 ^-20 light_blue_concrete
setblock ^-34 ^32 ^-20 blue_stained_glass
setblock ^-30 ^32 ^-20 blue_stained_glass
fill ^-33 ^30 ^-21 ^-31 ^30 ^-21 light_blue_concrete
setblock ^-34 ^31 ^-21 light_blue_concrete
setblock ^-30 ^31 ^-21 light_blue_concrete
setblock ^-34 ^32 ^-21 blue_stained_glass
setblock ^-30 ^32 ^-21 blue_stained_glass
fill ^-33 ^30 ^-22 ^-31 ^30 ^-22 light_blue_concrete
setblock ^-34 ^31 ^-22 light_blue_concrete
setblock ^-30 ^31 ^-22 light_blue_concrete
setblock ^-34 ^32 ^-22 blue_stained_glass
setblock ^-30 ^32 ^-22 blue_stained_glass
fill ^-33 ^30 ^-23 ^-31 ^30 ^-23 light_blue_concrete
setblock ^-34 ^31 ^-23 light_blue_concrete
setblock ^-30 ^31 ^-23 light_blue_concrete
setblock ^-34 ^32 ^-23 blue_stained_glass
setblock ^-30 ^32 ^-23 blue_stained_glass
fill ^-33 ^29 ^-24 ^-31 ^29 ^-24 light_blue_concrete
setblock ^-34 ^30 ^-24 light_blue_concrete
setblock ^-30 ^30 ^-24 light_blue_concrete
setblock ^-34 ^31 ^-24 blue_stained_glass
setblock ^-30 ^31 ^-24 blue_stained_glass
setblock ^-30 ^30 ^-24 sea_lantern
fill ^-33 ^29 ^-25 ^-31 ^29 ^-25 light_blue_concrete
setblock ^-34 ^30 ^-25 light_blue_concrete
setblock ^-30 ^30 ^-25 light_blue_concrete
setblock ^-34 ^31 ^-25 blue_stained_glass
setblock ^-30 ^31 ^-25 blue_stained_glass
fill ^-33 ^29 ^-26 ^-31 ^29 ^-26 light_blue_concrete
setblock ^-34 ^30 ^-26 light_blue_concrete
setblock ^-30 ^30 ^-26 light_blue_concrete
setblock ^-34 ^31 ^-26 blue_stained_glass
setblock ^-30 ^31 ^-26 blue_stained_glass
fill ^-33 ^29 ^-27 ^-31 ^29 ^-27 light_blue_concrete
setblock ^-34 ^30 ^-27 light_blue_concrete
setblock ^-30 ^30 ^-27 light_blue_concrete
setblock ^-34 ^31 ^-27 blue_stained_glass
setblock ^-30 ^31 ^-27 blue_stained_glass
fill ^-33 ^29 ^-28 ^-31 ^29 ^-28 light_blue_concrete
setblock ^-34 ^30 ^-28 light_blue_concrete
setblock ^-30 ^30 ^-28 light_blue_concrete
setblock ^-34 ^31 ^-28 blue_stained_glass
setblock ^-30 ^31 ^-28 blue_stained_glass
fill ^-33 ^29 ^-29 ^-31 ^29 ^-29 light_blue_concrete
setblock ^-34 ^30 ^-29 light_blue_concrete
setblock ^-30 ^30 ^-29 light_blue_concrete
setblock ^-34 ^31 ^-29 blue_stained_glass
setblock ^-30 ^31 ^-29 blue_stained_glass
fill ^-33 ^29 ^-30 ^-31 ^29 ^-30 light_blue_concrete
setblock ^-34 ^30 ^-30 light_blue_concrete
setblock ^-30 ^30 ^-30 light_blue_concrete
setblock ^-34 ^31 ^-30 blue_stained_glass
setblock ^-30 ^31 ^-30 blue_stained_glass
fill ^-33 ^29 ^-31 ^-31 ^29 ^-31 light_blue_concrete
setblock ^-34 ^30 ^-31 light_blue_concrete
setblock ^-30 ^30 ^-31 light_blue_concrete
setblock ^-34 ^31 ^-31 blue_stained_glass
setblock ^-30 ^31 ^-31 blue_stained_glass
fill ^-33 ^29 ^-32 ^-31 ^29 ^-32 light_blue_concrete
setblock ^-34 ^30 ^-32 light_blue_concrete
setblock ^-30 ^30 ^-32 light_blue_concrete
setblock ^-34 ^31 ^-32 blue_stained_glass
setblock ^-30 ^31 ^-32 blue_stained_glass
fill ^-33 ^28 ^-33 ^-31 ^28 ^-33 light_blue_concrete
setblock ^-34 ^29 ^-33 light_blue_concrete
setblock ^-30 ^29 ^-33 light_blue_concrete
setblock ^-34 ^30 ^-33 blue_stained_glass
setblock ^-30 ^30 ^-33 blue_stained_glass
fill ^-33 ^28 ^-34 ^-31 ^28 ^-34 light_blue_concrete
setblock ^-34 ^29 ^-34 light_blue_concrete
setblock ^-30 ^29 ^-34 light_blue_concrete
setblock ^-34 ^30 ^-34 blue_stained_glass
setblock ^-30 ^30 ^-34 blue_stained_glass
fill ^-31 ^28 ^-35 ^-31 ^28 ^-33 light_blue_concrete
setblock ^-31 ^29 ^-36 light_blue_concrete
setblock ^-31 ^29 ^-32 light_blue_concrete
setblock ^-31 ^30 ^-36 blue_stained_glass
setblock ^-31 ^30 ^-32 blue_stained_glass
fill ^-30 ^28 ^-35 ^-30 ^28 ^-33 cyan_concrete
setblock ^-30 ^29 ^-36 white_concrete
setblock ^-30 ^29 ^-32 white_concrete
setblock ^-30 ^30 ^-36 blue_stained_glass
setblock ^-30 ^30 ^-32 blue_stained_glass
fill ^-29 ^28 ^-35 ^-29 ^28 ^-33 cyan_concrete
setblock ^-29 ^29 ^-36 white_concrete
setblock ^-29 ^29 ^-32 white_concrete
setblock ^-29 ^30 ^-36 blue_stained_glass
setblock ^-29 ^30 ^-32 blue_stained_glass
fill ^-28 ^28 ^-35 ^-28 ^28 ^-33 cyan_concrete
setblock ^-28 ^29 ^-36 white_concrete
setblock ^-28 ^29 ^-32 white_concrete
setblock ^-28 ^30 ^-36 blue_stained_glass
setblock ^-28 ^30 ^-32 blue_stained_glass
fill ^-27 ^28 ^-35 ^-27 ^28 ^-33 cyan_concrete
setblock ^-27 ^29 ^-36 white_concrete
setblock ^-27 ^29 ^-32 white_concrete
setblock ^-27 ^30 ^-36 blue_stained_glass
setblock ^-27 ^30 ^-32 blue_stained_glass
setblock ^-27 ^29 ^-32 sea_lantern
fill ^-26 ^28 ^-35 ^-26 ^28 ^-33 cyan_concrete
setblock ^-26 ^29 ^-36 white_concrete
setblock ^-26 ^29 ^-32 white_concrete
setblock ^-26 ^30 ^-36 blue_stained_glass
setblock ^-26 ^30 ^-32 blue_stained_glass
fill ^-25 ^28 ^-35 ^-25 ^28 ^-33 cyan_concrete
setblock ^-25 ^29 ^-36 white_concrete
setblock ^-25 ^29 ^-32 white_concrete
setblock ^-25 ^30 ^-36 blue_stained_glass
setblock ^-25 ^30 ^-32 blue_stained_glass
fill ^-24 ^27 ^-35 ^-24 ^27 ^-33 cyan_concrete
setblock ^-24 ^28 ^-36 white_concrete
setblock ^-24 ^28 ^-32 white_concrete
setblock ^-24 ^29 ^-36 blue_stained_glass
setblock ^-24 ^29 ^-32 blue_stained_glass
fill ^-23 ^27 ^-35 ^-23 ^27 ^-33 cyan_concrete
setblock ^-23 ^28 ^-36 white_concrete
setblock ^-23 ^28 ^-32 white_concrete
setblock ^-23 ^29 ^-36 blue_stained_glass
setblock ^-23 ^29 ^-32 blue_stained_glass
fill ^-22 ^27 ^-35 ^-22 ^27 ^-33 cyan_concrete
setblock ^-22 ^28 ^-36 white_concrete
setblock ^-22 ^28 ^-32 white_concrete
setblock ^-22 ^29 ^-36 blue_stained_glass
setblock ^-22 ^29 ^-32 blue_stained_glass
fill ^-21 ^27 ^-35 ^-21 ^27 ^-33 cyan_concrete
setblock ^-21 ^28 ^-36 white_concrete
setblock ^-21 ^28 ^-32 white_concrete
setblock ^-21 ^29 ^-36 blue_stained_glass
setblock ^-21 ^29 ^-32 blue_stained_glass
fill ^-20 ^27 ^-35 ^-20 ^27 ^-33 cyan_concrete
setblock ^-20 ^28 ^-36 white_concrete
setblock ^-20 ^28 ^-32 white_concrete
setblock ^-20 ^29 ^-36 blue_stained_glass
setblock ^-20 ^29 ^-32 blue_stained_glass
fill ^-19 ^27 ^-35 ^-19 ^27 ^-33 cyan_concrete
setblock ^-19 ^28 ^-36 white_concrete
setblock ^-19 ^28 ^-32 white_concrete
setblock ^-19 ^29 ^-36 blue_stained_glass
setblock ^-19 ^29 ^-32 blue_stained_glass
fill ^-18 ^27 ^-35 ^-18 ^27 ^-33 cyan_concrete
setblock ^-18 ^28 ^-36 white_concrete
setblock ^-18 ^28 ^-32 white_concrete
setblock ^-18 ^29 ^-36 blue_stained_glass
setblock ^-18 ^29 ^-32 blue_stained_glass
fill ^-17 ^27 ^-35 ^-17 ^27 ^-33 cyan_concrete
setblock ^-17 ^28 ^-36 white_concrete
setblock ^-17 ^28 ^-32 white_concrete
setblock ^-17 ^29 ^-36 blue_stained_glass
setblock ^-17 ^29 ^-32 blue_stained_glass
fill ^-16 ^27 ^-35 ^-16 ^27 ^-33 cyan_concrete
setblock ^-16 ^28 ^-36 white_concrete
setblock ^-16 ^28 ^-32 white_concrete
setblock ^-16 ^29 ^-36 blue_stained_glass
setblock ^-16 ^29 ^-32 blue_stained_glass
fill ^-15 ^26 ^-35 ^-15 ^26 ^-33 cyan_concrete
setblock ^-15 ^27 ^-36 white_concrete
setblock ^-15 ^27 ^-32 white_concrete
setblock ^-15 ^28 ^-36 blue_stained_glass
setblock ^-15 ^28 ^-32 blue_stained_glass
fill ^-14 ^26 ^-35 ^-14 ^26 ^-33 cyan_concrete
setblock ^-14 ^27 ^-36 light_blue_concrete
setblock ^-14 ^27 ^-32 light_blue_concrete
setblock ^-14 ^28 ^-36 blue_stained_glass
setblock ^-14 ^28 ^-32 blue_stained_glass
fill ^-13 ^26 ^-35 ^-13 ^26 ^-33 cyan_concrete
setblock ^-13 ^27 ^-36 light_blue_concrete
setblock ^-13 ^27 ^-32 light_blue_concrete
setblock ^-13 ^28 ^-36 blue_stained_glass
setblock ^-13 ^28 ^-32 blue_stained_glass
fill ^-12 ^26 ^-35 ^-12 ^26 ^-33 cyan_concrete
setblock ^-12 ^27 ^-36 light_blue_concrete
setblock ^-12 ^27 ^-32 light_blue_concrete
setblock ^-12 ^28 ^-36 blue_stained_glass
setblock ^-12 ^28 ^-32 blue_stained_glass
setblock ^-12 ^27 ^-32 sea_lantern
fill ^-11 ^26 ^-35 ^-11 ^26 ^-33 cyan_concrete
setblock ^-11 ^27 ^-36 light_blue_concrete
setblock ^-11 ^27 ^-32 light_blue_concrete
setblock ^-11 ^28 ^-36 blue_stained_glass
setblock ^-11 ^28 ^-32 blue_stained_glass
fill ^-10 ^26 ^-35 ^-10 ^26 ^-33 cyan_concrete
setblock ^-10 ^27 ^-36 light_blue_concrete
setblock ^-10 ^27 ^-32 light_blue_concrete
setblock ^-10 ^28 ^-36 blue_stained_glass
setblock ^-10 ^28 ^-32 blue_stained_glass
fill ^-9 ^26 ^-35 ^-9 ^26 ^-33 cyan_concrete
setblock ^-9 ^27 ^-36 light_blue_concrete
setblock ^-9 ^27 ^-32 light_blue_concrete
setblock ^-9 ^28 ^-36 blue_stained_glass
setblock ^-9 ^28 ^-32 blue_stained_glass
fill ^-8 ^26 ^-35 ^-8 ^26 ^-33 cyan_concrete
setblock ^-8 ^27 ^-36 light_blue_concrete
setblock ^-8 ^27 ^-32 light_blue_concrete
setblock ^-8 ^28 ^-36 blue_stained_glass
setblock ^-8 ^28 ^-32 blue_stained_glass
fill ^-7 ^26 ^-35 ^-7 ^26 ^-33 cyan_concrete
setblock ^-7 ^27 ^-36 light_blue_concrete
setblock ^-7 ^27 ^-32 light_blue_concrete
setblock ^-7 ^28 ^-36 blue_stained_glass
setblock ^-7 ^28 ^-32 blue_stained_glass
fill ^-6 ^25 ^-35 ^-6 ^25 ^-33 light_blue_concrete
setblock ^-6 ^26 ^-36 light_blue_concrete
setblock ^-6 ^26 ^-32 light_blue_concrete
setblock ^-6 ^27 ^-36 blue_stained_glass
setblock ^-6 ^27 ^-32 blue_stained_glass
fill ^-5 ^25 ^-35 ^-5 ^25 ^-33 light_blue_concrete
setblock ^-5 ^26 ^-36 light_blue_concrete
setblock ^-5 ^26 ^-32 light_blue_concrete
setblock ^-5 ^27 ^-36 blue_stained_glass
setblock ^-5 ^27 ^-32 blue_stained_glass
fill ^-4 ^25 ^-35 ^-4 ^25 ^-33 light_blue_concrete
setblock ^-4 ^26 ^-36 light_blue_concrete
setblock ^-4 ^26 ^-32 light_blue_concrete
setblock ^-4 ^27 ^-36 blue_stained_glass
setblock ^-4 ^27 ^-32 blue_stained_glass
fill ^-3 ^25 ^-35 ^-3 ^25 ^-33 light_blue_concrete
setblock ^-3 ^26 ^-36 light_blue_concrete
setblock ^-3 ^26 ^-32 light_blue_concrete
setblock ^-3 ^27 ^-36 blue_stained_glass
setblock ^-3 ^27 ^-32 blue_stained_glass
fill ^-2 ^25 ^-35 ^-2 ^25 ^-33 light_blue_concrete
setblock ^-2 ^26 ^-36 light_blue_concrete
setblock ^-2 ^26 ^-32 light_blue_concrete
setblock ^-2 ^27 ^-36 blue_stained_glass
setblock ^-2 ^27 ^-32 blue_stained_glass
fill ^-1 ^25 ^-35 ^-1 ^25 ^-33 light_blue_concrete
setblock ^-1 ^26 ^-36 light_blue_concrete
setblock ^-1 ^26 ^-32 light_blue_concrete
setblock ^-1 ^27 ^-36 blue_stained_glass
setblock ^-1 ^27 ^-32 blue_stained_glass
fill ^0 ^25 ^-35 ^0 ^25 ^-33 light_blue_concrete
setblock ^0 ^26 ^-36 light_blue_concrete
setblock ^0 ^26 ^-32 light_blue_concrete
setblock ^0 ^27 ^-36 blue_stained_glass
setblock ^0 ^27 ^-32 blue_stained_glass
fill ^1 ^25 ^-35 ^1 ^25 ^-33 light_blue_concrete
setblock ^1 ^26 ^-36 light_blue_concrete
setblock ^1 ^26 ^-32 light_blue_concrete
setblock ^1 ^27 ^-36 blue_stained_glass
setblock ^1 ^27 ^-32 blue_stained_glass
fill ^2 ^25 ^-35 ^2 ^25 ^-33 light_blue_concrete
setblock ^2 ^26 ^-36 white_concrete
setblock ^2 ^26 ^-32 white_concrete
setblock ^2 ^27 ^-36 blue_stained_glass
setblock ^2 ^27 ^-32 blue_stained_glass
fill ^3 ^24 ^-35 ^3 ^24 ^-33 light_blue_concrete
setblock ^3 ^25 ^-36 white_concrete
setblock ^3 ^25 ^-32 white_concrete
setblock ^3 ^26 ^-36 blue_stained_glass
setblock ^3 ^26 ^-32 blue_stained_glass
setblock ^3 ^25 ^-32 sea_lantern
fill ^4 ^24 ^-35 ^4 ^24 ^-33 light_blue_concrete
setblock ^4 ^25 ^-36 white_concrete
setblock ^4 ^25 ^-32 white_concrete
setblock ^4 ^26 ^-36 blue_stained_glass
setblock ^4 ^26 ^-32 blue_stained_glass
fill ^5 ^24 ^-35 ^5 ^24 ^-33 light_blue_concrete
setblock ^5 ^25 ^-36 white_concrete
setblock ^5 ^25 ^-32 white_concrete
setblock ^5 ^26 ^-36 blue_stained_glass
setblock ^5 ^26 ^-32 blue_stained_glass
fill ^6 ^24 ^-35 ^6 ^24 ^-33 light_blue_concrete
setblock ^6 ^25 ^-36 white_concrete
setblock ^6 ^25 ^-32 white_concrete
setblock ^6 ^26 ^-36 blue_stained_glass
setblock ^6 ^26 ^-32 blue_stained_glass
fill ^7 ^24 ^-35 ^7 ^24 ^-33 light_blue_concrete
setblock ^7 ^25 ^-36 white_concrete
setblock ^7 ^25 ^-32 white_concrete
setblock ^7 ^26 ^-36 blue_stained_glass
setblock ^7 ^26 ^-32 blue_stained_glass
fill ^8 ^24 ^-35 ^8 ^24 ^-33 light_blue_concrete
setblock ^8 ^25 ^-36 white_concrete
setblock ^8 ^25 ^-32 white_concrete
setblock ^8 ^26 ^-36 blue_stained_glass
setblock ^8 ^26 ^-32 blue_stained_glass
fill ^9 ^24 ^-35 ^9 ^24 ^-33 light_blue_concrete
setblock ^9 ^25 ^-36 white_concrete
setblock ^9 ^25 ^-32 white_concrete
setblock ^9 ^26 ^-36 blue_stained_glass
setblock ^9 ^26 ^-32 blue_stained_glass
fill ^10 ^24 ^-35 ^10 ^24 ^-33 light_blue_concrete
setblock ^10 ^25 ^-36 white_concrete
setblock ^10 ^25 ^-32 white_concrete
setblock ^10 ^26 ^-36 blue_stained_glass
setblock ^10 ^26 ^-32 blue_stained_glass
fill ^11 ^24 ^-35 ^11 ^24 ^-33 light_blue_concrete
setblock ^11 ^25 ^-36 white_concrete
setblock ^11 ^25 ^-32 white_concrete
setblock ^11 ^26 ^-36 blue_stained_glass
setblock ^11 ^26 ^-32 blue_stained_glass
fill ^12 ^23 ^-35 ^12 ^23 ^-33 light_blue_concrete
setblock ^12 ^24 ^-36 white_concrete
setblock ^12 ^24 ^-32 white_concrete
setblock ^12 ^25 ^-36 blue_stained_glass
setblock ^12 ^25 ^-32 blue_stained_glass
fill ^13 ^23 ^-35 ^13 ^23 ^-33 light_blue_concrete
setblock ^13 ^24 ^-36 white_concrete
setblock ^13 ^24 ^-32 white_concrete
setblock ^13 ^25 ^-36 blue_stained_glass
setblock ^13 ^25 ^-32 blue_stained_glass
fill ^14 ^23 ^-35 ^14 ^23 ^-33 light_blue_concrete
setblock ^14 ^24 ^-36 white_concrete
setblock ^14 ^24 ^-32 white_concrete
setblock ^14 ^25 ^-36 blue_stained_glass
setblock ^14 ^25 ^-32 blue_stained_glass
fill ^15 ^23 ^-35 ^15 ^23 ^-33 light_blue_concrete
setblock ^15 ^24 ^-36 white_concrete
setblock ^15 ^24 ^-32 white_concrete
setblock ^15 ^25 ^-36 blue_stained_glass
setblock ^15 ^25 ^-32 blue_stained_glass
fill ^16 ^23 ^-35 ^16 ^23 ^-33 light_blue_concrete
setblock ^16 ^24 ^-36 white_concrete
setblock ^16 ^24 ^-32 white_concrete
setblock ^16 ^25 ^-36 blue_stained_glass
setblock ^16 ^25 ^-32 blue_stained_glass
fill ^17 ^23 ^-35 ^17 ^23 ^-33 light_blue_concrete
setblock ^17 ^24 ^-36 white_concrete
setblock ^17 ^24 ^-32 white_concrete
setblock ^17 ^25 ^-36 blue_stained_glass
setblock ^17 ^25 ^-32 blue_stained_glass
fill ^18 ^23 ^-35 ^18 ^23 ^-33 cyan_concrete
setblock ^18 ^24 ^-36 light_blue_concrete
setblock ^18 ^24 ^-32 light_blue_concrete
setblock ^18 ^25 ^-36 blue_stained_glass
setblock ^18 ^25 ^-32 blue_stained_glass
setblock ^18 ^24 ^-32 sea_lantern
fill ^19 ^23 ^-35 ^19 ^23 ^-33 cyan_concrete
setblock ^19 ^24 ^-36 light_blue_concrete
setblock ^19 ^24 ^-32 light_blue_concrete
setblock ^19 ^25 ^-36 blue_stained_glass
setblock ^19 ^25 ^-32 blue_stained_glass
fill ^20 ^23 ^-35 ^20 ^23 ^-33 cyan_concrete
setblock ^20 ^24 ^-36 light_blue_concrete
setblock ^20 ^24 ^-32 light_blue_concrete
setblock ^20 ^25 ^-36 blue_stained_glass
setblock ^20 ^25 ^-32 blue_stained_glass
fill ^21 ^22 ^-35 ^21 ^22 ^-33 cyan_concrete
setblock ^21 ^23 ^-36 light_blue_concrete
setblock ^21 ^23 ^-32 light_blue_concrete
setblock ^21 ^24 ^-36 blue_stained_glass
setblock ^21 ^24 ^-32 blue_stained_glass
fill ^22 ^22 ^-35 ^22 ^22 ^-33 cyan_concrete
setblock ^22 ^23 ^-36 light_blue_concrete
setblock ^22 ^23 ^-32 light_blue_concrete
setblock ^22 ^24 ^-36 blue_stained_glass
setblock ^22 ^24 ^-32 blue_stained_glass
fill ^23 ^22 ^-35 ^23 ^22 ^-33 cyan_concrete
setblock ^23 ^23 ^-36 light_blue_concrete
setblock ^23 ^23 ^-32 light_blue_concrete
setblock ^23 ^24 ^-36 blue_stained_glass
setblock ^23 ^24 ^-32 blue_stained_glass
fill ^24 ^22 ^-35 ^24 ^22 ^-33 cyan_concrete
setblock ^24 ^23 ^-36 light_blue_concrete
setblock ^24 ^23 ^-32 light_blue_concrete
setblock ^24 ^24 ^-36 blue_stained_glass
setblock ^24 ^24 ^-32 blue_stained_glass
fill ^25 ^22 ^-35 ^25 ^22 ^-33 cyan_concrete
setblock ^25 ^23 ^-36 light_blue_concrete
setblock ^25 ^23 ^-32 light_blue_concrete
setblock ^25 ^24 ^-36 blue_stained_glass
setblock ^25 ^24 ^-32 blue_stained_glass
fill ^26 ^22 ^-35 ^26 ^22 ^-33 cyan_concrete
setblock ^26 ^23 ^-36 light_blue_concrete
setblock ^26 ^23 ^-32 light_blue_concrete
setblock ^26 ^24 ^-36 blue_stained_glass
setblock ^26 ^24 ^-32 blue_stained_glass
fill ^27 ^22 ^-35 ^27 ^22 ^-33 cyan_concrete
setblock ^27 ^23 ^-36 light_blue_concrete
setblock ^27 ^23 ^-32 light_blue_concrete
setblock ^27 ^24 ^-36 blue_stained_glass
setblock ^27 ^24 ^-32 blue_stained_glass
fill ^28 ^22 ^-35 ^28 ^22 ^-33 cyan_concrete
setblock ^28 ^23 ^-36 light_blue_concrete
setblock ^28 ^23 ^-32 light_blue_concrete
setblock ^28 ^24 ^-36 blue_stained_glass
setblock ^28 ^24 ^-32 blue_stained_glass
fill ^29 ^22 ^-35 ^29 ^22 ^-33 cyan_concrete
setblock ^29 ^23 ^-36 light_blue_concrete
setblock ^29 ^23 ^-32 light_blue_concrete
setblock ^29 ^24 ^-36 blue_stained_glass
setblock ^29 ^24 ^-32 blue_stained_glass
fill ^30 ^21 ^-35 ^30 ^21 ^-33 cyan_concrete
setblock ^30 ^22 ^-36 light_blue_concrete
setblock ^30 ^22 ^-32 light_blue_concrete
setblock ^30 ^23 ^-36 blue_stained_glass
setblock ^30 ^23 ^-32 blue_stained_glass
fill ^31 ^21 ^-35 ^31 ^21 ^-33 cyan_concrete
setblock ^31 ^22 ^-36 light_blue_concrete
setblock ^31 ^22 ^-32 light_blue_concrete
setblock ^31 ^23 ^-36 blue_stained_glass
setblock ^31 ^23 ^-32 blue_stained_glass
fill ^32 ^21 ^-35 ^32 ^21 ^-33 cyan_concrete
setblock ^32 ^22 ^-36 light_blue_concrete
setblock ^32 ^22 ^-32 light_blue_concrete
setblock ^32 ^23 ^-36 blue_stained_glass
setblock ^32 ^23 ^-32 blue_stained_glass
fill ^33 ^21 ^-35 ^33 ^21 ^-33 cyan_concrete
setblock ^33 ^22 ^-36 light_blue_concrete
setblock ^33 ^22 ^-32 light_blue_concrete
setblock ^33 ^23 ^-36 blue_stained_glass
setblock ^33 ^23 ^-32 blue_stained_glass
setblock ^33 ^22 ^-32 sea_lantern
fill ^34 ^21 ^-35 ^34 ^21 ^-33 cyan_concrete
setblock ^34 ^22 ^-36 white_concrete
setblock ^34 ^22 ^-32 white_concrete
setblock ^34 ^23 ^-36 blue_stained_glass
setblock ^34 ^23 ^-32 blue_stained_glass
fill ^35 ^21 ^-35 ^35 ^21 ^-33 cyan_concrete
setblock ^35 ^22 ^-36 white_concrete
setblock ^35 ^22 ^-32 white_concrete
setblock ^35 ^23 ^-36 blue_stained_glass
setblock ^35 ^23 ^-32 blue_stained_glass
fill ^36 ^21 ^-35 ^36 ^21 ^-33 cyan_concrete
setblock ^36 ^22 ^-36 white_concrete
setblock ^36 ^22 ^-32 white_concrete
setblock ^36 ^23 ^-36 blue_stained_glass
setblock ^36 ^23 ^-32 blue_stained_glass
fill ^37 ^21 ^-35 ^37 ^21 ^-33 cyan_concrete
setblock ^37 ^22 ^-36 white_concrete
setblock ^37 ^22 ^-32 white_concrete
setblock ^37 ^23 ^-36 blue_stained_glass
setblock ^37 ^23 ^-32 blue_stained_glass
fill ^38 ^21 ^-35 ^38 ^21 ^-33 cyan_concrete
setblock ^38 ^22 ^-36 white_concrete
setblock ^38 ^22 ^-32 white_concrete
setblock ^38 ^23 ^-36 blue_stained_glass
setblock ^38 ^23 ^-32 blue_stained_glass
fill ^37 ^20 ^-33 ^39 ^20 ^-33 cyan_concrete
setblock ^36 ^21 ^-33 white_concrete
setblock ^40 ^21 ^-33 white_concrete
setblock ^36 ^22 ^-33 blue_stained_glass
setblock ^40 ^22 ^-33 blue_stained_glass
fill ^37 ^20 ^-32 ^39 ^20 ^-32 cyan_concrete
setblock ^36 ^21 ^-32 white_concrete
setblock ^40 ^21 ^-32 white_concrete
setblock ^36 ^22 ^-32 blue_stained_glass
setblock ^40 ^22 ^-32 blue_stained_glass
fill ^37 ^20 ^-31 ^39 ^20 ^-31 cyan_concrete
setblock ^36 ^21 ^-31 white_concrete
setblock ^40 ^21 ^-31 white_concrete
setblock ^36 ^22 ^-31 blue_stained_glass
setblock ^40 ^22 ^-31 blue_stained_glass
fill ^37 ^20 ^-30 ^39 ^20 ^-30 light_blue_concrete
setblock ^36 ^21 ^-30 white_concrete
setblock ^40 ^21 ^-30 white_concrete
setblock ^36 ^22 ^-30 blue_stained_glass
setblock ^40 ^22 ^-30 blue_stained_glass
fill ^37 ^20 ^-29 ^39 ^20 ^-29 light_blue_concrete
setblock ^36 ^21 ^-29 white_concrete
setblock ^40 ^21 ^-29 white_concrete
setblock ^36 ^22 ^-29 blue_stained_glass
setblock ^40 ^22 ^-29 blue_stained_glass
fill ^37 ^20 ^-28 ^39 ^20 ^-28 light_blue_concrete
setblock ^36 ^21 ^-28 white_concrete
setblock ^40 ^21 ^-28 white_concrete
setblock ^36 ^22 ^-28 blue_stained_glass
setblock ^40 ^22 ^-28 blue_stained_glass
fill ^37 ^20 ^-27 ^39 ^20 ^-27 light_blue_concrete
setblock ^36 ^21 ^-27 white_concrete
setblock ^40 ^21 ^-27 white_concrete
setblock ^36 ^22 ^-27 blue_stained_glass
setblock ^40 ^22 ^-27 blue_stained_glass
fill ^37 ^20 ^-26 ^39 ^20 ^-26 light_blue_concrete
setblock ^36 ^21 ^-26 white_concrete
setblock ^40 ^21 ^-26 white_concrete
setblock ^36 ^22 ^-26 blue_stained_glass
setblock ^40 ^22 ^-26 blue_stained_glass
fill ^37 ^20 ^-25 ^39 ^20 ^-25 light_blue_concrete
setblock ^36 ^21 ^-25 white_concrete
setblock ^40 ^21 ^-25 white_concrete
setblock ^36 ^22 ^-25 blue_stained_glass
setblock ^40 ^22 ^-25 blue_stained_glass
fill ^37 ^19 ^-24 ^39 ^19 ^-24 light_blue_concrete
setblock ^36 ^20 ^-24 white_concrete
setblock ^40 ^20 ^-24 white_concrete
setblock ^36 ^21 ^-24 blue_stained_glass
setblock ^40 ^21 ^-24 blue_stained_glass
setblock ^40 ^20 ^-24 sea_lantern
fill ^37 ^19 ^-23 ^39 ^19 ^-23 light_blue_concrete
setblock ^36 ^20 ^-23 white_concrete
setblock ^40 ^20 ^-23 white_concrete
setblock ^36 ^21 ^-23 blue_stained_glass
setblock ^40 ^21 ^-23 blue_stained_glass
fill ^37 ^19 ^-22 ^39 ^19 ^-22 light_blue_concrete
setblock ^36 ^20 ^-22 light_blue_concrete
setblock ^40 ^20 ^-22 light_blue_concrete
setblock ^36 ^21 ^-22 blue_stained_glass
setblock ^40 ^21 ^-22 blue_stained_glass
fill ^37 ^19 ^-21 ^39 ^19 ^-21 light_blue_concrete
setblock ^36 ^20 ^-21 light_blue_concrete
setblock ^40 ^20 ^-21 light_blue_concrete
setblock ^36 ^21 ^-21 blue_stained_glass
setblock ^40 ^21 ^-21 blue_stained_glass
fill ^37 ^19 ^-20 ^39 ^19 ^-20 light_blue_concrete
setblock ^36 ^20 ^-20 light_blue_concrete
setblock ^40 ^20 ^-20 light_blue_concrete
setblock ^36 ^21 ^-20 blue_stained_glass
setblock ^40 ^21 ^-20 blue_stained_glass
fill ^37 ^19 ^-19 ^39 ^19 ^-19 light_blue_concrete
setblock ^36 ^20 ^-19 light_blue_concrete
setblock ^40 ^20 ^-19 light_blue_concrete
setblock ^36 ^21 ^-19 blue_stained_glass
setblock ^40 ^21 ^-19 blue_stained_glass
fill ^37 ^19 ^-18 ^39 ^19 ^-18 light_blue_concrete
setblock ^36 ^20 ^-18 light_blue_concrete
setblock ^40 ^20 ^-18 light_blue_concrete
setblock ^36 ^21 ^-18 blue_stained_glass
setblock ^40 ^21 ^-18 blue_stained_glass
fill ^37 ^19 ^-17 ^39 ^19 ^-17 light_blue_concrete
setblock ^36 ^20 ^-17 light_blue_concrete
setblock ^40 ^20 ^-17 light_blue_concrete
setblock ^36 ^21 ^-17 blue_stained_glass
setblock ^40 ^21 ^-17 blue_stained_glass
fill ^37 ^19 ^-16 ^39 ^19 ^-16 light_blue_concrete
setblock ^36 ^20 ^-16 light_blue_concrete
setblock ^40 ^20 ^-16 light_blue_concrete
setblock ^36 ^21 ^-16 blue_stained_glass
setblock ^40 ^21 ^-16 blue_stained_glass
fill ^37 ^18 ^-15 ^39 ^18 ^-15 light_blue_concrete
setblock ^36 ^19 ^-15 light_blue_concrete
setblock ^40 ^19 ^-15 light_blue_concrete
setblock ^36 ^20 ^-15 blue_stained_glass
setblock ^40 ^20 ^-15 blue_stained_glass
fill ^37 ^18 ^-14 ^39 ^18 ^-14 light_blue_concrete
setblock ^36 ^19 ^-14 light_blue_concrete
setblock ^40 ^19 ^-14 light_blue_concrete
setblock ^36 ^20 ^-14 blue_stained_glass
setblock ^40 ^20 ^-14 blue_stained_glass
fill ^37 ^18 ^-13 ^39 ^18 ^-13 light_blue_concrete
setblock ^36 ^19 ^-13 light_blue_concrete
setblock ^40 ^19 ^-13 light_blue_concrete
setblock ^36 ^20 ^-13 blue_stained_glass
setblock ^40 ^20 ^-13 blue_stained_glass
fill ^37 ^18 ^-12 ^39 ^18 ^-12 light_blue_concrete
setblock ^36 ^19 ^-12 light_blue_concrete
setblock ^40 ^19 ^-12 light_blue_concrete
setblock ^36 ^20 ^-12 blue_stained_glass
setblock ^40 ^20 ^-12 blue_stained_glass
fill ^37 ^18 ^-11 ^39 ^18 ^-11 light_blue_concrete
setblock ^36 ^19 ^-11 light_blue_concrete
setblock ^40 ^19 ^-11 light_blue_concrete
setblock ^36 ^20 ^-11 blue_stained_glass
setblock ^40 ^20 ^-11 blue_stained_glass
fill ^37 ^18 ^-10 ^39 ^18 ^-10 light_blue_concrete
setblock ^36 ^19 ^-10 light_blue_concrete
setblock ^40 ^19 ^-10 light_blue_concrete
setblock ^36 ^20 ^-10 blue_stained_glass
setblock ^40 ^20 ^-10 blue_stained_glass
fill ^37 ^18 ^-9 ^39 ^18 ^-9 light_blue_concrete
setblock ^36 ^19 ^-9 light_blue_concrete
setblock ^40 ^19 ^-9 light_blue_concrete
setblock ^36 ^20 ^-9 blue_stained_glass
setblock ^40 ^20 ^-9 blue_stained_glass
setblock ^40 ^19 ^-9 sea_lantern
fill ^37 ^18 ^-8 ^39 ^18 ^-8 light_blue_concrete
setblock ^36 ^19 ^-8 light_blue_concrete
setblock ^40 ^19 ^-8 light_blue_concrete
setblock ^36 ^20 ^-8 blue_stained_glass
setblock ^40 ^20 ^-8 blue_stained_glass
fill ^37 ^18 ^-7 ^39 ^18 ^-7 light_blue_concrete
setblock ^36 ^19 ^-7 light_blue_concrete
setblock ^40 ^19 ^-7 light_blue_concrete
setblock ^36 ^20 ^-7 blue_stained_glass
setblock ^40 ^20 ^-7 blue_stained_glass
fill ^37 ^17 ^-6 ^39 ^17 ^-6 cyan_concrete
setblock ^36 ^18 ^-6 white_concrete
setblock ^40 ^18 ^-6 white_concrete
setblock ^36 ^19 ^-6 blue_stained_glass
setblock ^40 ^19 ^-6 blue_stained_glass
fill ^37 ^17 ^-5 ^39 ^17 ^-5 cyan_concrete
setblock ^36 ^18 ^-5 white_concrete
setblock ^40 ^18 ^-5 white_concrete
setblock ^36 ^19 ^-5 blue_stained_glass
setblock ^40 ^19 ^-5 blue_stained_glass
fill ^37 ^17 ^-4 ^39 ^17 ^-4 cyan_concrete
setblock ^36 ^18 ^-4 white_concrete
setblock ^40 ^18 ^-4 white_concrete
setblock ^36 ^19 ^-4 blue_stained_glass
setblock ^40 ^19 ^-4 blue_stained_glass
fill ^37 ^17 ^-3 ^39 ^17 ^-3 cyan_concrete
setblock ^36 ^18 ^-3 white_concrete
setblock ^40 ^18 ^-3 white_concrete
setblock ^36 ^19 ^-3 blue_stained_glass
setblock ^40 ^19 ^-3 blue_stained_glass
fill ^37 ^17 ^-2 ^39 ^17 ^-2 cyan_concrete
setblock ^36 ^18 ^-2 white_concrete
setblock ^40 ^18 ^-2 white_concrete
setblock ^36 ^19 ^-2 blue_stained_glass
setblock ^40 ^19 ^-2 blue_stained_glass
fill ^37 ^17 ^-1 ^39 ^17 ^-1 cyan_concrete
setblock ^36 ^18 ^-1 white_concrete
setblock ^40 ^18 ^-1 white_concrete
setblock ^36 ^19 ^-1 blue_stained_glass
setblock ^40 ^19 ^-1 blue_stained_glass
fill ^37 ^17 ^0 ^39 ^17 ^0 cyan_concrete
setblock ^36 ^18 ^0 white_concrete
setblock ^40 ^18 ^0 white_concrete
setblock ^36 ^19 ^0 blue_stained_glass
setblock ^40 ^19 ^0 blue_stained_glass
fill ^37 ^17 ^1 ^39 ^17 ^1 cyan_concrete
setblock ^36 ^18 ^1 white_concrete
setblock ^40 ^18 ^1 white_concrete
setblock ^36 ^19 ^1 blue_stained_glass
setblock ^40 ^19 ^1 blue_stained_glass
fill ^37 ^17 ^2 ^39 ^17 ^2 cyan_concrete
setblock ^36 ^18 ^2 white_concrete
setblock ^40 ^18 ^2 white_concrete
setblock ^36 ^19 ^2 blue_stained_glass
setblock ^40 ^19 ^2 blue_stained_glass
fill ^37 ^16 ^3 ^39 ^16 ^3 cyan_concrete
setblock ^36 ^17 ^3 white_concrete
setblock ^40 ^17 ^3 white_concrete
setblock ^36 ^18 ^3 blue_stained_glass
setblock ^40 ^18 ^3 blue_stained_glass
fill ^37 ^16 ^4 ^39 ^16 ^4 cyan_concrete
setblock ^36 ^17 ^4 white_concrete
setblock ^40 ^17 ^4 white_concrete
setblock ^36 ^18 ^4 blue_stained_glass
setblock ^40 ^18 ^4 blue_stained_glass
fill ^37 ^16 ^5 ^39 ^16 ^5 cyan_concrete
setblock ^36 ^17 ^5 white_concrete
setblock ^40 ^17 ^5 white_concrete
setblock ^36 ^18 ^5 blue_stained_glass
setblock ^40 ^18 ^5 blue_stained_glass
fill ^37 ^16 ^6 ^39 ^16 ^6 cyan_concrete
setblock ^36 ^17 ^6 white_concrete
setblock ^40 ^17 ^6 white_concrete
setblock ^36 ^18 ^6 blue_stained_glass
setblock ^40 ^18 ^6 blue_stained_glass
setblock ^40 ^17 ^6 sea_lantern
fill ^37 ^16 ^7 ^39 ^16 ^7 cyan_concrete
setblock ^36 ^17 ^7 white_concrete
setblock ^40 ^17 ^7 white_concrete
setblock ^36 ^18 ^7 blue_stained_glass
setblock ^40 ^18 ^7 blue_stained_glass
fill ^37 ^16 ^8 ^39 ^16 ^8 cyan_concrete
setblock ^36 ^17 ^8 white_concrete
setblock ^40 ^17 ^8 white_concrete
setblock ^36 ^18 ^8 blue_stained_glass
setblock ^40 ^18 ^8 blue_stained_glass
fill ^37 ^16 ^9 ^39 ^16 ^9 cyan_concrete
setblock ^36 ^17 ^9 white_concrete
setblock ^40 ^17 ^9 white_concrete
setblock ^36 ^18 ^9 blue_stained_glass
setblock ^40 ^18 ^9 blue_stained_glass
fill ^37 ^16 ^10 ^39 ^16 ^10 cyan_concrete
setblock ^36 ^17 ^10 light_blue_concrete
setblock ^40 ^17 ^10 light_blue_concrete
setblock ^36 ^18 ^10 blue_stained_glass
setblock ^40 ^18 ^10 blue_stained_glass
fill ^37 ^16 ^11 ^39 ^16 ^11 cyan_concrete
setblock ^36 ^17 ^11 light_blue_concrete
setblock ^40 ^17 ^11 light_blue_concrete
setblock ^36 ^18 ^11 blue_stained_glass
setblock ^40 ^18 ^11 blue_stained_glass
fill ^37 ^15 ^12 ^39 ^15 ^12 cyan_concrete
setblock ^36 ^16 ^12 light_blue_concrete
setblock ^40 ^16 ^12 light_blue_concrete
setblock ^36 ^17 ^12 blue_stained_glass
setblock ^40 ^17 ^12 blue_stained_glass
fill ^37 ^15 ^13 ^39 ^15 ^13 cyan_concrete
setblock ^36 ^16 ^13 light_blue_concrete
setblock ^40 ^16 ^13 light_blue_concrete
setblock ^36 ^17 ^13 blue_stained_glass
setblock ^40 ^17 ^13 blue_stained_glass
fill ^37 ^15 ^14 ^39 ^15 ^14 cyan_concrete
setblock ^36 ^16 ^14 light_blue_concrete
setblock ^40 ^16 ^14 light_blue_concrete
setblock ^36 ^17 ^14 blue_stained_glass
setblock ^40 ^17 ^14 blue_stained_glass
fill ^37 ^15 ^15 ^39 ^15 ^15 cyan_concrete
setblock ^36 ^16 ^15 light_blue_concrete
setblock ^40 ^16 ^15 light_blue_concrete
setblock ^36 ^17 ^15 blue_stained_glass
setblock ^40 ^17 ^15 blue_stained_glass
fill ^37 ^15 ^16 ^39 ^15 ^16 cyan_concrete
setblock ^36 ^16 ^16 light_blue_concrete
setblock ^40 ^16 ^16 light_blue_concrete
setblock ^36 ^17 ^16 blue_stained_glass
setblock ^40 ^17 ^16 blue_stained_glass
fill ^37 ^15 ^17 ^39 ^15 ^17 cyan_concrete
setblock ^36 ^16 ^17 light_blue_concrete
setblock ^40 ^16 ^17 light_blue_concrete
setblock ^36 ^17 ^17 blue_stained_glass
setblock ^40 ^17 ^17 blue_stained_glass
fill ^37 ^15 ^18 ^39 ^15 ^18 light_blue_concrete
setblock ^36 ^16 ^18 light_blue_concrete
setblock ^40 ^16 ^18 light_blue_concrete
setblock ^36 ^17 ^18 blue_stained_glass
setblock ^40 ^17 ^18 blue_stained_glass
fill ^37 ^15 ^19 ^39 ^15 ^19 light_blue_concrete
setblock ^36 ^16 ^19 light_blue_concrete
setblock ^40 ^16 ^19 light_blue_concrete
setblock ^36 ^17 ^19 blue_stained_glass
setblock ^40 ^17 ^19 blue_stained_glass
fill ^37 ^15 ^20 ^39 ^15 ^20 light_blue_concrete
setblock ^36 ^16 ^20 light_blue_concrete
setblock ^40 ^16 ^20 light_blue_concrete
setblock ^36 ^17 ^20 blue_stained_glass
setblock ^40 ^17 ^20 blue_stained_glass
fill ^37 ^14 ^21 ^39 ^14 ^21 light_blue_concrete
setblock ^36 ^15 ^21 light_blue_concrete
setblock ^40 ^15 ^21 light_blue_concrete
setblock ^36 ^16 ^21 blue_stained_glass
setblock ^40 ^16 ^21 blue_stained_glass
setblock ^40 ^15 ^21 sea_lantern
fill ^37 ^14 ^22 ^39 ^14 ^22 light_blue_concrete
setblock ^36 ^15 ^22 light_blue_concrete
setblock ^40 ^15 ^22 light_blue_concrete
setblock ^36 ^16 ^22 blue_stained_glass
setblock ^40 ^16 ^22 blue_stained_glass
fill ^37 ^14 ^23 ^39 ^14 ^23 light_blue_concrete
setblock ^36 ^15 ^23 light_blue_concrete
setblock ^40 ^15 ^23 light_blue_concrete
setblock ^36 ^16 ^23 blue_stained_glass
setblock ^40 ^16 ^23 blue_stained_glass
fill ^37 ^14 ^24 ^39 ^14 ^24 light_blue_concrete
setblock ^36 ^15 ^24 light_blue_concrete
setblock ^40 ^15 ^24 light_blue_concrete
setblock ^36 ^16 ^24 blue_stained_glass
setblock ^40 ^16 ^24 blue_stained_glass
fill ^37 ^14 ^25 ^39 ^14 ^25 light_blue_concrete
setblock ^36 ^15 ^25 light_blue_concrete
setblock ^40 ^15 ^25 light_blue_concrete
setblock ^36 ^16 ^25 blue_stained_glass
setblock ^40 ^16 ^25 blue_stained_glass
fill ^37 ^14 ^26 ^39 ^14 ^26 light_blue_concrete
setblock ^36 ^15 ^26 white_concrete
setblock ^40 ^15 ^26 white_concrete
setblock ^36 ^16 ^26 blue_stained_glass
setblock ^40 ^16 ^26 blue_stained_glass
fill ^37 ^14 ^27 ^39 ^14 ^27 light_blue_concrete
setblock ^36 ^15 ^27 white_concrete
setblock ^40 ^15 ^27 white_concrete
setblock ^36 ^16 ^27 blue_stained_glass
setblock ^40 ^16 ^27 blue_stained_glass
fill ^37 ^14 ^28 ^39 ^14 ^28 light_blue_concrete
setblock ^36 ^15 ^28 white_concrete
setblock ^40 ^15 ^28 white_concrete
setblock ^36 ^16 ^28 blue_stained_glass
setblock ^40 ^16 ^28 blue_stained_glass
fill ^37 ^14 ^29 ^39 ^14 ^29 light_blue_concrete
setblock ^36 ^15 ^29 white_concrete
setblock ^40 ^15 ^29 white_concrete
setblock ^36 ^16 ^29 blue_stained_glass
setblock ^40 ^16 ^29 blue_stained_glass
fill ^37 ^13 ^30 ^39 ^13 ^30 light_blue_concrete
setblock ^36 ^14 ^30 white_concrete
setblock ^40 ^14 ^30 white_concrete
setblock ^36 ^15 ^30 blue_stained_glass
setblock ^40 ^15 ^30 blue_stained_glass
fill ^37 ^13 ^31 ^39 ^13 ^31 light_blue_concrete
setblock ^36 ^14 ^31 white_concrete
setblock ^40 ^14 ^31 white_concrete
setblock ^36 ^15 ^31 blue_stained_glass
setblock ^40 ^15 ^31 blue_stained_glass
fill ^37 ^13 ^32 ^39 ^13 ^32 light_blue_concrete
setblock ^36 ^14 ^32 white_concrete
setblock ^40 ^14 ^32 white_concrete
setblock ^36 ^15 ^32 blue_stained_glass
setblock ^40 ^15 ^32 blue_stained_glass
fill ^37 ^13 ^33 ^39 ^13 ^33 light_blue_concrete
setblock ^36 ^14 ^33 white_concrete
setblock ^40 ^14 ^33 white_concrete
setblock ^36 ^15 ^33 blue_stained_glass
setblock ^40 ^15 ^33 blue_stained_glass
fill ^37 ^13 ^34 ^39 ^13 ^34 light_blue_concrete
setblock ^36 ^14 ^34 white_concrete
setblock ^40 ^14 ^34 white_concrete
setblock ^36 ^15 ^34 blue_stained_glass
setblock ^40 ^15 ^34 blue_stained_glass
fill ^37 ^13 ^35 ^39 ^13 ^35 light_blue_concrete
setblock ^36 ^14 ^35 white_concrete
setblock ^40 ^14 ^35 white_concrete
setblock ^36 ^15 ^35 blue_stained_glass
setblock ^40 ^15 ^35 blue_stained_glass
fill ^37 ^13 ^36 ^39 ^13 ^36 light_blue_concrete
setblock ^36 ^14 ^36 white_concrete
setblock ^40 ^14 ^36 white_concrete
setblock ^36 ^15 ^36 blue_stained_glass
setblock ^40 ^15 ^36 blue_stained_glass
setblock ^40 ^14 ^36 sea_lantern
fill ^37 ^13 ^37 ^39 ^13 ^37 light_blue_concrete
setblock ^36 ^14 ^37 white_concrete
setblock ^40 ^14 ^37 white_concrete
setblock ^36 ^15 ^37 blue_stained_glass
setblock ^40 ^15 ^37 blue_stained_glass
fill ^37 ^13 ^38 ^39 ^13 ^38 light_blue_concrete
setblock ^36 ^14 ^38 white_concrete
setblock ^40 ^14 ^38 white_concrete
setblock ^36 ^15 ^38 blue_stained_glass
setblock ^40 ^15 ^38 blue_stained_glass
fill ^37 ^12 ^37 ^37 ^12 ^39 light_blue_concrete
setblock ^37 ^13 ^36 white_concrete
setblock ^37 ^13 ^40 white_concrete
setblock ^37 ^14 ^36 blue_stained_glass
setblock ^37 ^14 ^40 blue_stained_glass
fill ^36 ^12 ^37 ^36 ^12 ^39 light_blue_concrete
setblock ^36 ^13 ^36 white_concrete
setblock ^36 ^13 ^40 white_concrete
setblock ^36 ^14 ^36 blue_stained_glass
setblock ^36 ^14 ^40 blue_stained_glass
fill ^35 ^12 ^37 ^35 ^12 ^39 light_blue_concrete
setblock ^35 ^13 ^36 white_concrete
setblock ^35 ^13 ^40 white_concrete
setblock ^35 ^14 ^36 blue_stained_glass
setblock ^35 ^14 ^40 blue_stained_glass
fill ^34 ^12 ^37 ^34 ^12 ^39 cyan_concrete
setblock ^34 ^13 ^36 light_blue_concrete
setblock ^34 ^13 ^40 light_blue_concrete
setblock ^34 ^14 ^36 blue_stained_glass
setblock ^34 ^14 ^40 blue_stained_glass
fill ^33 ^12 ^37 ^33 ^12 ^39 cyan_concrete
setblock ^33 ^13 ^36 light_blue_concrete
setblock ^33 ^13 ^40 light_blue_concrete
setblock ^33 ^14 ^36 blue_stained_glass
setblock ^33 ^14 ^40 blue_stained_glass
fill ^32 ^12 ^37 ^32 ^12 ^39 cyan_concrete
setblock ^32 ^13 ^36 light_blue_concrete
setblock ^32 ^13 ^40 light_blue_concrete
setblock ^32 ^14 ^36 blue_stained_glass
setblock ^32 ^14 ^40 blue_stained_glass
fill ^31 ^12 ^37 ^31 ^12 ^39 cyan_concrete
setblock ^31 ^13 ^36 light_blue_concrete
setblock ^31 ^13 ^40 light_blue_concrete
setblock ^31 ^14 ^36 blue_stained_glass
setblock ^31 ^14 ^40 blue_stained_glass
fill ^30 ^12 ^37 ^30 ^12 ^39 cyan_concrete
setblock ^30 ^13 ^36 light_blue_concrete
setblock ^30 ^13 ^40 light_blue_concrete
setblock ^30 ^14 ^36 blue_stained_glass
setblock ^30 ^14 ^40 blue_stained_glass
fill ^29 ^12 ^37 ^29 ^12 ^39 cyan_concrete
setblock ^29 ^13 ^36 light_blue_concrete
setblock ^29 ^13 ^40 light_blue_concrete
setblock ^29 ^14 ^36 blue_stained_glass
setblock ^29 ^14 ^40 blue_stained_glass
fill ^28 ^11 ^37 ^28 ^11 ^39 cyan_concrete
setblock ^28 ^12 ^36 light_blue_concrete
setblock ^28 ^12 ^40 light_blue_concrete
setblock ^28 ^13 ^36 blue_stained_glass
setblock ^28 ^13 ^40 blue_stained_glass
fill ^27 ^11 ^37 ^27 ^11 ^39 cyan_concrete
setblock ^27 ^12 ^36 light_blue_concrete
setblock ^27 ^12 ^40 light_blue_concrete
setblock ^27 ^13 ^36 blue_stained_glass
setblock ^27 ^13 ^40 blue_stained_glass
fill ^26 ^11 ^37 ^26 ^11 ^39 cyan_concrete
setblock ^26 ^12 ^36 light_blue_concrete
setblock ^26 ^12 ^40 light_blue_concrete
setblock ^26 ^13 ^36 blue_stained_glass
setblock ^26 ^13 ^40 blue_stained_glass
fill ^25 ^11 ^37 ^25 ^11 ^39 cyan_concrete
setblock ^25 ^12 ^36 light_blue_concrete
setblock ^25 ^12 ^40 light_blue_concrete
setblock ^25 ^13 ^36 blue_stained_glass
setblock ^25 ^13 ^40 blue_stained_glass
setblock ^25 ^12 ^40 sea_lantern
fill ^24 ^11 ^37 ^24 ^11 ^39 cyan_concrete
setblock ^24 ^12 ^36 light_blue_concrete
setblock ^24 ^12 ^40 light_blue_concrete
setblock ^24 ^13 ^36 blue_stained_glass
setblock ^24 ^13 ^40 blue_stained_glass
fill ^23 ^11 ^37 ^23 ^11 ^39 cyan_concrete
setblock ^23 ^12 ^36 light_blue_concrete
setblock ^23 ^12 ^40 light_blue_concrete
setblock ^23 ^13 ^36 blue_stained_glass
setblock ^23 ^13 ^40 blue_stained_glass
fill ^22 ^11 ^37 ^22 ^11 ^39 cyan_concrete
setblock ^22 ^12 ^36 light_blue_concrete
setblock ^22 ^12 ^40 light_blue_concrete
setblock ^22 ^13 ^36 blue_stained_glass
setblock ^22 ^13 ^40 blue_stained_glass
fill ^21 ^11 ^37 ^21 ^11 ^39 cyan_concrete
setblock ^21 ^12 ^36 light_blue_concrete
setblock ^21 ^12 ^40 light_blue_concrete
setblock ^21 ^13 ^36 blue_stained_glass
setblock ^21 ^13 ^40 blue_stained_glass
fill ^20 ^11 ^37 ^20 ^11 ^39 cyan_concrete
setblock ^20 ^12 ^36 light_blue_concrete
setblock ^20 ^12 ^40 light_blue_concrete
setblock ^20 ^13 ^36 blue_stained_glass
setblock ^20 ^13 ^40 blue_stained_glass
fill ^19 ^10 ^37 ^19 ^10 ^39 cyan_concrete
setblock ^19 ^11 ^36 light_blue_concrete
setblock ^19 ^11 ^40 light_blue_concrete
setblock ^19 ^12 ^36 blue_stained_glass
setblock ^19 ^12 ^40 blue_stained_glass
fill ^18 ^10 ^37 ^18 ^10 ^39 cyan_concrete
setblock ^18 ^11 ^36 white_concrete
setblock ^18 ^11 ^40 white_concrete
setblock ^18 ^12 ^36 blue_stained_glass
setblock ^18 ^12 ^40 blue_stained_glass
fill ^17 ^10 ^37 ^17 ^10 ^39 cyan_concrete
setblock ^17 ^11 ^36 white_concrete
setblock ^17 ^11 ^40 white_concrete
setblock ^17 ^12 ^36 blue_stained_glass
setblock ^17 ^12 ^40 blue_stained_glass
fill ^16 ^10 ^37 ^16 ^10 ^39 cyan_concrete
setblock ^16 ^11 ^36 white_concrete
setblock ^16 ^11 ^40 white_concrete
setblock ^16 ^12 ^36 blue_stained_glass
setblock ^16 ^12 ^40 blue_stained_glass
fill ^15 ^10 ^37 ^15 ^10 ^39 cyan_concrete
setblock ^15 ^11 ^36 white_concrete
setblock ^15 ^11 ^40 white_concrete
setblock ^15 ^12 ^36 blue_stained_glass
setblock ^15 ^12 ^40 blue_stained_glass
fill ^14 ^10 ^37 ^14 ^10 ^39 cyan_concrete
setblock ^14 ^11 ^36 white_concrete
setblock ^14 ^11 ^40 white_concrete
setblock ^14 ^12 ^36 blue_stained_glass
setblock ^14 ^12 ^40 blue_stained_glass
fill ^13 ^10 ^37 ^13 ^10 ^39 cyan_concrete
setblock ^13 ^11 ^36 white_concrete
setblock ^13 ^11 ^40 white_concrete
setblock ^13 ^12 ^36 blue_stained_glass
setblock ^13 ^12 ^40 blue_stained_glass
fill ^12 ^10 ^37 ^12 ^10 ^39 cyan_concrete
setblock ^12 ^11 ^36 white_concrete
setblock ^12 ^11 ^40 white_concrete
setblock ^12 ^12 ^36 blue_stained_glass
setblock ^12 ^12 ^40 blue_stained_glass
fill ^11 ^10 ^37 ^11 ^10 ^39 cyan_concrete
setblock ^11 ^11 ^36 white_concrete
setblock ^11 ^11 ^40 white_concrete
setblock ^11 ^12 ^36 blue_stained_glass
setblock ^11 ^12 ^40 blue_stained_glass
fill ^10 ^9 ^37 ^10 ^9 ^39 light_blue_concrete
setblock ^10 ^10 ^36 white_concrete
setblock ^10 ^10 ^40 white_concrete
setblock ^10 ^11 ^36 blue_stained_glass
setblock ^10 ^11 ^40 blue_stained_glass
setblock ^10 ^10 ^40 sea_lantern
fill ^9 ^9 ^37 ^9 ^9 ^39 light_blue_concrete
setblock ^9 ^10 ^36 white_concrete
setblock ^9 ^10 ^40 white_concrete
setblock ^9 ^11 ^36 blue_stained_glass
setblock ^9 ^11 ^40 blue_stained_glass
fill ^8 ^9 ^37 ^8 ^9 ^39 light_blue_concrete
setblock ^8 ^10 ^36 white_concrete
setblock ^8 ^10 ^40 white_concrete
setblock ^8 ^11 ^36 blue_stained_glass
setblock ^8 ^11 ^40 blue_stained_glass
fill ^7 ^9 ^37 ^7 ^9 ^39 light_blue_concrete
setblock ^7 ^10 ^36 white_concrete
setblock ^7 ^10 ^40 white_concrete
setblock ^7 ^11 ^36 blue_stained_glass
setblock ^7 ^11 ^40 blue_stained_glass
fill ^6 ^9 ^37 ^6 ^9 ^39 light_blue_concrete
setblock ^6 ^10 ^36 white_concrete
setblock ^6 ^10 ^40 white_concrete
setblock ^6 ^11 ^36 blue_stained_glass
setblock ^6 ^11 ^40 blue_stained_glass
fill ^5 ^9 ^37 ^5 ^9 ^39 light_blue_concrete
setblock ^5 ^10 ^36 white_concrete
setblock ^5 ^10 ^40 white_concrete
setblock ^5 ^11 ^36 blue_stained_glass
setblock ^5 ^11 ^40 blue_stained_glass
fill ^4 ^9 ^37 ^4 ^9 ^39 light_blue_concrete
setblock ^4 ^10 ^36 white_concrete
setblock ^4 ^10 ^40 white_concrete
setblock ^4 ^11 ^36 blue_stained_glass
setblock ^4 ^11 ^40 blue_stained_glass
fill ^3 ^9 ^37 ^3 ^9 ^39 light_blue_concrete
setblock ^3 ^10 ^36 white_concrete
setblock ^3 ^10 ^40 white_concrete
setblock ^3 ^11 ^36 blue_stained_glass
setblock ^3 ^11 ^40 blue_stained_glass
fill ^2 ^9 ^37 ^2 ^9 ^39 light_blue_concrete
setblock ^2 ^10 ^36 light_blue_concrete
setblock ^2 ^10 ^40 light_blue_concrete
setblock ^2 ^11 ^36 blue_stained_glass
setblock ^2 ^11 ^40 blue_stained_glass
fill ^1 ^8 ^37 ^1 ^8 ^39 light_blue_concrete
setblock ^1 ^9 ^36 light_blue_concrete
setblock ^1 ^9 ^40 light_blue_concrete
setblock ^1 ^10 ^36 blue_stained_glass
setblock ^1 ^10 ^40 blue_stained_glass
fill ^0 ^8 ^37 ^0 ^8 ^39 light_blue_concrete
setblock ^0 ^9 ^36 light_blue_concrete
setblock ^0 ^9 ^40 light_blue_concrete
setblock ^0 ^10 ^36 blue_stained_glass
setblock ^0 ^10 ^40 blue_stained_glass
fill ^-1 ^8 ^37 ^-1 ^8 ^39 light_blue_concrete
setblock ^-1 ^9 ^36 light_blue_concrete
setblock ^-1 ^9 ^40 light_blue_concrete
setblock ^-1 ^10 ^36 blue_stained_glass
setblock ^-1 ^10 ^40 blue_stained_glass
fill ^-2 ^8 ^37 ^-2 ^8 ^39 light_blue_concrete
setblock ^-2 ^9 ^36 light_blue_concrete
setblock ^-2 ^9 ^40 light_blue_concrete
setblock ^-2 ^10 ^36 blue_stained_glass
setblock ^-2 ^10 ^40 blue_stained_glass
fill ^-3 ^8 ^37 ^-3 ^8 ^39 light_blue_concrete
setblock ^-3 ^9 ^36 light_blue_concrete
setblock ^-3 ^9 ^40 light_blue_concrete
setblock ^-3 ^10 ^36 blue_stained_glass
setblock ^-3 ^10 ^40 blue_stained_glass
fill ^-4 ^8 ^37 ^-4 ^8 ^39 light_blue_concrete
setblock ^-4 ^9 ^36 light_blue_concrete
setblock ^-4 ^9 ^40 light_blue_concrete
setblock ^-4 ^10 ^36 blue_stained_glass
setblock ^-4 ^10 ^40 blue_stained_glass
fill ^-5 ^8 ^37 ^-5 ^8 ^39 light_blue_concrete
setblock ^-5 ^9 ^36 light_blue_concrete
setblock ^-5 ^9 ^40 light_blue_concrete
setblock ^-5 ^10 ^36 blue_stained_glass
setblock ^-5 ^10 ^40 blue_stained_glass
setblock ^-5 ^9 ^40 sea_lantern
fill ^-6 ^8 ^37 ^-6 ^8 ^39 light_blue_concrete
setblock ^-6 ^9 ^36 light_blue_concrete
setblock ^-6 ^9 ^40 light_blue_concrete
setblock ^-6 ^10 ^36 blue_stained_glass
setblock ^-6 ^10 ^40 blue_stained_glass
fill ^-7 ^8 ^37 ^-7 ^8 ^39 light_blue_concrete
setblock ^-7 ^9 ^36 light_blue_concrete
setblock ^-7 ^9 ^40 light_blue_concrete
setblock ^-7 ^10 ^36 blue_stained_glass
setblock ^-7 ^10 ^40 blue_stained_glass
fill ^-8 ^7 ^37 ^-8 ^7 ^39 light_blue_concrete
setblock ^-8 ^8 ^36 light_blue_concrete
setblock ^-8 ^8 ^40 light_blue_concrete
setblock ^-8 ^9 ^36 blue_stained_glass
setblock ^-8 ^9 ^40 blue_stained_glass
fill ^-9 ^7 ^37 ^-9 ^7 ^39 light_blue_concrete
setblock ^-9 ^8 ^36 light_blue_concrete
setblock ^-9 ^8 ^40 light_blue_concrete
setblock ^-9 ^9 ^36 blue_stained_glass
setblock ^-9 ^9 ^40 blue_stained_glass
fill ^-10 ^7 ^37 ^-10 ^7 ^39 light_blue_concrete
setblock ^-10 ^8 ^36 light_blue_concrete
setblock ^-10 ^8 ^40 light_blue_concrete
setblock ^-10 ^9 ^36 blue_stained_glass
setblock ^-10 ^9 ^40 blue_stained_glass
fill ^-11 ^7 ^39 ^-9 ^7 ^39 light_blue_concrete
setblock ^-12 ^8 ^39 light_blue_concrete
setblock ^-8 ^8 ^39 light_blue_concrete
setblock ^-12 ^9 ^39 blue_stained_glass
setblock ^-8 ^9 ^39 blue_stained_glass
fill ^-11 ^7 ^40 ^-9 ^7 ^40 light_blue_concrete
setblock ^-12 ^8 ^40 light_blue_concrete
setblock ^-8 ^8 ^40 light_blue_concrete
setblock ^-12 ^9 ^40 blue_stained_glass
setblock ^-8 ^9 ^40 blue_stained_glass
fill ^-11 ^6 ^41 ^-9 ^6 ^41 light_blue_concrete
setblock ^-12 ^7 ^41 light_blue_concrete
setblock ^-8 ^7 ^41 light_blue_concrete
setblock ^-12 ^8 ^41 blue_stained_glass
setblock ^-8 ^8 ^41 blue_stained_glass
fill ^-11 ^6 ^42 ^-9 ^6 ^42 cyan_concrete
setblock ^-12 ^7 ^42 white_concrete
setblock ^-8 ^7 ^42 white_concrete
setblock ^-12 ^8 ^42 blue_stained_glass
setblock ^-8 ^8 ^42 blue_stained_glass
fill ^-11 ^6 ^43 ^-9 ^6 ^43 cyan_concrete
setblock ^-12 ^7 ^43 white_concrete
setblock ^-8 ^7 ^43 white_concrete
setblock ^-12 ^8 ^43 blue_stained_glass
setblock ^-8 ^8 ^43 blue_stained_glass
fill ^-11 ^5 ^44 ^-9 ^5 ^44 cyan_concrete
setblock ^-12 ^6 ^44 white_concrete
setblock ^-8 ^6 ^44 white_concrete
setblock ^-12 ^7 ^44 blue_stained_glass
setblock ^-8 ^7 ^44 blue_stained_glass
fill ^-11 ^4 ^45 ^-9 ^4 ^45 cyan_concrete
setblock ^-12 ^5 ^45 white_concrete
setblock ^-8 ^5 ^45 white_concrete
setblock ^-12 ^6 ^45 blue_stained_glass
setblock ^-8 ^6 ^45 blue_stained_glass

# --- SUPPORT COLUMNS ---
fill ^10 ^0 ^-8 ^10 ^49 ^-8 white_concrete
fill ^10 ^0 ^-4 ^10 ^49 ^-4 white_concrete
fill ^22 ^0 ^-8 ^22 ^48 ^-8 white_concrete
fill ^22 ^0 ^-4 ^22 ^48 ^-4 white_concrete
fill ^34 ^0 ^-8 ^34 ^47 ^-8 white_concrete
fill ^34 ^0 ^-4 ^34 ^47 ^-4 white_concrete
fill ^32 ^0 ^6 ^32 ^45 ^6 white_concrete
fill ^36 ^0 ^6 ^36 ^45 ^6 white_concrete
fill ^32 ^0 ^18 ^32 ^44 ^18 white_concrete
fill ^36 ^0 ^18 ^36 ^44 ^18 white_concrete
fill ^32 ^0 ^30 ^32 ^43 ^30 white_concrete
fill ^36 ^0 ^30 ^36 ^43 ^30 white_concrete
fill ^22 ^0 ^28 ^22 ^41 ^28 white_concrete
fill ^22 ^0 ^32 ^22 ^41 ^32 white_concrete
fill ^10 ^0 ^28 ^10 ^40 ^28 white_concrete
fill ^10 ^0 ^32 ^10 ^40 ^32 white_concrete
fill ^-2 ^0 ^28 ^-2 ^39 ^28 white_concrete
fill ^-2 ^0 ^32 ^-2 ^39 ^32 white_concrete
fill ^-14 ^0 ^28 ^-14 ^37 ^28 white_concrete
fill ^-14 ^0 ^32 ^-14 ^37 ^32 white_concrete
fill ^-26 ^0 ^28 ^-26 ^36 ^28 white_concrete
fill ^-26 ^0 ^32 ^-26 ^36 ^32 white_concrete
fill ^-34 ^0 ^24 ^-34 ^35 ^24 white_concrete
fill ^-30 ^0 ^24 ^-30 ^35 ^24 white_concrete
fill ^-34 ^0 ^12 ^-34 ^33 ^12 white_concrete
fill ^-30 ^0 ^12 ^-30 ^33 ^12 white_concrete
fill ^-34 ^0 ^0 ^-34 ^32 ^0 white_concrete
fill ^-30 ^0 ^0 ^-30 ^32 ^0 white_concrete
fill ^-34 ^0 ^-12 ^-34 ^31 ^-12 white_concrete
fill ^-30 ^0 ^-12 ^-30 ^31 ^-12 white_concrete
fill ^-34 ^0 ^-24 ^-34 ^29 ^-24 white_concrete
fill ^-30 ^0 ^-24 ^-30 ^29 ^-24 white_concrete
fill ^-30 ^0 ^-36 ^-30 ^28 ^-36 white_concrete
fill ^-30 ^0 ^-32 ^-30 ^28 ^-32 white_concrete
fill ^-18 ^0 ^-36 ^-18 ^27 ^-36 white_concrete
fill ^-18 ^0 ^-32 ^-18 ^27 ^-32 white_concrete
fill ^-6 ^0 ^-36 ^-6 ^25 ^-36 white_concrete
fill ^-6 ^0 ^-32 ^-6 ^25 ^-32 white_concrete
fill ^6 ^0 ^-36 ^6 ^24 ^-36 white_concrete
fill ^6 ^0 ^-32 ^6 ^24 ^-32 white_concrete
fill ^18 ^0 ^-36 ^18 ^23 ^-36 white_concrete
fill ^18 ^0 ^-32 ^18 ^23 ^-32 white_concrete
fill ^30 ^0 ^-36 ^30 ^21 ^-36 white_concrete
fill ^30 ^0 ^-32 ^30 ^21 ^-32 white_concrete
fill ^36 ^0 ^-30 ^36 ^20 ^-30 white_concrete
fill ^40 ^0 ^-30 ^40 ^20 ^-30 white_concrete
fill ^36 ^0 ^-18 ^36 ^19 ^-18 white_concrete
fill ^40 ^0 ^-18 ^40 ^19 ^-18 white_concrete
fill ^36 ^0 ^-6 ^36 ^17 ^-6 white_concrete
fill ^40 ^0 ^-6 ^40 ^17 ^-6 white_concrete
fill ^36 ^0 ^6 ^36 ^16 ^6 white_concrete
fill ^40 ^0 ^6 ^40 ^16 ^6 white_concrete
fill ^36 ^0 ^18 ^36 ^15 ^18 white_concrete
fill ^40 ^0 ^18 ^40 ^15 ^18 white_concrete
fill ^36 ^0 ^30 ^36 ^13 ^30 white_concrete
fill ^40 ^0 ^30 ^40 ^13 ^30 white_concrete
fill ^34 ^0 ^36 ^34 ^12 ^36 white_concrete
fill ^34 ^0 ^40 ^34 ^12 ^40 white_concrete
fill ^22 ^0 ^36 ^22 ^11 ^36 white_concrete
fill ^22 ^0 ^40 ^22 ^11 ^40 white_concrete
fill ^10 ^0 ^36 ^10 ^9 ^36 white_concrete
fill ^10 ^0 ^40 ^10 ^9 ^40 white_concrete
fill ^-2 ^0 ^36 ^-2 ^8 ^36 white_concrete
fill ^-2 ^0 ^40 ^-2 ^8 ^40 white_concrete

# --- GLASS TUNNEL SECTIONS ---
fill ^28 ^50 ^-8 ^28 ^50 ^-4 blue_stained_glass
fill ^29 ^50 ^-8 ^29 ^50 ^-4 blue_stained_glass
fill ^30 ^50 ^-8 ^30 ^50 ^-4 blue_stained_glass
fill ^31 ^50 ^-8 ^31 ^50 ^-4 blue_stained_glass
fill ^32 ^50 ^-8 ^32 ^50 ^-4 blue_stained_glass
fill ^33 ^50 ^-8 ^33 ^50 ^-4 blue_stained_glass
fill ^34 ^50 ^-8 ^34 ^50 ^-4 blue_stained_glass
fill ^32 ^50 ^-5 ^36 ^50 ^-5 blue_stained_glass
fill ^32 ^50 ^-4 ^36 ^50 ^-4 blue_stained_glass
fill ^32 ^49 ^-3 ^36 ^49 ^-3 blue_stained_glass
fill ^32 ^49 ^-2 ^36 ^49 ^-2 blue_stained_glass
fill ^32 ^49 ^-1 ^36 ^49 ^-1 blue_stained_glass
fill ^32 ^49 ^0 ^36 ^49 ^0 blue_stained_glass
fill ^28 ^45 ^28 ^28 ^45 ^32 blue_stained_glass
fill ^27 ^45 ^28 ^27 ^45 ^32 blue_stained_glass
fill ^26 ^45 ^28 ^26 ^45 ^32 blue_stained_glass
fill ^25 ^45 ^28 ^25 ^45 ^32 blue_stained_glass
fill ^24 ^45 ^28 ^24 ^45 ^32 blue_stained_glass
fill ^23 ^45 ^28 ^23 ^45 ^32 blue_stained_glass
fill ^22 ^44 ^28 ^22 ^44 ^32 blue_stained_glass
fill ^21 ^44 ^28 ^21 ^44 ^32 blue_stained_glass
fill ^20 ^44 ^28 ^20 ^44 ^32 blue_stained_glass
fill ^19 ^44 ^28 ^19 ^44 ^32 blue_stained_glass
fill ^18 ^44 ^28 ^18 ^44 ^32 blue_stained_glass
fill ^17 ^44 ^28 ^17 ^44 ^32 blue_stained_glass
fill ^16 ^44 ^28 ^16 ^44 ^32 blue_stained_glass
fill ^-20 ^40 ^28 ^-20 ^40 ^32 blue_stained_glass
fill ^-21 ^40 ^28 ^-21 ^40 ^32 blue_stained_glass
fill ^-22 ^40 ^28 ^-22 ^40 ^32 blue_stained_glass
fill ^-23 ^39 ^28 ^-23 ^39 ^32 blue_stained_glass
fill ^-24 ^39 ^28 ^-24 ^39 ^32 blue_stained_glass
fill ^-25 ^39 ^28 ^-25 ^39 ^32 blue_stained_glass
fill ^-26 ^39 ^28 ^-26 ^39 ^32 blue_stained_glass
fill ^-27 ^39 ^28 ^-27 ^39 ^32 blue_stained_glass
fill ^-28 ^39 ^28 ^-28 ^39 ^32 blue_stained_glass
fill ^-29 ^39 ^28 ^-29 ^39 ^32 blue_stained_glass
fill ^-30 ^39 ^28 ^-30 ^39 ^32 blue_stained_glass
fill ^-31 ^39 ^28 ^-31 ^39 ^32 blue_stained_glass
fill ^-32 ^38 ^28 ^-32 ^38 ^32 blue_stained_glass
fill ^-34 ^34 ^-6 ^-30 ^34 ^-6 blue_stained_glass
fill ^-34 ^34 ^-7 ^-30 ^34 ^-7 blue_stained_glass
fill ^-34 ^34 ^-8 ^-30 ^34 ^-8 blue_stained_glass
fill ^-34 ^34 ^-9 ^-30 ^34 ^-9 blue_stained_glass
fill ^-34 ^34 ^-10 ^-30 ^34 ^-10 blue_stained_glass
fill ^-34 ^34 ^-11 ^-30 ^34 ^-11 blue_stained_glass
fill ^-34 ^34 ^-12 ^-30 ^34 ^-12 blue_stained_glass
fill ^-34 ^34 ^-13 ^-30 ^34 ^-13 blue_stained_glass
fill ^-34 ^34 ^-14 ^-30 ^34 ^-14 blue_stained_glass
fill ^-34 ^33 ^-15 ^-30 ^33 ^-15 blue_stained_glass
fill ^-34 ^33 ^-16 ^-30 ^33 ^-16 blue_stained_glass
fill ^-34 ^33 ^-17 ^-30 ^33 ^-17 blue_stained_glass
fill ^-34 ^33 ^-18 ^-30 ^33 ^-18 blue_stained_glass
fill ^-12 ^29 ^-36 ^-12 ^29 ^-32 blue_stained_glass
fill ^-11 ^29 ^-36 ^-11 ^29 ^-32 blue_stained_glass
fill ^-10 ^29 ^-36 ^-10 ^29 ^-32 blue_stained_glass
fill ^-9 ^29 ^-36 ^-9 ^29 ^-32 blue_stained_glass
fill ^-8 ^29 ^-36 ^-8 ^29 ^-32 blue_stained_glass
fill ^-7 ^29 ^-36 ^-7 ^29 ^-32 blue_stained_glass
fill ^-6 ^28 ^-36 ^-6 ^28 ^-32 blue_stained_glass
fill ^-5 ^28 ^-36 ^-5 ^28 ^-32 blue_stained_glass
fill ^-4 ^28 ^-36 ^-4 ^28 ^-32 blue_stained_glass
fill ^-3 ^28 ^-36 ^-3 ^28 ^-32 blue_stained_glass
fill ^-2 ^28 ^-36 ^-2 ^28 ^-32 blue_stained_glass
fill ^-1 ^28 ^-36 ^-1 ^28 ^-32 blue_stained_glass
fill ^0 ^28 ^-36 ^0 ^28 ^-32 blue_stained_glass
fill ^36 ^24 ^-36 ^36 ^24 ^-32 blue_stained_glass
fill ^37 ^24 ^-36 ^37 ^24 ^-32 blue_stained_glass
fill ^38 ^24 ^-36 ^38 ^24 ^-32 blue_stained_glass
fill ^36 ^23 ^-33 ^40 ^23 ^-33 blue_stained_glass
fill ^36 ^23 ^-32 ^40 ^23 ^-32 blue_stained_glass
fill ^36 ^23 ^-31 ^40 ^23 ^-31 blue_stained_glass
fill ^36 ^23 ^-30 ^40 ^23 ^-30 blue_stained_glass
fill ^36 ^23 ^-29 ^40 ^23 ^-29 blue_stained_glass
fill ^36 ^23 ^-28 ^40 ^23 ^-28 blue_stained_glass
fill ^36 ^23 ^-27 ^40 ^23 ^-27 blue_stained_glass
fill ^36 ^23 ^-26 ^40 ^23 ^-26 blue_stained_glass
fill ^36 ^23 ^-25 ^40 ^23 ^-25 blue_stained_glass
fill ^36 ^22 ^-24 ^40 ^22 ^-24 blue_stained_glass
fill ^36 ^18 ^12 ^40 ^18 ^12 blue_stained_glass
fill ^36 ^18 ^13 ^40 ^18 ^13 blue_stained_glass
fill ^36 ^18 ^14 ^40 ^18 ^14 blue_stained_glass
fill ^36 ^18 ^15 ^40 ^18 ^15 blue_stained_glass
fill ^36 ^18 ^16 ^40 ^18 ^16 blue_stained_glass
fill ^36 ^18 ^17 ^40 ^18 ^17 blue_stained_glass
fill ^36 ^18 ^18 ^40 ^18 ^18 blue_stained_glass
fill ^36 ^18 ^19 ^40 ^18 ^19 blue_stained_glass
fill ^36 ^18 ^20 ^40 ^18 ^20 blue_stained_glass
fill ^36 ^17 ^21 ^40 ^17 ^21 blue_stained_glass
fill ^36 ^17 ^22 ^40 ^17 ^22 blue_stained_glass
fill ^36 ^17 ^23 ^40 ^17 ^23 blue_stained_glass
fill ^36 ^17 ^24 ^40 ^17 ^24 blue_stained_glass
fill ^16 ^13 ^36 ^16 ^13 ^40 blue_stained_glass
fill ^15 ^13 ^36 ^15 ^13 ^40 blue_stained_glass
fill ^14 ^13 ^36 ^14 ^13 ^40 blue_stained_glass
fill ^13 ^13 ^36 ^13 ^13 ^40 blue_stained_glass
fill ^12 ^13 ^36 ^12 ^13 ^40 blue_stained_glass
fill ^11 ^13 ^36 ^11 ^13 ^40 blue_stained_glass
fill ^10 ^12 ^36 ^10 ^12 ^40 blue_stained_glass
fill ^9 ^12 ^36 ^9 ^12 ^40 blue_stained_glass
fill ^8 ^12 ^36 ^8 ^12 ^40 blue_stained_glass
fill ^7 ^12 ^36 ^7 ^12 ^40 blue_stained_glass
fill ^6 ^12 ^36 ^6 ^12 ^40 blue_stained_glass
fill ^5 ^12 ^36 ^5 ^12 ^40 blue_stained_glass
fill ^4 ^12 ^36 ^4 ^12 ^40 blue_stained_glass

# --- SPLASH POOL / RUNOUT ---
fill ^-23 ^0 ^42 ^3 ^0 ^62 dark_prismarine
fill ^-22 ^1 ^43 ^2 ^1 ^61 white_concrete
fill ^-20 ^1 ^45 ^0 ^1 ^59 light_blue_concrete
fill ^-20 ^2 ^45 ^0 ^2 ^59 water
fill ^-18 ^1 ^47 ^-2 ^1 ^57 cyan_concrete
fill ^-18 ^2 ^47 ^-2 ^3 ^57 water
fill ^-23 ^2 ^42 ^3 ^2 ^43 smooth_quartz
fill ^-23 ^2 ^61 ^3 ^2 ^62 smooth_quartz
fill ^-23 ^2 ^44 ^-22 ^2 ^60 smooth_quartz
fill ^2 ^2 ^44 ^3 ^2 ^60 smooth_quartz
setblock ^-21 ^3 ^44 sea_lantern
setblock ^1 ^3 ^44 sea_lantern
setblock ^-21 ^3 ^60 sea_lantern
setblock ^1 ^3 ^60 sea_lantern
setblock ^-10 ^3 ^61 sea_lantern
setblock ^-10 ^3 ^43 sea_lantern
fill ^5 ^0 ^49 ^9 ^0 ^55 smooth_stone
fill ^6 ^1 ^50 ^8 ^4 ^54 white_concrete hollow
fill ^6 ^3 ^49 ^8 ^4 ^49 blue_stained_glass
fill ^5 ^5 ^49 ^9 ^5 ^55 red_concrete
fill ^5 ^6 ^49 ^9 ^6 ^55 white_concrete

# --- PALM TREES ---
fill ^-27 ^0 ^48 ^-27 ^7 ^48 jungle_log
fill ^-30 ^8 ^48 ^-24 ^8 ^48 jungle_leaves
fill ^-27 ^8 ^45 ^-27 ^8 ^51 jungle_leaves
fill ^-29 ^9 ^46 ^-25 ^9 ^50 jungle_leaves
setblock ^-27 ^10 ^48 glowstone
fill ^7 ^0 ^45 ^7 ^7 ^45 jungle_log
fill ^4 ^8 ^45 ^10 ^8 ^45 jungle_leaves
fill ^7 ^8 ^42 ^7 ^8 ^48 jungle_leaves
fill ^5 ^9 ^43 ^9 ^9 ^47 jungle_leaves
setblock ^7 ^10 ^45 glowstone
fill ^-25 ^0 ^59 ^-25 ^7 ^59 jungle_log
fill ^-28 ^8 ^59 ^-22 ^8 ^59 jungle_leaves
fill ^-25 ^8 ^56 ^-25 ^8 ^62 jungle_leaves
fill ^-27 ^9 ^57 ^-23 ^9 ^61 jungle_leaves
setblock ^-25 ^10 ^59 glowstone
fill ^8 ^0 ^60 ^8 ^7 ^60 jungle_log
fill ^5 ^8 ^60 ^11 ^8 ^60 jungle_leaves
fill ^8 ^8 ^57 ^8 ^8 ^63 jungle_leaves
fill ^6 ^9 ^58 ^10 ^9 ^62 jungle_leaves
setblock ^8 ^10 ^60 glowstone

# --- FINAL SPLASH LIP ---
fill ^-12 ^3 ^45 ^-8 ^3 ^47 cyan_concrete
fill ^-13 ^4 ^45 ^-13 ^5 ^47 white_concrete
fill ^-7 ^4 ^45 ^-7 ^5 ^47 white_concrete

# --- SLIDE WATER, PLACED LAST ---
fill ^10 ^50 ^-7 ^10 ^50 ^-5 water
fill ^11 ^50 ^-7 ^11 ^50 ^-5 water
fill ^12 ^50 ^-7 ^12 ^50 ^-5 water
fill ^13 ^50 ^-7 ^13 ^50 ^-5 water
fill ^14 ^50 ^-7 ^14 ^50 ^-5 water
fill ^15 ^50 ^-7 ^15 ^50 ^-5 water
fill ^16 ^50 ^-7 ^16 ^50 ^-5 water
fill ^17 ^50 ^-7 ^17 ^50 ^-5 water
fill ^18 ^50 ^-7 ^18 ^50 ^-5 water
fill ^19 ^49 ^-7 ^19 ^49 ^-5 water
fill ^20 ^49 ^-7 ^20 ^49 ^-5 water
fill ^21 ^49 ^-7 ^21 ^49 ^-5 water
fill ^22 ^49 ^-7 ^22 ^49 ^-5 water
fill ^23 ^49 ^-7 ^23 ^49 ^-5 water
fill ^24 ^49 ^-7 ^24 ^49 ^-5 water
fill ^25 ^49 ^-7 ^25 ^49 ^-5 water
fill ^26 ^49 ^-7 ^26 ^49 ^-5 water
fill ^27 ^49 ^-7 ^27 ^49 ^-5 water
fill ^28 ^48 ^-7 ^28 ^48 ^-5 water
fill ^29 ^48 ^-7 ^29 ^48 ^-5 water
fill ^30 ^48 ^-7 ^30 ^48 ^-5 water
fill ^31 ^48 ^-7 ^31 ^48 ^-5 water
fill ^32 ^48 ^-7 ^32 ^48 ^-5 water
fill ^33 ^48 ^-7 ^33 ^48 ^-5 water
fill ^34 ^48 ^-7 ^34 ^48 ^-5 water
fill ^33 ^48 ^-5 ^35 ^48 ^-5 water
fill ^33 ^48 ^-4 ^35 ^48 ^-4 water
fill ^33 ^47 ^-3 ^35 ^47 ^-3 water
fill ^33 ^47 ^-2 ^35 ^47 ^-2 water
fill ^33 ^47 ^-1 ^35 ^47 ^-1 water
fill ^33 ^47 ^0 ^35 ^47 ^0 water
fill ^33 ^47 ^1 ^35 ^47 ^1 water
fill ^33 ^47 ^2 ^35 ^47 ^2 water
fill ^33 ^47 ^3 ^35 ^47 ^3 water
fill ^33 ^47 ^4 ^35 ^47 ^4 water
fill ^33 ^47 ^5 ^35 ^47 ^5 water
fill ^33 ^46 ^6 ^35 ^46 ^6 water
fill ^33 ^46 ^7 ^35 ^46 ^7 water
fill ^33 ^46 ^8 ^35 ^46 ^8 water
fill ^33 ^46 ^9 ^35 ^46 ^9 water
fill ^33 ^46 ^10 ^35 ^46 ^10 water
fill ^33 ^46 ^11 ^35 ^46 ^11 water
fill ^33 ^46 ^12 ^35 ^46 ^12 water
fill ^33 ^46 ^13 ^35 ^46 ^13 water
fill ^33 ^46 ^14 ^35 ^46 ^14 water
fill ^33 ^45 ^15 ^35 ^45 ^15 water
fill ^33 ^45 ^16 ^35 ^45 ^16 water
fill ^33 ^45 ^17 ^35 ^45 ^17 water
fill ^33 ^45 ^18 ^35 ^45 ^18 water
fill ^33 ^45 ^19 ^35 ^45 ^19 water
fill ^33 ^45 ^20 ^35 ^45 ^20 water
fill ^33 ^45 ^21 ^35 ^45 ^21 water
fill ^33 ^45 ^22 ^35 ^45 ^22 water
fill ^33 ^45 ^23 ^35 ^45 ^23 water
fill ^33 ^44 ^24 ^35 ^44 ^24 water
fill ^33 ^44 ^25 ^35 ^44 ^25 water
fill ^33 ^44 ^26 ^35 ^44 ^26 water
fill ^33 ^44 ^27 ^35 ^44 ^27 water
fill ^33 ^44 ^28 ^35 ^44 ^28 water
fill ^33 ^44 ^29 ^35 ^44 ^29 water
fill ^33 ^44 ^30 ^35 ^44 ^30 water
fill ^33 ^44 ^29 ^33 ^44 ^31 water
fill ^32 ^44 ^29 ^32 ^44 ^31 water
fill ^31 ^43 ^29 ^31 ^43 ^31 water
fill ^30 ^43 ^29 ^30 ^43 ^31 water
fill ^29 ^43 ^29 ^29 ^43 ^31 water
fill ^28 ^43 ^29 ^28 ^43 ^31 water
fill ^27 ^43 ^29 ^27 ^43 ^31 water
fill ^26 ^43 ^29 ^26 ^43 ^31 water
fill ^25 ^43 ^29 ^25 ^43 ^31 water
fill ^24 ^43 ^29 ^24 ^43 ^31 water
fill ^23 ^43 ^29 ^23 ^43 ^31 water
fill ^22 ^42 ^29 ^22 ^42 ^31 water
fill ^21 ^42 ^29 ^21 ^42 ^31 water
fill ^20 ^42 ^29 ^20 ^42 ^31 water
fill ^19 ^42 ^29 ^19 ^42 ^31 water
fill ^18 ^42 ^29 ^18 ^42 ^31 water
fill ^17 ^42 ^29 ^17 ^42 ^31 water
fill ^16 ^42 ^29 ^16 ^42 ^31 water
fill ^15 ^42 ^29 ^15 ^42 ^31 water
fill ^14 ^42 ^29 ^14 ^42 ^31 water
fill ^13 ^41 ^29 ^13 ^41 ^31 water
fill ^12 ^41 ^29 ^12 ^41 ^31 water
fill ^11 ^41 ^29 ^11 ^41 ^31 water
fill ^10 ^41 ^29 ^10 ^41 ^31 water
fill ^9 ^41 ^29 ^9 ^41 ^31 water
fill ^8 ^41 ^29 ^8 ^41 ^31 water
fill ^7 ^41 ^29 ^7 ^41 ^31 water
fill ^6 ^41 ^29 ^6 ^41 ^31 water
fill ^5 ^41 ^29 ^5 ^41 ^31 water
fill ^4 ^40 ^29 ^4 ^40 ^31 water
fill ^3 ^40 ^29 ^3 ^40 ^31 water
fill ^2 ^40 ^29 ^2 ^40 ^31 water
fill ^1 ^40 ^29 ^1 ^40 ^31 water
fill ^0 ^40 ^29 ^0 ^40 ^31 water
fill ^-1 ^40 ^29 ^-1 ^40 ^31 water
fill ^-2 ^40 ^29 ^-2 ^40 ^31 water
fill ^-3 ^40 ^29 ^-3 ^40 ^31 water
fill ^-4 ^40 ^29 ^-4 ^40 ^31 water
fill ^-5 ^39 ^29 ^-5 ^39 ^31 water
fill ^-6 ^39 ^29 ^-6 ^39 ^31 water
fill ^-7 ^39 ^29 ^-7 ^39 ^31 water
fill ^-8 ^39 ^29 ^-8 ^39 ^31 water
fill ^-9 ^39 ^29 ^-9 ^39 ^31 water
fill ^-10 ^39 ^29 ^-10 ^39 ^31 water
fill ^-11 ^39 ^29 ^-11 ^39 ^31 water
fill ^-12 ^39 ^29 ^-12 ^39 ^31 water
fill ^-13 ^39 ^29 ^-13 ^39 ^31 water
fill ^-14 ^38 ^29 ^-14 ^38 ^31 water
fill ^-15 ^38 ^29 ^-15 ^38 ^31 water
fill ^-16 ^38 ^29 ^-16 ^38 ^31 water
fill ^-17 ^38 ^29 ^-17 ^38 ^31 water
fill ^-18 ^38 ^29 ^-18 ^38 ^31 water
fill ^-19 ^38 ^29 ^-19 ^38 ^31 water
fill ^-20 ^38 ^29 ^-20 ^38 ^31 water
fill ^-21 ^38 ^29 ^-21 ^38 ^31 water
fill ^-22 ^38 ^29 ^-22 ^38 ^31 water
fill ^-23 ^37 ^29 ^-23 ^37 ^31 water
fill ^-24 ^37 ^29 ^-24 ^37 ^31 water
fill ^-25 ^37 ^29 ^-25 ^37 ^31 water
fill ^-26 ^37 ^29 ^-26 ^37 ^31 water
fill ^-27 ^37 ^29 ^-27 ^37 ^31 water
fill ^-28 ^37 ^29 ^-28 ^37 ^31 water
fill ^-29 ^37 ^29 ^-29 ^37 ^31 water
fill ^-30 ^37 ^29 ^-30 ^37 ^31 water
fill ^-31 ^37 ^29 ^-31 ^37 ^31 water
fill ^-32 ^36 ^29 ^-32 ^36 ^31 water
fill ^-33 ^36 ^29 ^-31 ^36 ^29 water
fill ^-33 ^36 ^28 ^-31 ^36 ^28 water
fill ^-33 ^36 ^27 ^-31 ^36 ^27 water
fill ^-33 ^36 ^26 ^-31 ^36 ^26 water
fill ^-33 ^36 ^25 ^-31 ^36 ^25 water
fill ^-33 ^36 ^24 ^-31 ^36 ^24 water
fill ^-33 ^36 ^23 ^-31 ^36 ^23 water
fill ^-33 ^36 ^22 ^-31 ^36 ^22 water
fill ^-33 ^35 ^21 ^-31 ^35 ^21 water
fill ^-33 ^35 ^20 ^-31 ^35 ^20 water
fill ^-33 ^35 ^19 ^-31 ^35 ^19 water
fill ^-33 ^35 ^18 ^-31 ^35 ^18 water
fill ^-33 ^35 ^17 ^-31 ^35 ^17 water
fill ^-33 ^35 ^16 ^-31 ^35 ^16 water
fill ^-33 ^35 ^15 ^-31 ^35 ^15 water
fill ^-33 ^35 ^14 ^-31 ^35 ^14 water
fill ^-33 ^35 ^13 ^-31 ^35 ^13 water
fill ^-33 ^34 ^12 ^-31 ^34 ^12 water
fill ^-33 ^34 ^11 ^-31 ^34 ^11 water
fill ^-33 ^34 ^10 ^-31 ^34 ^10 water
fill ^-33 ^34 ^9 ^-31 ^34 ^9 water
fill ^-33 ^34 ^8 ^-31 ^34 ^8 water
fill ^-33 ^34 ^7 ^-31 ^34 ^7 water
fill ^-33 ^34 ^6 ^-31 ^34 ^6 water
fill ^-33 ^34 ^5 ^-31 ^34 ^5 water
fill ^-33 ^34 ^4 ^-31 ^34 ^4 water
fill ^-33 ^33 ^3 ^-31 ^33 ^3 water
fill ^-33 ^33 ^2 ^-31 ^33 ^2 water
fill ^-33 ^33 ^1 ^-31 ^33 ^1 water
fill ^-33 ^33 ^0 ^-31 ^33 ^0 water
fill ^-33 ^33 ^-1 ^-31 ^33 ^-1 water
fill ^-33 ^33 ^-2 ^-31 ^33 ^-2 water
fill ^-33 ^33 ^-3 ^-31 ^33 ^-3 water
fill ^-33 ^33 ^-4 ^-31 ^33 ^-4 water
fill ^-33 ^33 ^-5 ^-31 ^33 ^-5 water
fill ^-33 ^32 ^-6 ^-31 ^32 ^-6 water
fill ^-33 ^32 ^-7 ^-31 ^32 ^-7 water
fill ^-33 ^32 ^-8 ^-31 ^32 ^-8 water
fill ^-33 ^32 ^-9 ^-31 ^32 ^-9 water
fill ^-33 ^32 ^-10 ^-31 ^32 ^-10 water
fill ^-33 ^32 ^-11 ^-31 ^32 ^-11 water
fill ^-33 ^32 ^-12 ^-31 ^32 ^-12 water
fill ^-33 ^32 ^-13 ^-31 ^32 ^-13 water
fill ^-33 ^32 ^-14 ^-31 ^32 ^-14 water
fill ^-33 ^31 ^-15 ^-31 ^31 ^-15 water
fill ^-33 ^31 ^-16 ^-31 ^31 ^-16 water
fill ^-33 ^31 ^-17 ^-31 ^31 ^-17 water
fill ^-33 ^31 ^-18 ^-31 ^31 ^-18 water
fill ^-33 ^31 ^-19 ^-31 ^31 ^-19 water
fill ^-33 ^31 ^-20 ^-31 ^31 ^-20 water
fill ^-33 ^31 ^-21 ^-31 ^31 ^-21 water
fill ^-33 ^31 ^-22 ^-31 ^31 ^-22 water
fill ^-33 ^31 ^-23 ^-31 ^31 ^-23 water
fill ^-33 ^30 ^-24 ^-31 ^30 ^-24 water
fill ^-33 ^30 ^-25 ^-31 ^30 ^-25 water
fill ^-33 ^30 ^-26 ^-31 ^30 ^-26 water
fill ^-33 ^30 ^-27 ^-31 ^30 ^-27 water
fill ^-33 ^30 ^-28 ^-31 ^30 ^-28 water
fill ^-33 ^30 ^-29 ^-31 ^30 ^-29 water
fill ^-33 ^30 ^-30 ^-31 ^30 ^-30 water
fill ^-33 ^30 ^-31 ^-31 ^30 ^-31 water
fill ^-33 ^30 ^-32 ^-31 ^30 ^-32 water
fill ^-33 ^29 ^-33 ^-31 ^29 ^-33 water
fill ^-33 ^29 ^-34 ^-31 ^29 ^-34 water
fill ^-31 ^29 ^-35 ^-31 ^29 ^-33 water
fill ^-30 ^29 ^-35 ^-30 ^29 ^-33 water
fill ^-29 ^29 ^-35 ^-29 ^29 ^-33 water
fill ^-28 ^29 ^-35 ^-28 ^29 ^-33 water
fill ^-27 ^29 ^-35 ^-27 ^29 ^-33 water
fill ^-26 ^29 ^-35 ^-26 ^29 ^-33 water
fill ^-25 ^29 ^-35 ^-25 ^29 ^-33 water
fill ^-24 ^28 ^-35 ^-24 ^28 ^-33 water
fill ^-23 ^28 ^-35 ^-23 ^28 ^-33 water
fill ^-22 ^28 ^-35 ^-22 ^28 ^-33 water
fill ^-21 ^28 ^-35 ^-21 ^28 ^-33 water
fill ^-20 ^28 ^-35 ^-20 ^28 ^-33 water
fill ^-19 ^28 ^-35 ^-19 ^28 ^-33 water
fill ^-18 ^28 ^-35 ^-18 ^28 ^-33 water
fill ^-17 ^28 ^-35 ^-17 ^28 ^-33 water
fill ^-16 ^28 ^-35 ^-16 ^28 ^-33 water
fill ^-15 ^27 ^-35 ^-15 ^27 ^-33 water
fill ^-14 ^27 ^-35 ^-14 ^27 ^-33 water
fill ^-13 ^27 ^-35 ^-13 ^27 ^-33 water
fill ^-12 ^27 ^-35 ^-12 ^27 ^-33 water
fill ^-11 ^27 ^-35 ^-11 ^27 ^-33 water
fill ^-10 ^27 ^-35 ^-10 ^27 ^-33 water
fill ^-9 ^27 ^-35 ^-9 ^27 ^-33 water
fill ^-8 ^27 ^-35 ^-8 ^27 ^-33 water
fill ^-7 ^27 ^-35 ^-7 ^27 ^-33 water
fill ^-6 ^26 ^-35 ^-6 ^26 ^-33 water
fill ^-5 ^26 ^-35 ^-5 ^26 ^-33 water
fill ^-4 ^26 ^-35 ^-4 ^26 ^-33 water
fill ^-3 ^26 ^-35 ^-3 ^26 ^-33 water
fill ^-2 ^26 ^-35 ^-2 ^26 ^-33 water
fill ^-1 ^26 ^-35 ^-1 ^26 ^-33 water
fill ^0 ^26 ^-35 ^0 ^26 ^-33 water
fill ^1 ^26 ^-35 ^1 ^26 ^-33 water
fill ^2 ^26 ^-35 ^2 ^26 ^-33 water
fill ^3 ^25 ^-35 ^3 ^25 ^-33 water
fill ^4 ^25 ^-35 ^4 ^25 ^-33 water
fill ^5 ^25 ^-35 ^5 ^25 ^-33 water
fill ^6 ^25 ^-35 ^6 ^25 ^-33 water
fill ^7 ^25 ^-35 ^7 ^25 ^-33 water
fill ^8 ^25 ^-35 ^8 ^25 ^-33 water
fill ^9 ^25 ^-35 ^9 ^25 ^-33 water
fill ^10 ^25 ^-35 ^10 ^25 ^-33 water
fill ^11 ^25 ^-35 ^11 ^25 ^-33 water
fill ^12 ^24 ^-35 ^12 ^24 ^-33 water
fill ^13 ^24 ^-35 ^13 ^24 ^-33 water
fill ^14 ^24 ^-35 ^14 ^24 ^-33 water
fill ^15 ^24 ^-35 ^15 ^24 ^-33 water
fill ^16 ^24 ^-35 ^16 ^24 ^-33 water
fill ^17 ^24 ^-35 ^17 ^24 ^-33 water
fill ^18 ^24 ^-35 ^18 ^24 ^-33 water
fill ^19 ^24 ^-35 ^19 ^24 ^-33 water
fill ^20 ^24 ^-35 ^20 ^24 ^-33 water
fill ^21 ^23 ^-35 ^21 ^23 ^-33 water
fill ^22 ^23 ^-35 ^22 ^23 ^-33 water
fill ^23 ^23 ^-35 ^23 ^23 ^-33 water
fill ^24 ^23 ^-35 ^24 ^23 ^-33 water
fill ^25 ^23 ^-35 ^25 ^23 ^-33 water
fill ^26 ^23 ^-35 ^26 ^23 ^-33 water
fill ^27 ^23 ^-35 ^27 ^23 ^-33 water
fill ^28 ^23 ^-35 ^28 ^23 ^-33 water
fill ^29 ^23 ^-35 ^29 ^23 ^-33 water
fill ^30 ^22 ^-35 ^30 ^22 ^-33 water
fill ^31 ^22 ^-35 ^31 ^22 ^-33 water
fill ^32 ^22 ^-35 ^32 ^22 ^-33 water
fill ^33 ^22 ^-35 ^33 ^22 ^-33 water
fill ^34 ^22 ^-35 ^34 ^22 ^-33 water
fill ^35 ^22 ^-35 ^35 ^22 ^-33 water
fill ^36 ^22 ^-35 ^36 ^22 ^-33 water
fill ^37 ^22 ^-35 ^37 ^22 ^-33 water
fill ^38 ^22 ^-35 ^38 ^22 ^-33 water
fill ^37 ^21 ^-33 ^39 ^21 ^-33 water
fill ^37 ^21 ^-32 ^39 ^21 ^-32 water
fill ^37 ^21 ^-31 ^39 ^21 ^-31 water
fill ^37 ^21 ^-30 ^39 ^21 ^-30 water
fill ^37 ^21 ^-29 ^39 ^21 ^-29 water
fill ^37 ^21 ^-28 ^39 ^21 ^-28 water
fill ^37 ^21 ^-27 ^39 ^21 ^-27 water
fill ^37 ^21 ^-26 ^39 ^21 ^-26 water
fill ^37 ^21 ^-25 ^39 ^21 ^-25 water
fill ^37 ^20 ^-24 ^39 ^20 ^-24 water
fill ^37 ^20 ^-23 ^39 ^20 ^-23 water
fill ^37 ^20 ^-22 ^39 ^20 ^-22 water
fill ^37 ^20 ^-21 ^39 ^20 ^-21 water
fill ^37 ^20 ^-20 ^39 ^20 ^-20 water
fill ^37 ^20 ^-19 ^39 ^20 ^-19 water
fill ^37 ^20 ^-18 ^39 ^20 ^-18 water
fill ^37 ^20 ^-17 ^39 ^20 ^-17 water
fill ^37 ^20 ^-16 ^39 ^20 ^-16 water
fill ^37 ^19 ^-15 ^39 ^19 ^-15 water
fill ^37 ^19 ^-14 ^39 ^19 ^-14 water
fill ^37 ^19 ^-13 ^39 ^19 ^-13 water
fill ^37 ^19 ^-12 ^39 ^19 ^-12 water
fill ^37 ^19 ^-11 ^39 ^19 ^-11 water
fill ^37 ^19 ^-10 ^39 ^19 ^-10 water
fill ^37 ^19 ^-9 ^39 ^19 ^-9 water
fill ^37 ^19 ^-8 ^39 ^19 ^-8 water
fill ^37 ^19 ^-7 ^39 ^19 ^-7 water
fill ^37 ^18 ^-6 ^39 ^18 ^-6 water
fill ^37 ^18 ^-5 ^39 ^18 ^-5 water
fill ^37 ^18 ^-4 ^39 ^18 ^-4 water
fill ^37 ^18 ^-3 ^39 ^18 ^-3 water
fill ^37 ^18 ^-2 ^39 ^18 ^-2 water
fill ^37 ^18 ^-1 ^39 ^18 ^-1 water
fill ^37 ^18 ^0 ^39 ^18 ^0 water
fill ^37 ^18 ^1 ^39 ^18 ^1 water
fill ^37 ^18 ^2 ^39 ^18 ^2 water
fill ^37 ^17 ^3 ^39 ^17 ^3 water
fill ^37 ^17 ^4 ^39 ^17 ^4 water
fill ^37 ^17 ^5 ^39 ^17 ^5 water
fill ^37 ^17 ^6 ^39 ^17 ^6 water
fill ^37 ^17 ^7 ^39 ^17 ^7 water
fill ^37 ^17 ^8 ^39 ^17 ^8 water
fill ^37 ^17 ^9 ^39 ^17 ^9 water
fill ^37 ^17 ^10 ^39 ^17 ^10 water
fill ^37 ^17 ^11 ^39 ^17 ^11 water
fill ^37 ^16 ^12 ^39 ^16 ^12 water
fill ^37 ^16 ^13 ^39 ^16 ^13 water
fill ^37 ^16 ^14 ^39 ^16 ^14 water
fill ^37 ^16 ^15 ^39 ^16 ^15 water
fill ^37 ^16 ^16 ^39 ^16 ^16 water
fill ^37 ^16 ^17 ^39 ^16 ^17 water
fill ^37 ^16 ^18 ^39 ^16 ^18 water
fill ^37 ^16 ^19 ^39 ^16 ^19 water
fill ^37 ^16 ^20 ^39 ^16 ^20 water
fill ^37 ^15 ^21 ^39 ^15 ^21 water
fill ^37 ^15 ^22 ^39 ^15 ^22 water
fill ^37 ^15 ^23 ^39 ^15 ^23 water
fill ^37 ^15 ^24 ^39 ^15 ^24 water
fill ^37 ^15 ^25 ^39 ^15 ^25 water
fill ^37 ^15 ^26 ^39 ^15 ^26 water
fill ^37 ^15 ^27 ^39 ^15 ^27 water
fill ^37 ^15 ^28 ^39 ^15 ^28 water
fill ^37 ^15 ^29 ^39 ^15 ^29 water
fill ^37 ^14 ^30 ^39 ^14 ^30 water
fill ^37 ^14 ^31 ^39 ^14 ^31 water
fill ^37 ^14 ^32 ^39 ^14 ^32 water
fill ^37 ^14 ^33 ^39 ^14 ^33 water
fill ^37 ^14 ^34 ^39 ^14 ^34 water
fill ^37 ^14 ^35 ^39 ^14 ^35 water
fill ^37 ^14 ^36 ^39 ^14 ^36 water
fill ^37 ^14 ^37 ^39 ^14 ^37 water
fill ^37 ^14 ^38 ^39 ^14 ^38 water
fill ^37 ^13 ^37 ^37 ^13 ^39 water
fill ^36 ^13 ^37 ^36 ^13 ^39 water
fill ^35 ^13 ^37 ^35 ^13 ^39 water
fill ^34 ^13 ^37 ^34 ^13 ^39 water
fill ^33 ^13 ^37 ^33 ^13 ^39 water
fill ^32 ^13 ^37 ^32 ^13 ^39 water
fill ^31 ^13 ^37 ^31 ^13 ^39 water
fill ^30 ^13 ^37 ^30 ^13 ^39 water
fill ^29 ^13 ^37 ^29 ^13 ^39 water
fill ^28 ^12 ^37 ^28 ^12 ^39 water
fill ^27 ^12 ^37 ^27 ^12 ^39 water
fill ^26 ^12 ^37 ^26 ^12 ^39 water
fill ^25 ^12 ^37 ^25 ^12 ^39 water
fill ^24 ^12 ^37 ^24 ^12 ^39 water
fill ^23 ^12 ^37 ^23 ^12 ^39 water
fill ^22 ^12 ^37 ^22 ^12 ^39 water
fill ^21 ^12 ^37 ^21 ^12 ^39 water
fill ^20 ^12 ^37 ^20 ^12 ^39 water
fill ^19 ^11 ^37 ^19 ^11 ^39 water
fill ^18 ^11 ^37 ^18 ^11 ^39 water
fill ^17 ^11 ^37 ^17 ^11 ^39 water
fill ^16 ^11 ^37 ^16 ^11 ^39 water
fill ^15 ^11 ^37 ^15 ^11 ^39 water
fill ^14 ^11 ^37 ^14 ^11 ^39 water
fill ^13 ^11 ^37 ^13 ^11 ^39 water
fill ^12 ^11 ^37 ^12 ^11 ^39 water
fill ^11 ^11 ^37 ^11 ^11 ^39 water
fill ^10 ^10 ^37 ^10 ^10 ^39 water
fill ^9 ^10 ^37 ^9 ^10 ^39 water
fill ^8 ^10 ^37 ^8 ^10 ^39 water
fill ^7 ^10 ^37 ^7 ^10 ^39 water
fill ^6 ^10 ^37 ^6 ^10 ^39 water
fill ^5 ^10 ^37 ^5 ^10 ^39 water
fill ^4 ^10 ^37 ^4 ^10 ^39 water
fill ^3 ^10 ^37 ^3 ^10 ^39 water
fill ^2 ^10 ^37 ^2 ^10 ^39 water
fill ^1 ^9 ^37 ^1 ^9 ^39 water
fill ^0 ^9 ^37 ^0 ^9 ^39 water
fill ^-1 ^9 ^37 ^-1 ^9 ^39 water
fill ^-2 ^9 ^37 ^-2 ^9 ^39 water
fill ^-3 ^9 ^37 ^-3 ^9 ^39 water
fill ^-4 ^9 ^37 ^-4 ^9 ^39 water
fill ^-5 ^9 ^37 ^-5 ^9 ^39 water
fill ^-6 ^9 ^37 ^-6 ^9 ^39 water
fill ^-7 ^9 ^37 ^-7 ^9 ^39 water
fill ^-8 ^8 ^37 ^-8 ^8 ^39 water
fill ^-9 ^8 ^37 ^-9 ^8 ^39 water
fill ^-10 ^8 ^37 ^-10 ^8 ^39 water
fill ^-11 ^8 ^39 ^-9 ^8 ^39 water
fill ^-11 ^8 ^40 ^-9 ^8 ^40 water
fill ^-11 ^7 ^41 ^-9 ^7 ^41 water
fill ^-11 ^7 ^42 ^-9 ^7 ^42 water
fill ^-11 ^7 ^43 ^-9 ^7 ^43 water
fill ^-11 ^6 ^44 ^-9 ^6 ^44 water
fill ^-11 ^5 ^45 ^-9 ^5 ^45 water
fill ^-11 ^4 ^45 ^-9 ^4 ^47 water

# --- ENTRANCE FOUNTAINS ---
fill ^-10 ^0 ^18 ^-10 ^0 ^22 light_blue_concrete
setblock ^-10 ^1 ^20 water
setblock ^-10 ^-1 ^20 sea_lantern
fill ^10 ^0 ^18 ^10 ^0 ^22 light_blue_concrete
setblock ^10 ^1 ^20 water
setblock ^10 ^-1 ^20 sea_lantern

tellraw @a {"rawtext":[{"text":"§b§l[Mega Slide] §r§eConstruction complete!"}]}
# ================================================================
