# WATERFALL COVE PARK ATTRACTION - Minecraft Bedrock Edition
# Stand at ground level at the CENTER of the entrance, face into a large clear area,
# and look horizontally before running: /function theme_park_waterfall_cove
# Coordinates use your view: ^left, ^up, ^forward. The entrance remains behind you.
# Approximate footprint: 112 x 120 blocks. Approximate maximum height: 43 blocks.
# Allow the water several seconds to settle after the function finishes.

# === SITE, FOUNDATION & PARK LAWN ===
fill ^-56 ^-4 ^-8 ^56 ^-4 ^112 minecraft:stone
fill ^-56 ^-3 ^-8 ^56 ^-2 ^112 minecraft:dirt
fill ^-56 ^-1 ^-8 ^56 ^-1 ^112 minecraft:grass_block
fill ^-7 ^ ^-8 ^7 ^ ^20 minecraft:gravel
fill ^-5 ^ ^-8 ^5 ^ ^20 minecraft:stone_bricks
fill ^-3 ^ ^-8 ^3 ^ ^20 minecraft:polished_andesite

# Curved arrival plaza
fill ^-18 ^ ^-5 ^18 ^ ^8 minecraft:stone_bricks
fill ^-22 ^ ^-1 ^22 ^ ^5 minecraft:stone_bricks
fill ^-14 ^ ^-7 ^14 ^ ^10 minecraft:stone_bricks
fill ^-16 ^ ^-3 ^16 ^ ^8 minecraft:polished_andesite
fill ^-12 ^ ^-5 ^12 ^ ^10 minecraft:polished_andesite
fill ^-5 ^ ^-7 ^5 ^ ^12 minecraft:smooth_stone
fill ^-20 ^ ^ ^-18 ^ ^4 minecraft:mossy_stone_bricks
fill ^18 ^ ^ ^20 ^ ^4 minecraft:mossy_stone_bricks

# === LAGOON BASIN & SANDY SHORE ===
# Stone shell and rounded sand apron
fill ^-18 ^-4 ^18 ^18 ^-4 ^22 minecraft:cobblestone
fill ^-27 ^-4 ^23 ^27 ^-4 ^28 minecraft:cobblestone
fill ^-35 ^-4 ^29 ^35 ^-4 ^37 minecraft:cobblestone
fill ^-41 ^-4 ^38 ^41 ^-4 ^69 minecraft:cobblestone
fill ^-36 ^-4 ^70 ^36 ^-4 ^77 minecraft:cobblestone
fill ^-28 ^-4 ^78 ^28 ^-4 ^83 minecraft:cobblestone
fill ^-18 ^-4 ^84 ^18 ^-4 ^88 minecraft:cobblestone
fill ^-20 ^-3 ^17 ^20 ^ ^23 minecraft:sand
fill ^-29 ^-3 ^22 ^29 ^ ^29 minecraft:sand
fill ^-37 ^-3 ^28 ^37 ^ ^38 minecraft:sand
fill ^-43 ^-3 ^37 ^43 ^ ^70 minecraft:sand
fill ^-38 ^-3 ^69 ^38 ^ ^78 minecraft:sand
fill ^-30 ^-3 ^77 ^30 ^ ^84 minecraft:sand
fill ^-20 ^-3 ^83 ^20 ^ ^89 minecraft:sand

# Deep rounded lagoon water
fill ^-14 ^-3 ^20 ^14 ^ ^24 minecraft:water
fill ^-23 ^-3 ^25 ^23 ^ ^30 minecraft:water
fill ^-31 ^-3 ^31 ^31 ^ ^38 minecraft:water
fill ^-37 ^-3 ^39 ^37 ^ ^68 minecraft:water
fill ^-32 ^-3 ^69 ^32 ^ ^76 minecraft:water
fill ^-24 ^-3 ^77 ^24 ^ ^82 minecraft:water
fill ^-14 ^-3 ^83 ^14 ^ ^87 minecraft:water

