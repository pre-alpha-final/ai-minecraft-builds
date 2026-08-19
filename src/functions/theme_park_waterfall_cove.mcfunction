# WATERFALL COVE PARK ATTRACTION - Minecraft Bedrock Edition
# Stand at ground level at the CENTER, face a cardinal direction, and look horizontally, then run this function.
# Coordinates use your view: ^left, ^up, ^forward. The entrance is behind you and the cliff rises ahead.
# Approximate footprint: 125 x 121 blocks. Approximate maximum height: 62 blocks.
# This function builds the attraction only. Water is placed last so the cascades can settle naturally.

# === TERRAIN FOUNDATION ===
fill ^-62 ^-3 ^-60 ^62 ^-3 ^60 minecraft:stone
fill ^-62 ^-2 ^-60 ^62 ^-2 ^60 minecraft:dirt
fill ^-62 ^-1 ^-60 ^62 ^-1 ^60 minecraft:grass_block
fill ^-60 ^-2 ^-58 ^60 ^-2 ^58 minecraft:dirt_with_roots replace minecraft:dirt

# === COVE BASIN: STONE SHELL, CLAY, SAND & GRAVEL ===
fill ^-18 ^-5 ^-9 ^18 ^-5 ^33 minecraft:stone
fill ^-28 ^-5 ^-4 ^28 ^-5 ^29 minecraft:stone
fill ^-36 ^-5 ^4 ^36 ^-5 ^24 minecraft:stone
fill ^-42 ^-4 ^9 ^42 ^-4 ^20 minecraft:stone
fill ^-14 ^-4 ^-13 ^14 ^-4 ^36 minecraft:clay
fill ^-25 ^-4 ^-8 ^25 ^-4 ^33 minecraft:clay
fill ^-34 ^-4 ^-2 ^34 ^-4 ^29 minecraft:clay
fill ^-40 ^-3 ^6 ^40 ^-3 ^23 minecraft:clay
fill ^-12 ^-3 ^-14 ^12 ^-3 ^37 minecraft:sand
fill ^-24 ^-3 ^-10 ^24 ^-3 ^34 minecraft:gravel
fill ^-33 ^-3 ^-4 ^33 ^-3 ^30 minecraft:gravel
fill ^-39 ^-2 ^6 ^39 ^-2 ^24 minecraft:gravel
fill ^-30 ^-2 ^-7 ^30 ^-2 ^31 minecraft:clay
fill ^-37 ^-1 ^5 ^37 ^-1 ^25 minecraft:clay

# Irregular natural shoreline boulders
fill ^-44 ^-1 ^8 ^-40 ^1 ^17 minecraft:cobblestone
fill ^40 ^-1 ^7 ^45 ^2 ^16 minecraft:stone
fill ^-40 ^-1 ^20 ^-35 ^2 ^27 minecraft:andesite
fill ^35 ^-1 ^20 ^41 ^1 ^27 minecraft:mossy_cobblestone
fill ^-34 ^-1 ^-1 ^-30 ^1 ^5 minecraft:stone
fill ^31 ^-1 ^-2 ^36 ^2 ^5 minecraft:cobblestone
fill ^-25 ^-1 ^-10 ^-19 ^1 ^-6 minecraft:mossy_cobblestone
fill ^20 ^-1 ^-11 ^27 ^1 ^-7 minecraft:andesite
fill ^-14 ^-1 ^-15 ^-8 ^1 ^-12 minecraft:stone
fill ^9 ^-1 ^-16 ^15 ^1 ^-12 minecraft:cobblestone
setblock ^-45 ^2 ^13 minecraft:moss_block
setblock ^44 ^3 ^12 minecraft:moss_block
setblock ^-38 ^3 ^24 minecraft:moss_block
setblock ^39 ^2 ^24 minecraft:moss_block
setblock ^-32 ^2 ^2 minecraft:moss_block
setblock ^34 ^3 ^2 minecraft:moss_block

# === MASSIVE LAYERED CLIFF ===
# Lower escarpment
fill ^-55 ^-1 ^31 ^0 ^10 ^57 minecraft:stone
fill ^1 ^-1 ^31 ^55 ^10 ^57 minecraft:stone
fill ^-52 ^11 ^33 ^52 ^16 ^57 minecraft:stone
fill ^-49 ^17 ^35 ^49 ^23 ^57 minecraft:andesite
fill ^-46 ^24 ^38 ^46 ^29 ^57 minecraft:stone
fill ^-43 ^30 ^40 ^43 ^36 ^57 minecraft:tuff
fill ^-39 ^37 ^43 ^39 ^43 ^57 minecraft:stone
fill ^-35 ^44 ^46 ^35 ^50 ^57 minecraft:andesite
fill ^-30 ^51 ^49 ^30 ^56 ^57 minecraft:stone
fill ^-24 ^57 ^51 ^24 ^59 ^57 minecraft:tuff