# Underwater gravel shelves and lights
fill ^-18 ^-3 ^24 ^18 ^-3 ^27 minecraft:gravel
fill ^-27 ^-3 ^29 ^27 ^-3 ^33 minecraft:gravel
fill ^-34 ^-3 ^36 ^34 ^-3 ^40 minecraft:gravel
fill ^-35 ^-3 ^65 ^35 ^-3 ^70 minecraft:gravel
fill ^-28 ^-3 ^74 ^28 ^-3 ^78 minecraft:gravel
fill ^-20 ^-3 ^80 ^20 ^-3 ^83 minecraft:gravel
setblock ^-20 ^-3 ^35 minecraft:sea_lantern
setblock ^20 ^-3 ^35 minecraft:sea_lantern
setblock ^-29 ^-3 ^49 minecraft:sea_lantern
setblock ^29 ^-3 ^49 minecraft:sea_lantern
setblock ^-30 ^-3 ^63 minecraft:sea_lantern
setblock ^30 ^-3 ^63 minecraft:sea_lantern
setblock ^-20 ^-3 ^76 minecraft:sea_lantern
setblock ^20 ^-3 ^76 minecraft:sea_lantern
setblock ^ ^-3 ^38 minecraft:sea_lantern
setblock ^ ^-3 ^55 minecraft:sea_lantern
setblock ^ ^-3 ^72 minecraft:sea_lantern

# Two natural lagoon islands
fill ^-19 ^-2 ^47 ^-9 ^-1 ^58 minecraft:stone
fill ^-21 ^-1 ^50 ^-8 ^-1 ^55 minecraft:stone
fill ^-18 ^ ^48 ^-10 ^ ^57 minecraft:grass_block
fill ^-20 ^ ^51 ^-8 ^ ^54 minecraft:grass_block
fill ^12 ^-2 ^61 ^23 ^-1 ^71 minecraft:stone
fill ^10 ^-1 ^64 ^24 ^-1 ^68 minecraft:stone
fill ^13 ^ ^62 ^22 ^ ^70 minecraft:grass_block
fill ^11 ^ ^65 ^24 ^ ^67 minecraft:grass_block

# === MASSIVE TERRACED COVE CLIFF ===
fill ^-52 ^ ^84 ^52 ^8 ^111 minecraft:stone
fill ^-48 ^9 ^87 ^48 ^16 ^111 minecraft:stone
fill ^-42 ^17 ^91 ^42 ^24 ^111 minecraft:stone
fill ^-34 ^25 ^95 ^34 ^31 ^111 minecraft:stone
fill ^-22 ^32 ^99 ^22 ^36 ^111 minecraft:stone
fill ^-12 ^37 ^103 ^12 ^39 ^111 minecraft:stone

# Broken cliff shoulders and outcrops
fill ^-56 ^ ^91 ^-48 ^11 ^108 minecraft:cobblestone
fill ^48 ^ ^89 ^56 ^13 ^108 minecraft:cobblestone
fill ^-50 ^12 ^94 ^-42 ^21 ^110 minecraft:andesite
fill ^42 ^14 ^94 ^50 ^22 ^110 minecraft:andesite
fill ^-40 ^22 ^98 ^-32 ^28 ^111 minecraft:cobblestone
fill ^32 ^23 ^97 ^42 ^29 ^111 minecraft:cobblestone
fill ^-27 ^30 ^102 ^-18 ^35 ^111 minecraft:andesite
fill ^20 ^30 ^101 ^28 ^34 ^111 minecraft:andesite

# Layered front-face texture
fill ^-50 ^2 ^84 ^-38 ^7 ^86 minecraft:andesite
fill ^-34 ^1 ^84 ^-21 ^5 ^87 minecraft:mossy_cobblestone
fill ^20 ^2 ^84 ^35 ^6 ^87 minecraft:mossy_cobblestone
fill ^38 ^1 ^84 ^51 ^7 ^86 minecraft:andesite
fill ^-46 ^10 ^87 ^-33 ^14 ^89 minecraft:mossy_stone_bricks
fill ^28 ^10 ^87 ^45 ^15 ^89 minecraft:mossy_stone_bricks
fill ^-40 ^18 ^91 ^-25 ^21 ^93 minecraft:andesite
fill ^24 ^18 ^91 ^39 ^22 ^93 minecraft:andesite
fill ^-31 ^26 ^95 ^-16 ^28 ^97 minecraft:mossy_cobblestone
fill ^16 ^26 ^95 ^32 ^29 ^97 minecraft:mossy_cobblestone
fill ^-18 ^33 ^99 ^-7 ^35 ^101 minecraft:andesite
fill ^8 ^33 ^99 ^20 ^35 ^101 minecraft:andesite