# Wide side shoulders make the cove wrap around the lagoon
fill ^-60 ^-1 ^27 ^-48 ^8 ^54 minecraft:stone
fill ^48 ^-1 ^27 ^60 ^9 ^54 minecraft:stone
fill ^-59 ^9 ^32 ^-50 ^17 ^55 minecraft:andesite
fill ^50 ^10 ^31 ^59 ^18 ^55 minecraft:tuff
fill ^-55 ^18 ^37 ^-47 ^27 ^56 minecraft:stone
fill ^47 ^19 ^36 ^55 ^28 ^56 minecraft:andesite
fill ^-50 ^28 ^42 ^-42 ^37 ^57 minecraft:tuff
fill ^42 ^29 ^41 ^50 ^38 ^57 minecraft:stone

# Broken buttresses and ledges
fill ^-55 ^2 ^24 ^-48 ^11 ^36 minecraft:andesite
fill ^48 ^1 ^23 ^55 ^12 ^35 minecraft:tuff
fill ^-49 ^12 ^29 ^-43 ^21 ^40 minecraft:cobblestone
fill ^43 ^13 ^28 ^50 ^23 ^40 minecraft:stone
fill ^-42 ^23 ^35 ^-36 ^32 ^45 minecraft:andesite
fill ^36 ^22 ^34 ^43 ^33 ^45 minecraft:tuff
fill ^-35 ^34 ^41 ^-29 ^43 ^50 minecraft:stone
fill ^29 ^35 ^40 ^36 ^44 ^50 minecraft:andesite
fill ^-28 ^45 ^47 ^-21 ^53 ^54 minecraft:tuff
fill ^21 ^46 ^46 ^29 ^54 ^54 minecraft:stone

# Natural strata and color variation across the cliff face
fill ^-51 ^2 ^30 ^-37 ^5 ^32 minecraft:andesite
fill ^-33 ^1 ^30 ^-18 ^3 ^32 minecraft:cobblestone
fill ^17 ^3 ^30 ^31 ^6 ^32 minecraft:tuff
fill ^35 ^1 ^30 ^51 ^4 ^32 minecraft:andesite
fill ^-47 ^8 ^32 ^-29 ^10 ^34 minecraft:tuff
fill ^-23 ^7 ^32 ^-12 ^9 ^34 minecraft:mossy_cobblestone
fill ^12 ^8 ^32 ^25 ^11 ^34 minecraft:andesite
fill ^30 ^7 ^32 ^48 ^9 ^34 minecraft:cobblestone
fill ^-45 ^14 ^34 ^-31 ^17 ^36 minecraft:cobblestone
fill ^-26 ^13 ^34 ^-15 ^15 ^36 minecraft:tuff
fill ^14 ^14 ^34 ^27 ^17 ^36 minecraft:cobblestone
fill ^32 ^15 ^34 ^46 ^18 ^36 minecraft:andesite
fill ^-40 ^20 ^37 ^-27 ^23 ^39 minecraft:andesite
fill ^-22 ^19 ^37 ^-14 ^21 ^39 minecraft:mossy_cobblestone
fill ^13 ^20 ^37 ^23 ^23 ^39 minecraft:tuff
fill ^28 ^21 ^37 ^41 ^24 ^39 minecraft:cobblestone
fill ^-37 ^27 ^39 ^-24 ^30 ^41 minecraft:tuff
fill ^-19 ^26 ^39 ^-12 ^28 ^41 minecraft:andesite
fill ^12 ^27 ^39 ^20 ^30 ^41 minecraft:cobblestone
fill ^25 ^28 ^39 ^38 ^31 ^41 minecraft:andesite
fill ^-33 ^34 ^42 ^-21 ^37 ^44 minecraft:cobblestone
fill ^-18 ^33 ^42 ^-11 ^35 ^44 minecraft:mossy_cobblestone
fill ^11 ^34 ^42 ^19 ^37 ^44 minecraft:andesite
fill ^22 ^35 ^42 ^34 ^38 ^44 minecraft:tuff
fill ^-29 ^41 ^45 ^-18 ^44 ^47 minecraft:andesite
fill ^-16 ^40 ^45 ^-10 ^42 ^47 minecraft:tuff
fill ^10 ^41 ^45 ^17 ^44 ^47 minecraft:cobblestone
fill ^19 ^42 ^45 ^30 ^45 ^47 minecraft:andesite
fill ^-24 ^48 ^48 ^-14 ^51 ^50 minecraft:tuff
fill ^-12 ^47 ^48 ^-8 ^49 ^50 minecraft:mossy_cobblestone
fill ^8 ^48 ^48 ^13 ^51 ^50 minecraft:andesite
fill ^15 ^49 ^48 ^25 ^52 ^50 minecraft:cobblestone
fill ^-18 ^54 ^50 ^-10 ^57 ^52 minecraft:andesite
fill ^10 ^54 ^50 ^19 ^57 ^52 minecraft:tuff

# Jagged skyline spires
fill ^-54 ^38 ^49 ^-49 ^45 ^55 minecraft:stone
fill ^-52 ^46 ^51 ^-50 ^49 ^55 minecraft:tuff
fill ^-43 ^39 ^48 ^-38 ^48 ^55 minecraft:andesite
fill ^-41 ^49 ^51 ^-39 ^53 ^55 minecraft:stone
fill ^38 ^40 ^48 ^44 ^47 ^55 minecraft:tuff
fill ^40 ^48 ^51 ^42 ^53 ^55 minecraft:andesite
fill ^49 ^39 ^49 ^54 ^46 ^55 minecraft:stone
fill ^51 ^47 ^52 ^53 ^50 ^55 minecraft:tuff
fill ^-32 ^54 ^51 ^-27 ^61 ^56 minecraft:stone
fill ^-30 ^60 ^53 ^-28 ^63 ^56 minecraft:andesite
fill ^27 ^55 ^51 ^33 ^61 ^56 minecraft:tuff
fill ^29 ^62 ^53 ^31 ^64 ^56 minecraft:stone

# === WATERFALL TERRACES & ROCK LIPS ===
# Summit reservoir bowl
fill ^-13 ^58 ^49 ^13 ^58 ^57 minecraft:stone
fill ^-11 ^59 ^50 ^11 ^59 ^56 minecraft:clay
fill ^-14 ^59 ^49 ^-12 ^61 ^57 minecraft:mossy_cobblestone
fill ^12 ^59 ^49 ^14 ^61 ^57 minecraft:mossy_cobblestone
fill ^-11 ^59 ^57 ^11 ^61 ^57 minecraft:stone
fill ^-10 ^57 ^46 ^10 ^58 ^50 minecraft:stone
fill ^-8 ^58 ^45 ^8 ^58 ^50 minecraft:mossy_cobblestone

# Upper shelf and plunge bowl
fill ^-13 ^39 ^39 ^13 ^40 ^46 minecraft:stone
fill ^-11 ^40 ^39 ^11 ^40 ^45 minecraft:clay
fill ^-15 ^40 ^39 ^-12 ^43 ^46 minecraft:mossy_cobblestone
fill ^12 ^40 ^39 ^15 ^43 ^46 minecraft:mossy_cobblestone
fill ^-12 ^38 ^36 ^12 ^39 ^40 minecraft:andesite
fill ^-10 ^39 ^35 ^10 ^39 ^40 minecraft:mossy_cobblestone

# Middle shelf and plunge bowl
fill ^-15 ^24 ^32 ^15 ^26 ^39 minecraft:stone
fill ^-13 ^26 ^32 ^13 ^26 ^38 minecraft:clay
fill ^-17 ^25 ^32 ^-14 ^29 ^40 minecraft:mossy_cobblestone
fill ^14 ^25 ^32 ^17 ^29 ^40 minecraft:mossy_cobblestone
fill ^-14 ^23 ^29 ^14 ^25 ^33 minecraft:andesite
fill ^-12 ^24 ^28 ^12 ^24 ^33 minecraft:mossy_cobblestone

# Split rock teeth create three lower ribbons
fill ^-14 ^3 ^29 ^-10 ^23 ^33 minecraft:stone
fill ^10 ^2 ^29 ^14 ^23 ^33 minecraft:andesite
fill ^-3 ^1 ^29 ^3 ^10 ^32 minecraft:mossy_cobblestone
fill ^-2 ^11 ^30 ^2 ^17 ^33 minecraft:stone
fill ^-16 ^18 ^30 ^-12 ^22 ^34 minecraft:tuff
fill ^12 ^17 ^30 ^16 ^22 ^34 minecraft:cobblestone