# Irregular ledges and moss shelves
fill ^-52 ^8 ^83 ^-30 ^9 ^91 minecraft:cobblestone
fill ^30 ^8 ^83 ^52 ^9 ^91 minecraft:cobblestone
fill ^-45 ^16 ^88 ^-19 ^17 ^95 minecraft:stone
fill ^19 ^16 ^88 ^45 ^17 ^95 minecraft:stone
fill ^-37 ^24 ^92 ^-12 ^25 ^99 minecraft:cobblestone
fill ^12 ^24 ^92 ^37 ^25 ^99 minecraft:cobblestone
fill ^-29 ^31 ^96 ^-8 ^32 ^104 minecraft:stone
fill ^8 ^31 ^96 ^29 ^32 ^104 minecraft:stone
fill ^-16 ^36 ^100 ^16 ^37 ^108 minecraft:cobblestone
fill ^-49 ^9 ^84 ^-31 ^9 ^90 minecraft:mossy_cobblestone
fill ^31 ^9 ^84 ^49 ^9 ^90 minecraft:mossy_cobblestone
fill ^-41 ^17 ^89 ^-21 ^17 ^94 minecraft:mossy_cobblestone
fill ^21 ^17 ^89 ^41 ^17 ^94 minecraft:mossy_cobblestone
fill ^-33 ^25 ^93 ^-13 ^25 ^98 minecraft:mossy_cobblestone
fill ^13 ^25 ^93 ^33 ^25 ^98 minecraft:mossy_cobblestone

# === CENTRAL CASCADE ===
# Summit spring and upper stream
fill ^-8 ^37 ^104 ^8 ^38 ^110 minecraft:water
fill ^-6 ^35 ^101 ^6 ^37 ^106 minecraft:water
fill ^-5 ^31 ^98 ^5 ^36 ^101 minecraft:water
# High plunge and first catch pool
fill ^-6 ^20 ^96 ^6 ^31 ^97 minecraft:water
fill ^-9 ^18 ^92 ^9 ^20 ^98 minecraft:water
fill ^-8 ^15 ^91 ^8 ^19 ^93 minecraft:water
# Wide lower veil and splash pool
fill ^-9 ^4 ^88 ^9 ^17 ^90 minecraft:water
fill ^-13 ^1 ^84 ^13 ^4 ^92 minecraft:water
fill ^-16 ^-2 ^82 ^16 ^ ^89 minecraft:water

# Waterfall framing rocks
fill ^-12 ^20 ^94 ^-7 ^29 ^98 minecraft:cobblestone
fill ^7 ^20 ^94 ^12 ^29 ^98 minecraft:cobblestone
fill ^-15 ^8 ^88 ^-10 ^18 ^94 minecraft:andesite
fill ^10 ^8 ^88 ^15 ^18 ^94 minecraft:andesite
fill ^-17 ^1 ^84 ^-12 ^7 ^90 minecraft:mossy_cobblestone
fill ^12 ^1 ^84 ^17 ^7 ^90 minecraft:mossy_cobblestone
fill ^-11 ^30 ^97 ^-6 ^33 ^102 minecraft:mossy_cobblestone
fill ^6 ^30 ^97 ^11 ^33 ^102 minecraft:mossy_cobblestone