# === GROTTO BEHIND THE LOWER FALLS ===
fill ^-9 ^2 ^30 ^9 ^12 ^38 minecraft:air
fill ^-7 ^1 ^31 ^7 ^14 ^36 minecraft:air
fill ^-5 ^13 ^32 ^5 ^16 ^35 minecraft:air
fill ^-11 ^1 ^34 ^11 ^5 ^38 minecraft:air
fill ^-10 ^-1 ^33 ^10 ^0 ^39 minecraft:stone
fill ^-9 ^0 ^34 ^9 ^0 ^38 minecraft:moss_block
fill ^-10 ^1 ^38 ^10 ^7 ^38 minecraft:mossy_cobblestone
fill ^-10 ^1 ^34 ^-10 ^9 ^38 minecraft:mossy_cobblestone
fill ^10 ^1 ^34 ^10 ^9 ^38 minecraft:mossy_cobblestone
setblock ^-7 ^8 ^37 minecraft:glowstone
setblock ^7 ^8 ^37 minecraft:glowstone
setblock ^ ^13 ^35 minecraft:glowstone
fill ^-6 ^12 ^36 ^6 ^12 ^37 minecraft:moss_block
setblock ^-5 ^11 ^36 minecraft:hanging_roots
setblock ^-2 ^11 ^37 minecraft:hanging_roots
setblock ^2 ^11 ^37 minecraft:hanging_roots
setblock ^5 ^11 ^36 minecraft:hanging_roots

# === CURVING GUEST PROMENADE ===
# Main entrance path
fill ^-5 ^-1 ^-60 ^5 ^-1 ^-18 minecraft:stone_bricks
fill ^-3 ^0 ^-60 ^3 ^0 ^-20 minecraft:gravel
fill ^-6 ^-1 ^-18 ^-2 ^-1 ^-14 minecraft:stone_bricks
fill ^2 ^-1 ^-18 ^6 ^-1 ^-14 minecraft:stone_bricks

# Left and right cove paths, stepped around the shoreline
fill ^-18 ^-1 ^-22 ^-5 ^-1 ^-16 minecraft:stone_bricks
fill ^5 ^-1 ^-22 ^18 ^-1 ^-16 minecraft:stone_bricks
fill ^-29 ^-1 ^-18 ^-17 ^-1 ^-12 minecraft:stone_bricks
fill ^17 ^-1 ^-18 ^29 ^-1 ^-12 minecraft:stone_bricks
fill ^-39 ^-1 ^-12 ^-28 ^-1 ^-6 minecraft:stone_bricks
fill ^28 ^-1 ^-12 ^39 ^-1 ^-6 minecraft:stone_bricks
fill ^-48 ^-1 ^-5 ^-38 ^-1 ^3 minecraft:stone_bricks
fill ^38 ^-1 ^-5 ^48 ^-1 ^3 minecraft:stone_bricks
fill ^-54 ^-1 ^3 ^-46 ^-1 ^15 minecraft:stone_bricks
fill ^46 ^-1 ^3 ^54 ^-1 ^15 minecraft:stone_bricks
fill ^-56 ^-1 ^14 ^-49 ^-1 ^28 minecraft:stone_bricks
fill ^49 ^-1 ^14 ^56 ^-1 ^28 minecraft:stone_bricks
fill ^-55 ^-1 ^27 ^-46 ^-1 ^34 minecraft:stone_bricks
fill ^46 ^-1 ^27 ^55 ^-1 ^34 minecraft:stone_bricks

# Gravel inlays soften the blocky path joints
fill ^-16 ^0 ^-20 ^-6 ^0 ^-18 minecraft:gravel
fill ^6 ^0 ^-20 ^16 ^0 ^-18 minecraft:gravel
fill ^-27 ^0 ^-16 ^-18 ^0 ^-14 minecraft:gravel
fill ^18 ^0 ^-16 ^27 ^0 ^-14 minecraft:gravel
fill ^-37 ^0 ^-10 ^-29 ^0 ^-8 minecraft:gravel
fill ^29 ^0 ^-10 ^37 ^0 ^-8 minecraft:gravel
fill ^-46 ^0 ^-3 ^-39 ^0 ^1 minecraft:gravel
fill ^39 ^0 ^-3 ^46 ^0 ^1 minecraft:gravel
fill ^-52 ^0 ^5 ^-48 ^0 ^14 minecraft:gravel
fill ^48 ^0 ^5 ^52 ^0 ^14 minecraft:gravel
fill ^-54 ^0 ^16 ^-51 ^0 ^27 minecraft:gravel
fill ^51 ^0 ^16 ^54 ^0 ^27 minecraft:gravel