# === SIDE WATERFALLS ===
# West ribbon fall
fill ^-38 ^21 ^94 ^-31 ^23 ^100 minecraft:water
fill ^-37 ^10 ^90 ^-32 ^22 ^93 minecraft:water
fill ^-40 ^7 ^86 ^-29 ^10 ^92 minecraft:water
fill ^-40 ^1 ^83 ^-29 ^7 ^86 minecraft:water
fill ^-43 ^-2 ^80 ^-26 ^ ^88 minecraft:water
fill ^-43 ^8 ^87 ^-38 ^13 ^92 minecraft:mossy_cobblestone
fill ^-31 ^8 ^87 ^-27 ^13 ^92 minecraft:andesite

# East split fall
fill ^27 ^24 ^97 ^36 ^25 ^104 minecraft:water
fill ^28 ^16 ^93 ^32 ^24 ^96 minecraft:water
fill ^34 ^16 ^93 ^38 ^24 ^96 minecraft:water
fill ^27 ^12 ^90 ^39 ^16 ^95 minecraft:water
fill ^29 ^4 ^86 ^37 ^12 ^89 minecraft:water
fill ^25 ^1 ^82 ^41 ^4 ^88 minecraft:water
fill ^23 ^-2 ^79 ^43 ^ ^87 minecraft:water
fill ^24 ^13 ^91 ^28 ^20 ^96 minecraft:mossy_cobblestone
fill ^38 ^13 ^91 ^42 ^20 ^96 minecraft:mossy_cobblestone

# === HIDDEN GROTTO BEHIND THE MAIN FALL ===
fill ^-10 ^1 ^93 ^10 ^10 ^104 minecraft:air
fill ^-7 ^1 ^89 ^7 ^7 ^94 minecraft:air
fill ^-12 ^1 ^98 ^12 ^7 ^101 minecraft:air
fill ^-9 ^-1 ^94 ^9 ^ ^104 minecraft:water
fill ^-12 ^ ^98 ^12 ^ ^102 minecraft:water
fill ^-9 ^1 ^100 ^9 ^1 ^105 minecraft:stone_bricks
fill ^-7 ^2 ^101 ^7 ^2 ^105 minecraft:mossy_stone_bricks
setblock ^-6 ^3 ^104 minecraft:sea_lantern
setblock ^6 ^3 ^104 minecraft:sea_lantern
setblock ^ ^2 ^105 minecraft:sea_lantern
# Side access tunnels through the cliff
fill ^-18 ^2 ^88 ^-8 ^6 ^96 minecraft:air
fill ^8 ^2 ^88 ^18 ^6 ^96 minecraft:air
fill ^-20 ^2 ^86 ^-16 ^6 ^96 minecraft:air
fill ^16 ^2 ^86 ^20 ^6 ^96 minecraft:air
fill ^-20 ^1 ^86 ^-8 ^1 ^96 minecraft:stone_bricks
fill ^8 ^1 ^86 ^20 ^1 ^96 minecraft:stone_bricks
# Restore the falling veil in front of the chamber; enter by either side tunnel
fill ^-7 ^2 ^89 ^7 ^7 ^89 minecraft:water

# === TIMBER BOARDWALK LOOP ===
# Entrance pier and west shore route
fill ^-4 ^1 ^10 ^4 ^1 ^30 minecraft:spruce_planks
fill ^-7 ^1 ^27 ^4 ^1 ^31 minecraft:spruce_planks
fill ^-12 ^1 ^29 ^-6 ^1 ^36 minecraft:spruce_planks
fill ^-19 ^1 ^34 ^-11 ^1 ^38 minecraft:spruce_planks
fill ^-26 ^1 ^36 ^-18 ^1 ^43 minecraft:spruce_planks
fill ^-32 ^1 ^41 ^-25 ^1 ^52 minecraft:spruce_planks
fill ^-36 ^1 ^50 ^-31 ^1 ^66 minecraft:spruce_planks
fill ^-34 ^1 ^64 ^-29 ^1 ^76 minecraft:spruce_planks
fill ^-31 ^1 ^74 ^-20 ^1 ^79 minecraft:spruce_planks
fill ^-24 ^1 ^77 ^-17 ^1 ^89 minecraft:spruce_planks
fill ^-20 ^1 ^85 ^-16 ^1 ^96 minecraft:spruce_planks

# East shore return route
fill ^16 ^1 ^86 ^20 ^1 ^96 minecraft:spruce_planks
fill ^17 ^1 ^77 ^24 ^1 ^89 minecraft:spruce_planks
fill ^20 ^1 ^74 ^31 ^1 ^79 minecraft:spruce_planks
fill ^29 ^1 ^64 ^34 ^1 ^76 minecraft:spruce_planks
fill ^31 ^1 ^50 ^36 ^1 ^66 minecraft:spruce_planks
fill ^25 ^1 ^41 ^32 ^1 ^52 minecraft:spruce_planks
fill ^18 ^1 ^36 ^26 ^1 ^43 minecraft:spruce_planks
fill ^11 ^1 ^34 ^19 ^1 ^38 minecraft:spruce_planks
fill ^6 ^1 ^29 ^12 ^1 ^36 minecraft:spruce_planks
fill ^-4 ^1 ^27 ^7 ^1 ^31 minecraft:spruce_planks

# Boardwalk supports
fill ^-31 ^-3 ^44 ^-31 ^1 ^44 minecraft:spruce_log
fill ^-34 ^-3 ^56 ^-34 ^1 ^56 minecraft:spruce_log
fill ^-32 ^-3 ^69 ^-32 ^1 ^69 minecraft:spruce_log
fill ^-23 ^-3 ^78 ^-23 ^1 ^78 minecraft:spruce_log
fill ^-18 ^-3 ^88 ^-18 ^1 ^88 minecraft:spruce_log
fill ^31 ^-3 ^44 ^31 ^1 ^44 minecraft:spruce_log
fill ^34 ^-3 ^56 ^34 ^1 ^56 minecraft:spruce_log
fill ^32 ^-3 ^69 ^32 ^1 ^69 minecraft:spruce_log
fill ^23 ^-3 ^78 ^23 ^1 ^78 minecraft:spruce_log
fill ^18 ^-3 ^88 ^18 ^1 ^88 minecraft:spruce_log

# Rope-style rails on exposed curves
fill ^-37 ^2 ^50 ^-37 ^3 ^65 minecraft:spruce_fence
fill ^-35 ^2 ^66 ^-35 ^3 ^75 minecraft:spruce_fence
fill ^-31 ^2 ^77 ^-25 ^3 ^77 minecraft:spruce_fence
fill ^-24 ^2 ^80 ^-24 ^3 ^87 minecraft:spruce_fence
fill ^37 ^2 ^50 ^37 ^3 ^65 minecraft:spruce_fence
fill ^35 ^2 ^66 ^35 ^3 ^75 minecraft:spruce_fence
fill ^25 ^2 ^77 ^31 ^3 ^77 minecraft:spruce_fence
fill ^24 ^2 ^80 ^24 ^3 ^87 minecraft:spruce_fence

# Central scenic bridge over the lagoon
fill ^-30 ^4 ^53 ^30 ^4 ^59 minecraft:dark_oak_planks
fill ^-30 ^3 ^55 ^30 ^3 ^57 minecraft:dark_oak_planks
fill ^-32 ^-3 ^54 ^-28 ^4 ^58 minecraft:dark_oak_log
fill ^28 ^-3 ^54 ^32 ^4 ^58 minecraft:dark_oak_log
fill ^-30 ^5 ^52 ^30 ^6 ^52 minecraft:dark_oak_fence
fill ^-30 ^5 ^60 ^30 ^6 ^60 minecraft:dark_oak_fence
fill ^-30 ^5 ^53 ^-30 ^6 ^59 minecraft:dark_oak_fence
fill ^30 ^5 ^53 ^30 ^6 ^59 minecraft:dark_oak_fence
setblock ^-24 ^7 ^52 minecraft:lantern
setblock ^-12 ^7 ^52 minecraft:lantern
setblock ^ ^7 ^52 minecraft:lantern
setblock ^12 ^7 ^52 minecraft:lantern
setblock ^24 ^7 ^52 minecraft:lantern
setblock ^-24 ^7 ^60 minecraft:lantern
setblock ^-12 ^7 ^60 minecraft:lantern
setblock ^ ^7 ^60 minecraft:lantern
setblock ^12 ^7 ^60 minecraft:lantern
setblock ^24 ^7 ^60 minecraft:lantern