# === ENTRANCE ARCH & WATERFALL EMBLEM ===
fill ^-8 ^-1 ^-58 ^-6 ^7 ^-56 minecraft:dark_oak_log
fill ^6 ^-1 ^-58 ^8 ^7 ^-56 minecraft:dark_oak_log
fill ^-8 ^7 ^-58 ^8 ^9 ^-56 minecraft:dark_oak_planks
fill ^-5 ^9 ^-58 ^5 ^10 ^-56 minecraft:moss_block
fill ^-3 ^10 ^-57 ^3 ^11 ^-57 minecraft:azalea_leaves
fill ^-1 ^8 ^-55 ^1 ^9 ^-55 minecraft:light_blue_stained_glass
setblock ^ ^7 ^-55 minecraft:sea_lantern
fill ^-11 ^-1 ^-59 ^-9 ^3 ^-57 minecraft:cobblestone
fill ^9 ^-1 ^-59 ^11 ^3 ^-57 minecraft:cobblestone
setblock ^-10 ^4 ^-58 minecraft:lantern
setblock ^10 ^4 ^-58 minecraft:lantern

# === TIMBER VIEWING DECKS ===
# Left deck
fill ^-48 ^1 ^-4 ^-31 ^1 ^5 minecraft:dark_oak_planks
fill ^-48 ^0 ^-4 ^-46 ^0 ^5 minecraft:stripped_dark_oak_log
fill ^-33 ^0 ^-4 ^-31 ^0 ^5 minecraft:stripped_dark_oak_log
fill ^-48 ^2 ^-4 ^-48 ^3 ^5 minecraft:dark_oak_fence
fill ^-31 ^2 ^-4 ^-31 ^3 ^5 minecraft:dark_oak_fence
fill ^-47 ^2 ^5 ^-32 ^3 ^5 minecraft:dark_oak_fence
fill ^-45 ^0 ^-1 ^-44 ^1 ^0 minecraft:dark_oak_log
fill ^-35 ^0 ^-1 ^-34 ^1 ^0 minecraft:dark_oak_log
setblock ^-47 ^4 ^4 minecraft:lantern
setblock ^-32 ^4 ^4 minecraft:lantern
setblock ^-47 ^4 ^-3 minecraft:lantern
setblock ^-32 ^4 ^-3 minecraft:lantern

# Right deck
fill ^31 ^1 ^-4 ^48 ^1 ^5 minecraft:dark_oak_planks
fill ^31 ^0 ^-4 ^33 ^0 ^5 minecraft:stripped_dark_oak_log
fill ^46 ^0 ^-4 ^48 ^0 ^5 minecraft:stripped_dark_oak_log
fill ^31 ^2 ^-4 ^31 ^3 ^5 minecraft:dark_oak_fence
fill ^48 ^2 ^-4 ^48 ^3 ^5 minecraft:dark_oak_fence
fill ^32 ^2 ^5 ^47 ^3 ^5 minecraft:dark_oak_fence
fill ^34 ^0 ^-1 ^35 ^1 ^0 minecraft:dark_oak_log
fill ^44 ^0 ^-1 ^45 ^1 ^0 minecraft:dark_oak_log
setblock ^32 ^4 ^4 minecraft:lantern
setblock ^47 ^4 ^4 minecraft:lantern
setblock ^32 ^4 ^-3 minecraft:lantern
setblock ^47 ^4 ^-3 minecraft:lantern

# === CLIFFSIDE OVERLOOKS & STAIRS ===
# Block-stepped paths climb both shoulders
fill ^-58 ^0 ^27 ^-54 ^1 ^31 minecraft:stone_bricks
fill ^-56 ^2 ^31 ^-52 ^3 ^35 minecraft:stone_bricks
fill ^-53 ^4 ^34 ^-49 ^5 ^38 minecraft:stone_bricks
fill ^-50 ^6 ^37 ^-46 ^7 ^41 minecraft:stone_bricks
fill ^-47 ^8 ^40 ^-43 ^9 ^44 minecraft:stone_bricks
fill ^54 ^0 ^27 ^58 ^1 ^31 minecraft:stone_bricks
fill ^52 ^2 ^31 ^56 ^3 ^35 minecraft:stone_bricks
fill ^49 ^4 ^34 ^53 ^5 ^38 minecraft:stone_bricks
fill ^46 ^6 ^37 ^50 ^7 ^41 minecraft:stone_bricks
fill ^43 ^8 ^40 ^47 ^9 ^44 minecraft:stone_bricks