# === WATERFALL VIEWING DECKS ===
# Main splash deck
fill ^-15 ^5 ^74 ^15 ^5 ^81 minecraft:jungle_planks
fill ^-15 ^4 ^76 ^15 ^4 ^79 minecraft:jungle_planks
fill ^-17 ^-3 ^75 ^-14 ^5 ^80 minecraft:jungle_log
fill ^14 ^-3 ^75 ^17 ^5 ^80 minecraft:jungle_log
fill ^-15 ^6 ^73 ^15 ^7 ^73 minecraft:jungle_fence
fill ^-16 ^6 ^74 ^-16 ^7 ^81 minecraft:jungle_fence
fill ^16 ^6 ^74 ^16 ^7 ^81 minecraft:jungle_fence
fill ^-15 ^6 ^82 ^-5 ^7 ^82 minecraft:jungle_fence
fill ^5 ^6 ^82 ^15 ^7 ^82 minecraft:jungle_fence

# West and east photo balconies
fill ^-49 ^10 ^79 ^-31 ^10 ^87 minecraft:spruce_planks
fill ^31 ^10 ^79 ^49 ^10 ^87 minecraft:spruce_planks
fill ^-49 ^11 ^78 ^-31 ^12 ^78 minecraft:spruce_fence
fill ^-50 ^11 ^79 ^-50 ^12 ^87 minecraft:spruce_fence
fill ^31 ^11 ^78 ^49 ^12 ^78 minecraft:spruce_fence
fill ^50 ^11 ^79 ^50 ^12 ^87 minecraft:spruce_fence
fill ^-49 ^11 ^88 ^-31 ^12 ^88 minecraft:spruce_fence
fill ^31 ^11 ^88 ^49 ^12 ^88 minecraft:spruce_fence
fill ^-48 ^1 ^84 ^-46 ^10 ^86 minecraft:stone_bricks
fill ^46 ^1 ^84 ^48 ^10 ^86 minecraft:stone_bricks

# Summit overlook
fill ^-18 ^38 ^101 ^18 ^38 ^111 minecraft:spruce_planks
fill ^-18 ^39 ^100 ^18 ^40 ^100 minecraft:spruce_fence
fill ^-19 ^39 ^101 ^-19 ^40 ^111 minecraft:spruce_fence
fill ^19 ^39 ^101 ^19 ^40 ^111 minecraft:spruce_fence
fill ^-18 ^39 ^112 ^18 ^40 ^112 minecraft:spruce_fence
fill ^-2 ^39 ^102 ^2 ^39 ^110 minecraft:polished_andesite
setblock ^-16 ^41 ^100 minecraft:lantern
setblock ^-8 ^41 ^100 minecraft:lantern
setblock ^8 ^41 ^100 minecraft:lantern
setblock ^16 ^41 ^100 minecraft:lantern

# === ENTRANCE ARCH & TICKET HUTS ===
# Waterfall-shaped stone arch
fill ^-15 ^1 ^5 ^-11 ^10 ^9 minecraft:stone_bricks
fill ^11 ^1 ^5 ^15 ^10 ^9 minecraft:stone_bricks
fill ^-11 ^8 ^5 ^11 ^12 ^9 minecraft:stone_bricks
fill ^-8 ^8 ^4 ^8 ^10 ^4 minecraft:mossy_stone_bricks
fill ^-4 ^7 ^4 ^4 ^10 ^4 minecraft:water
fill ^-16 ^ ^4 ^-10 ^1 ^10 minecraft:mossy_cobblestone
fill ^10 ^ ^4 ^16 ^1 ^10 minecraft:mossy_cobblestone
setblock ^-9 ^9 ^4 minecraft:sea_lantern
setblock ^9 ^9 ^4 minecraft:sea_lantern