# Mid-height overlook balconies
fill ^-47 ^10 ^37 ^-34 ^10 ^45 minecraft:spruce_planks
fill ^34 ^10 ^37 ^47 ^10 ^45 minecraft:spruce_planks
fill ^-47 ^11 ^37 ^-47 ^12 ^45 minecraft:spruce_fence
fill ^-34 ^11 ^37 ^-34 ^12 ^45 minecraft:spruce_fence
fill ^-46 ^11 ^37 ^-35 ^12 ^37 minecraft:spruce_fence
fill ^34 ^11 ^37 ^34 ^12 ^45 minecraft:spruce_fence
fill ^47 ^11 ^37 ^47 ^12 ^45 minecraft:spruce_fence
fill ^35 ^11 ^37 ^46 ^12 ^37 minecraft:spruce_fence
setblock ^-46 ^13 ^38 minecraft:lantern
setblock ^-35 ^13 ^38 minecraft:lantern
setblock ^35 ^13 ^38 minecraft:lantern
setblock ^46 ^13 ^38 minecraft:lantern

# === BOULDER GARDENS & LANDSCAPING ===
fill ^-58 ^-1 ^-27 ^-49 ^3 ^-18 minecraft:stone
fill ^-55 ^3 ^-25 ^-50 ^6 ^-20 minecraft:andesite
fill ^49 ^-1 ^-28 ^58 ^3 ^-19 minecraft:cobblestone
fill ^51 ^3 ^-26 ^56 ^7 ^-21 minecraft:tuff
fill ^-45 ^-1 ^-38 ^-37 ^2 ^-30 minecraft:mossy_cobblestone
fill ^37 ^-1 ^-39 ^46 ^2 ^-31 minecraft:andesite
fill ^-28 ^-1 ^-45 ^-21 ^2 ^-39 minecraft:stone
fill ^21 ^-1 ^-46 ^29 ^3 ^-40 minecraft:cobblestone
setblock ^-53 ^7 ^-22 minecraft:moss_block
setblock ^54 ^8 ^-23 minecraft:moss_block
setblock ^-41 ^3 ^-34 minecraft:moss_block
setblock ^42 ^3 ^-35 minecraft:moss_block
setblock ^-24 ^3 ^-42 minecraft:moss_block
setblock ^25 ^4 ^-43 minecraft:moss_block

# Trees: compact trunks and broad natural canopies
fill ^-52 ^0 ^-43 ^-50 ^10 ^-41 minecraft:oak_log
fill ^-58 ^8 ^-49 ^-44 ^13 ^-35 minecraft:oak_leaves
fill ^-55 ^13 ^-46 ^-47 ^17 ^-38 minecraft:oak_leaves
fill ^49 ^0 ^-45 ^51 ^11 ^-43 minecraft:oak_log
fill ^43 ^9 ^-51 ^57 ^14 ^-37 minecraft:oak_leaves
fill ^47 ^14 ^-48 ^54 ^18 ^-40 minecraft:azalea_leaves_flowered
fill ^-59 ^0 ^-2 ^-57 ^12 ^ minecraft:dark_oak_log
fill ^-62 ^10 ^-7 ^-53 ^16 ^5 minecraft:azalea_leaves
fill ^57 ^0 ^-4 ^59 ^12 ^-2 minecraft:dark_oak_log
fill ^53 ^10 ^-9 ^62 ^16 ^3 minecraft:oak_leaves

# Small cliff-top trees frame the waterfall
fill ^-22 ^52 ^53 ^-20 ^61 ^55 minecraft:oak_log
fill ^-27 ^59 ^49 ^-15 ^65 ^58 minecraft:azalea_leaves
fill ^19 ^52 ^53 ^21 ^61 ^55 minecraft:oak_log
fill ^14 ^59 ^49 ^26 ^65 ^58 minecraft:azalea_leaves_flowered
fill ^-42 ^37 ^51 ^-40 ^45 ^53 minecraft:oak_log
fill ^-47 ^43 ^47 ^-35 ^49 ^57 minecraft:oak_leaves
fill ^39 ^38 ^51 ^41 ^46 ^53 minecraft:oak_log
fill ^34 ^44 ^47 ^46 ^50 ^57 minecraft:azalea_leaves