# Twin ticket huts
fill ^-29 ^ ^-1 ^-20 ^6 ^9 minecraft:spruce_planks
fill ^20 ^ ^-1 ^29 ^6 ^9 minecraft:spruce_planks
fill ^-27 ^1 ^1 ^-22 ^4 ^7 minecraft:air
fill ^22 ^1 ^1 ^27 ^4 ^7 minecraft:air
fill ^-29 ^5 ^-1 ^-20 ^7 ^9 minecraft:dark_oak_planks
fill ^20 ^5 ^-1 ^29 ^7 ^9 minecraft:dark_oak_planks
fill ^-25 ^2 ^-1 ^-23 ^4 ^-1 minecraft:glass
fill ^23 ^2 ^-1 ^25 ^4 ^-1 minecraft:glass
setblock ^-25 ^1 ^8 minecraft:lantern
setblock ^25 ^1 ^8 minecraft:lantern

# === PARK LAMPS, BENCHES & BINS ===
# Lamp posts around arrival plaza
fill ^-20 ^1 ^-5 ^-20 ^5 ^-5 minecraft:cobblestone_wall
fill ^20 ^1 ^-5 ^20 ^5 ^-5 minecraft:cobblestone_wall
fill ^-25 ^1 ^8 ^-25 ^5 ^8 minecraft:cobblestone_wall
fill ^25 ^1 ^8 ^25 ^5 ^8 minecraft:cobblestone_wall
fill ^-12 ^1 ^16 ^-12 ^5 ^16 minecraft:cobblestone_wall
fill ^12 ^1 ^16 ^12 ^5 ^16 minecraft:cobblestone_wall
setblock ^-20 ^6 ^-5 minecraft:lantern
setblock ^20 ^6 ^-5 minecraft:lantern
setblock ^-25 ^6 ^8 minecraft:lantern
setblock ^25 ^6 ^8 minecraft:lantern
setblock ^-12 ^6 ^16 minecraft:lantern
setblock ^12 ^6 ^16 minecraft:lantern

# Simple timber benches
fill ^-18 ^1 ^12 ^-12 ^1 ^14 minecraft:spruce_planks
fill ^12 ^1 ^12 ^18 ^1 ^14 minecraft:spruce_planks
fill ^-18 ^2 ^14 ^-12 ^3 ^14 minecraft:spruce_fence
fill ^12 ^2 ^14 ^18 ^3 ^14 minecraft:spruce_fence
fill ^-45 ^1 ^28 ^-39 ^1 ^30 minecraft:spruce_planks
fill ^39 ^1 ^28 ^45 ^1 ^30 minecraft:spruce_planks
fill ^-45 ^2 ^30 ^-39 ^3 ^30 minecraft:spruce_fence
fill ^39 ^2 ^30 ^45 ^3 ^30 minecraft:spruce_fence

# === LANDSCAPING & RAINFOREST CANOPY ===
# West palms and canopy trees
fill ^-44 ^1 ^12 ^-44 ^9 ^12 minecraft:jungle_log
fill ^-48 ^8 ^8 ^-40 ^11 ^16 minecraft:jungle_leaves
fill ^-42 ^10 ^10 ^-36 ^13 ^16 minecraft:jungle_leaves
fill ^-51 ^1 ^26 ^-51 ^11 ^26 minecraft:jungle_log
fill ^-55 ^9 ^22 ^-47 ^13 ^30 minecraft:jungle_leaves
fill ^-48 ^11 ^24 ^-43 ^15 ^29 minecraft:jungle_leaves
fill ^-50 ^1 ^47 ^-50 ^13 ^47 minecraft:jungle_log
fill ^-55 ^11 ^42 ^-45 ^15 ^52 minecraft:jungle_leaves
fill ^-45 ^13 ^45 ^-40 ^17 ^51 minecraft:jungle_leaves
fill ^-48 ^1 ^70 ^-48 ^12 ^70 minecraft:jungle_log
fill ^-53 ^10 ^66 ^-43 ^14 ^75 minecraft:jungle_leaves

# East palms and canopy trees
fill ^44 ^1 ^12 ^44 ^9 ^12 minecraft:jungle_log
fill ^40 ^8 ^8 ^48 ^11 ^16 minecraft:jungle_leaves
fill ^36 ^10 ^10 ^42 ^13 ^16 minecraft:jungle_leaves
fill ^51 ^1 ^26 ^51 ^11 ^26 minecraft:jungle_log
fill ^47 ^9 ^22 ^55 ^13 ^30 minecraft:jungle_leaves
fill ^43 ^11 ^24 ^48 ^15 ^29 minecraft:jungle_leaves
fill ^50 ^1 ^47 ^50 ^13 ^47 minecraft:jungle_log
fill ^45 ^11 ^42 ^55 ^15 ^52 minecraft:jungle_leaves
fill ^40 ^13 ^45 ^45 ^17 ^51 minecraft:jungle_leaves
fill ^48 ^1 ^70 ^48 ^12 ^70 minecraft:jungle_log
fill ^43 ^10 ^66 ^53 ^14 ^75 minecraft:jungle_leaves

# Island trees
fill ^-14 ^1 ^52 ^-14 ^10 ^52 minecraft:jungle_log
fill ^-19 ^8 ^47 ^-9 ^12 ^57 minecraft:jungle_leaves
fill ^-11 ^10 ^49 ^-6 ^14 ^55 minecraft:jungle_leaves
fill ^18 ^1 ^66 ^18 ^9 ^66 minecraft:oak_log
fill ^13 ^7 ^61 ^23 ^12 ^71 minecraft:oak_leaves
fill ^20 ^9 ^64 ^26 ^13 ^69 minecraft:oak_leaves

# Cliff-top shrubs and hanging greenery masses
fill ^-51 ^10 ^88 ^-44 ^14 ^94 minecraft:jungle_leaves
fill ^44 ^11 ^88 ^51 ^15 ^94 minecraft:jungle_leaves
fill ^-43 ^18 ^93 ^-35 ^22 ^99 minecraft:jungle_leaves
fill ^35 ^19 ^92 ^43 ^23 ^99 minecraft:jungle_leaves
fill ^-34 ^26 ^97 ^-25 ^30 ^103 minecraft:jungle_leaves
fill ^25 ^27 ^97 ^34 ^31 ^103 minecraft:jungle_leaves
fill ^-23 ^33 ^102 ^-15 ^37 ^108 minecraft:jungle_leaves
fill ^15 ^33 ^102 ^23 ^37 ^108 minecraft:jungle_leaves
fill ^-9 ^39 ^106 ^-3 ^42 ^111 minecraft:jungle_leaves
fill ^3 ^39 ^106 ^9 ^42 ^111 minecraft:jungle_leaves

# Flowering color beds represented by bright low blocks
fill ^-37 ^ ^12 ^-31 ^ ^17 minecraft:poppy
fill ^31 ^ ^12 ^37 ^ ^17 minecraft:dandelion
fill ^-47 ^ ^34 ^-43 ^ ^39 minecraft:poppy
fill ^43 ^ ^34 ^47 ^ ^39 minecraft:dandelion

# === FINAL LIGHTING & WATER ACCENTS ===
setblock ^-10 ^1 ^42 minecraft:sea_lantern
setblock ^10 ^1 ^42 minecraft:sea_lantern
setblock ^-22 ^1 ^61 minecraft:sea_lantern
setblock ^22 ^1 ^61 minecraft:sea_lantern
setblock ^-12 ^1 ^72 minecraft:sea_lantern
setblock ^12 ^1 ^72 minecraft:sea_lantern
setblock ^-40 ^13 ^83 minecraft:lantern
setblock ^40 ^13 ^83 minecraft:lantern
setblock ^-15 ^8 ^78 minecraft:lantern
setblock ^15 ^8 ^78 minecraft:lantern

# Water jets near the arrival pier
fill ^-9 ^1 ^23 ^-9 ^4 ^23 minecraft:water
fill ^9 ^1 ^23 ^9 ^4 ^23 minecraft:water
fill ^-13 ^1 ^27 ^-13 ^3 ^27 minecraft:water
fill ^13 ^1 ^27 ^13 ^3 ^27 minecraft:water

# End marker beneath the entrance center
setblock ^ ^-1 ^ minecraft:sea_lantern