# Shrubs, ferns and flowers along the promenade
fill ^-14 ^0 ^-28 ^-9 ^2 ^-24 minecraft:azalea_leaves
fill ^9 ^0 ^-29 ^14 ^2 ^-25 minecraft:azalea_leaves_flowered
fill ^-34 ^0 ^-26 ^-29 ^2 ^-22 minecraft:oak_leaves
fill ^29 ^0 ^-27 ^34 ^2 ^-23 minecraft:azalea_leaves
fill ^-48 ^0 ^-15 ^-44 ^2 ^-11 minecraft:azalea_leaves_flowered
fill ^44 ^0 ^-16 ^48 ^2 ^-12 minecraft:oak_leaves
setblock ^-18 ^0 ^-31 minecraft:fern
setblock ^-12 ^0 ^-35 minecraft:blue_orchid
setblock ^-6 ^0 ^-27 minecraft:poppy
setblock ^7 ^0 ^-33 minecraft:dandelion
setblock ^13 ^0 ^-30 minecraft:blue_orchid
setblock ^19 ^0 ^-36 minecraft:fern
setblock ^-38 ^0 ^-20 minecraft:flowering_azalea
setblock ^38 ^0 ^-21 minecraft:azalea
setblock ^-51 ^0 ^-9 minecraft:fern
setblock ^51 ^0 ^-10 minecraft:flowering_azalea

# Moss patches across ledges
fill ^-54 ^11 ^34 ^-45 ^11 ^39 minecraft:moss_block
fill ^45 ^12 ^33 ^54 ^12 ^38 minecraft:moss_block
fill ^-47 ^22 ^39 ^-38 ^22 ^43 minecraft:moss_block
fill ^38 ^23 ^38 ^47 ^23 ^43 minecraft:moss_block
fill ^-39 ^33 ^44 ^-31 ^33 ^48 minecraft:moss_block
fill ^31 ^34 ^43 ^39 ^34 ^48 minecraft:moss_block
fill ^-32 ^45 ^48 ^-25 ^45 ^52 minecraft:moss_block
fill ^25 ^46 ^47 ^32 ^46 ^52 minecraft:moss_block

# === PATH LIGHTING ===
fill ^-13 ^0 ^-51 ^-13 ^3 ^-51 minecraft:dark_oak_fence
setblock ^-13 ^4 ^-51 minecraft:lantern
fill ^13 ^0 ^-51 ^13 ^3 ^-51 minecraft:dark_oak_fence
setblock ^13 ^4 ^-51 minecraft:lantern
fill ^-22 ^0 ^-20 ^-22 ^3 ^-20 minecraft:dark_oak_fence
setblock ^-22 ^4 ^-20 minecraft:lantern
fill ^22 ^0 ^-20 ^22 ^3 ^-20 minecraft:dark_oak_fence
setblock ^22 ^4 ^-20 minecraft:lantern
fill ^-39 ^0 ^-8 ^-39 ^3 ^-8 minecraft:dark_oak_fence
setblock ^-39 ^4 ^-8 minecraft:lantern
fill ^39 ^0 ^-8 ^39 ^3 ^-8 minecraft:dark_oak_fence
setblock ^39 ^4 ^-8 minecraft:lantern
fill ^-52 ^0 ^11 ^-52 ^3 ^11 minecraft:dark_oak_fence
setblock ^-52 ^4 ^11 minecraft:lantern
fill ^52 ^0 ^11 ^52 ^3 ^11 minecraft:dark_oak_fence
setblock ^52 ^4 ^11 minecraft:lantern
# === WATER: LAGOON, TERRACES & TALL FALLS (PLACED LAST) ===
# Deep lagoon layers create a rounded cove
fill ^-12 ^-2 ^-13 ^12 ^-2 ^37 minecraft:water
fill ^-24 ^-2 ^-9 ^24 ^-2 ^34 minecraft:water
fill ^-32 ^-2 ^-3 ^32 ^-2 ^30 minecraft:water
fill ^-38 ^-2 ^6 ^38 ^-2 ^24 minecraft:water
fill ^-12 ^-1 ^-13 ^12 ^-1 ^37 minecraft:water
fill ^-24 ^-1 ^-9 ^24 ^-1 ^34 minecraft:water
fill ^-32 ^-1 ^-3 ^32 ^-1 ^30 minecraft:water
fill ^-38 ^-1 ^6 ^38 ^-1 ^24 minecraft:water
fill ^-12 ^0 ^-13 ^12 ^0 ^37 minecraft:water
fill ^-24 ^0 ^-9 ^24 ^0 ^34 minecraft:water
fill ^-32 ^0 ^-3 ^32 ^0 ^30 minecraft:water
fill ^-38 ^0 ^6 ^38 ^0 ^24 minecraft:water

# Underwater lights and stepping stones are restored above the filled lagoon
setblock ^-27 ^-2 ^5 minecraft:sea_lantern
setblock ^27 ^-2 ^5 minecraft:sea_lantern
setblock ^-32 ^-2 ^16 minecraft:sea_lantern
setblock ^32 ^-2 ^16 minecraft:sea_lantern
setblock ^-21 ^-3 ^27 minecraft:sea_lantern
setblock ^21 ^-3 ^27 minecraft:sea_lantern
setblock ^ ^-3 ^22 minecraft:sea_lantern
fill ^-2 ^0 ^23 ^2 ^0 ^25 minecraft:mossy_cobblestone
fill ^3 ^0 ^18 ^6 ^0 ^21 minecraft:stone
fill ^-6 ^0 ^13 ^-3 ^0 ^16 minecraft:andesite
fill ^-1 ^0 ^8 ^2 ^0 ^11 minecraft:mossy_cobblestone
fill ^-5 ^0 ^3 ^-2 ^0 ^6 minecraft:stone
fill ^1 ^0 ^-2 ^4 ^0 ^1 minecraft:andesite

# Summit pool and feed channel
fill ^-10 ^60 ^50 ^10 ^60 ^56 minecraft:water
fill ^-8 ^59 ^45 ^8 ^60 ^51 minecraft:water

# First fall: narrow at the summit, opening toward the shelf
fill ^-7 ^52 ^45 ^7 ^58 ^46 minecraft:water
fill ^-8 ^45 ^44 ^8 ^51 ^45 minecraft:water
fill ^-9 ^41 ^43 ^9 ^44 ^44 minecraft:water
fill ^-10 ^41 ^39 ^10 ^41 ^45 minecraft:water

# Second fall broadens over the upper ledge
fill ^-9 ^34 ^38 ^9 ^40 ^39 minecraft:water
fill ^-10 ^28 ^37 ^10 ^33 ^38 minecraft:water
fill ^-11 ^27 ^35 ^11 ^27 ^38 minecraft:water
fill ^-12 ^26 ^32 ^12 ^26 ^38 minecraft:water

# Main plunge splits around rock teeth before joining the lagoon
fill ^-11 ^18 ^30 ^-4 ^25 ^31 minecraft:water
fill ^4 ^18 ^30 ^11 ^25 ^31 minecraft:water
fill ^-9 ^10 ^29 ^-4 ^17 ^30 minecraft:water
fill ^4 ^10 ^29 ^9 ^17 ^30 minecraft:water
fill ^-8 ^1 ^28 ^-4 ^9 ^29 minecraft:water
fill ^4 ^1 ^28 ^8 ^9 ^29 minecraft:water
fill ^-3 ^11 ^29 ^3 ^17 ^30 minecraft:water
fill ^-2 ^1 ^28 ^2 ^10 ^29 minecraft:water

# Whitewater and calm reflective highlights
fill ^-12 ^0 ^26 ^12 ^0 ^31 minecraft:water
setblock ^-9 ^-1 ^27 minecraft:sea_lantern
setblock ^-5 ^-1 ^29 minecraft:sea_lantern
setblock ^ ^-1 ^27 minecraft:sea_lantern
setblock ^5 ^-1 ^29 minecraft:sea_lantern
setblock ^9 ^-1 ^27 minecraft:sea_lantern
setblock ^-17 ^1 ^25 minecraft:white_stained_glass
setblock ^17 ^1 ^25 minecraft:white_stained_glass
setblock ^-13 ^1 ^29 minecraft:white_stained_glass
setblock ^13 ^1 ^29 minecraft:white_stained_glass

# Lily pads and planted islets
setblock ^-24 ^1 ^5 minecraft:waterlily
setblock ^24 ^1 ^7 minecraft:waterlily
setblock ^-29 ^1 ^14 minecraft:waterlily
setblock ^28 ^1 ^17 minecraft:waterlily
setblock ^-18 ^1 ^20 minecraft:waterlily
setblock ^19 ^1 ^22 minecraft:waterlily
setblock ^-8 ^1 ^9 minecraft:waterlily
setblock ^9 ^1 ^13 minecraft:waterlily
fill ^-35 ^0 ^10 ^-32 ^1 ^13 minecraft:moss_block
fill ^32 ^0 ^12 ^35 ^1 ^15 minecraft:moss_block
setblock ^-34 ^2 ^11 minecraft:flowering_azalea
setblock ^33 ^2 ^13 minecraft:azalea

# Final cove beacon lights
setblock ^-8 ^42 ^42 minecraft:sea_lantern
setblock ^8 ^42 ^42 minecraft:sea_lantern
setblock ^-10 ^27 ^34 minecraft:sea_lantern
setblock ^10 ^27 ^34 minecraft:sea_lantern
setblock ^-7 ^1 ^36 minecraft:sea_lantern
setblock ^7 ^1 ^36 minecraft:sea_lantern
