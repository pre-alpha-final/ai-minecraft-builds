# PIRATE COVE PARK ATTRACTION - Minecraft Bedrock Edition
# Stand at ground level at the CENTER, face a cardinal direction, and look horizontally, then run this function.
# Coordinates use your view: ^left, ^up, ^forward. The main guest entrance is behind you.
# Approximate footprint: 124 x 124 blocks. Approximate maximum height: 42 blocks.
# This function builds the attraction only; it does not animate boats or effects.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

# === FOUNDATION & ISLAND BASE ===
execute as @s at @s rotated as @s run fill ^-62 ^-3 ^-62 ^62 ^-3 ^62 minecraft:stone
execute as @s at @s rotated as @s run fill ^-60 ^-2 ^-60 ^60 ^-2 ^60 minecraft:gravel
execute as @s at @s rotated as @s run fill ^ ^-1 ^-55 ^ ^-1 ^-55 minecraft:stone
execute as @s at @s rotated as @s run fill ^-10 ^-1 ^-54 ^10 ^-1 ^-54 minecraft:stone
execute as @s at @s rotated as @s run fill ^-14 ^-1 ^-53 ^14 ^-1 ^-53 minecraft:stone
execute as @s at @s rotated as @s run fill ^-17 ^-1 ^-52 ^17 ^-1 ^-52 minecraft:stone
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^-51 ^20 ^-1 ^-51 minecraft:stone
execute as @s at @s rotated as @s run fill ^-22 ^-1 ^-50 ^22 ^-1 ^-50 minecraft:stone
execute as @s at @s rotated as @s run fill ^-24 ^-1 ^-49 ^24 ^-1 ^-49 minecraft:stone
execute as @s at @s rotated as @s run fill ^-26 ^-1 ^-48 ^26 ^-1 ^-48 minecraft:stone
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^-47 ^28 ^-1 ^-47 minecraft:stone
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-46 ^30 ^-1 ^-46 minecraft:stone
execute as @s at @s rotated as @s run fill ^-31 ^-1 ^-45 ^31 ^-1 ^-45 minecraft:stone
execute as @s at @s rotated as @s run fill ^-33 ^-1 ^-44 ^33 ^-1 ^-44 minecraft:stone
execute as @s at @s rotated as @s run fill ^-34 ^-1 ^-43 ^34 ^-1 ^-43 minecraft:stone
execute as @s at @s rotated as @s run fill ^-35 ^-1 ^-42 ^35 ^-1 ^-42 minecraft:stone
execute as @s at @s rotated as @s run fill ^-36 ^-1 ^-41 ^36 ^-1 ^-41 minecraft:stone
execute as @s at @s rotated as @s run fill ^-37 ^-1 ^-40 ^37 ^-1 ^-40 minecraft:stone
execute as @s at @s rotated as @s run fill ^-38 ^-1 ^-39 ^38 ^-1 ^-39 minecraft:stone
execute as @s at @s rotated as @s run fill ^-39 ^-1 ^-38 ^39 ^-1 ^-38 minecraft:stone
execute as @s at @s rotated as @s run fill ^-40 ^-1 ^-37 ^40 ^-1 ^-37 minecraft:stone
execute as @s at @s rotated as @s run fill ^-41 ^-1 ^-36 ^41 ^-1 ^-36 minecraft:stone
execute as @s at @s rotated as @s run fill ^-42 ^-1 ^-35 ^42 ^-1 ^-35 minecraft:stone
execute as @s at @s rotated as @s run fill ^-43 ^-1 ^-34 ^43 ^-1 ^-34 minecraft:stone
execute as @s at @s rotated as @s run fill ^-44 ^-1 ^-33 ^44 ^-1 ^-33 minecraft:stone
execute as @s at @s rotated as @s run fill ^-44 ^-1 ^-32 ^44 ^-1 ^-32 minecraft:stone
execute as @s at @s rotated as @s run fill ^-45 ^-1 ^-31 ^45 ^-1 ^-31 minecraft:stone
execute as @s at @s rotated as @s run fill ^-46 ^-1 ^-30 ^46 ^-1 ^-30 minecraft:stone
execute as @s at @s rotated as @s run fill ^-46 ^-1 ^-29 ^46 ^-1 ^-29 minecraft:stone
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^-28 ^47 ^-1 ^-28 minecraft:stone
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^-27 ^47 ^-1 ^-27 minecraft:stone
execute as @s at @s rotated as @s run fill ^-48 ^-1 ^-26 ^48 ^-1 ^-26 minecraft:stone
execute as @s at @s rotated as @s run fill ^-48 ^-1 ^-25 ^48 ^-1 ^-25 minecraft:stone
execute as @s at @s rotated as @s run fill ^-49 ^-1 ^-24 ^49 ^-1 ^-24 minecraft:stone
execute as @s at @s rotated as @s run fill ^-49 ^-1 ^-23 ^49 ^-1 ^-23 minecraft:stone
execute as @s at @s rotated as @s run fill ^-50 ^-1 ^-22 ^50 ^-1 ^-22 minecraft:stone
execute as @s at @s rotated as @s run fill ^-50 ^-1 ^-21 ^50 ^-1 ^-21 minecraft:stone
execute as @s at @s rotated as @s run fill ^-51 ^-1 ^-20 ^51 ^-1 ^-20 minecraft:stone
execute as @s at @s rotated as @s run fill ^-51 ^-1 ^-19 ^51 ^-1 ^-19 minecraft:stone
execute as @s at @s rotated as @s run fill ^-51 ^-1 ^-18 ^51 ^-1 ^-18 minecraft:stone
execute as @s at @s rotated as @s run fill ^-52 ^-1 ^-17 ^52 ^-1 ^-17 minecraft:stone
execute as @s at @s rotated as @s run fill ^-52 ^-1 ^-16 ^52 ^-1 ^-16 minecraft:stone
execute as @s at @s rotated as @s run fill ^-52 ^-1 ^-15 ^52 ^-1 ^-15 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^-14 ^53 ^-1 ^-14 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^-13 ^53 ^-1 ^-13 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^-12 ^53 ^-1 ^-12 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^-11 ^53 ^-1 ^-11 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-10 ^54 ^-1 ^-10 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-9 ^54 ^-1 ^-9 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-8 ^54 ^-1 ^-8 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-7 ^54 ^-1 ^-7 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-6 ^54 ^-1 ^-6 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-5 ^54 ^-1 ^-5 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-4 ^54 ^-1 ^-4 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-3 ^54 ^-1 ^-3 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-2 ^54 ^-1 ^-2 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^-1 ^54 ^-1 ^-1 minecraft:stone
execute as @s at @s rotated as @s run fill ^-55 ^-1 ^ ^55 ^-1 ^ minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^1 ^54 ^-1 ^1 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^2 ^54 ^-1 ^2 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^3 ^54 ^-1 ^3 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^4 ^54 ^-1 ^4 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^5 ^54 ^-1 ^5 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^6 ^54 ^-1 ^6 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^7 ^54 ^-1 ^7 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^8 ^54 ^-1 ^8 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^9 ^54 ^-1 ^9 minecraft:stone
execute as @s at @s rotated as @s run fill ^-54 ^-1 ^10 ^54 ^-1 ^10 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^11 ^53 ^-1 ^11 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^12 ^53 ^-1 ^12 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^13 ^53 ^-1 ^13 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^-1 ^14 ^53 ^-1 ^14 minecraft:stone
execute as @s at @s rotated as @s run fill ^-52 ^-1 ^15 ^52 ^-1 ^15 minecraft:stone
execute as @s at @s rotated as @s run fill ^-52 ^-1 ^16 ^52 ^-1 ^16 minecraft:stone
execute as @s at @s rotated as @s run fill ^-52 ^-1 ^17 ^52 ^-1 ^17 minecraft:stone
execute as @s at @s rotated as @s run fill ^-51 ^-1 ^18 ^51 ^-1 ^18 minecraft:stone
execute as @s at @s rotated as @s run fill ^-51 ^-1 ^19 ^51 ^-1 ^19 minecraft:stone
execute as @s at @s rotated as @s run fill ^-51 ^-1 ^20 ^51 ^-1 ^20 minecraft:stone
execute as @s at @s rotated as @s run fill ^-50 ^-1 ^21 ^50 ^-1 ^21 minecraft:stone
execute as @s at @s rotated as @s run fill ^-50 ^-1 ^22 ^50 ^-1 ^22 minecraft:stone
execute as @s at @s rotated as @s run fill ^-49 ^-1 ^23 ^49 ^-1 ^23 minecraft:stone
execute as @s at @s rotated as @s run fill ^-49 ^-1 ^24 ^49 ^-1 ^24 minecraft:stone
execute as @s at @s rotated as @s run fill ^-48 ^-1 ^25 ^48 ^-1 ^25 minecraft:stone
execute as @s at @s rotated as @s run fill ^-48 ^-1 ^26 ^48 ^-1 ^26 minecraft:stone
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^27 ^47 ^-1 ^27 minecraft:stone
execute as @s at @s rotated as @s run fill ^-47 ^-1 ^28 ^47 ^-1 ^28 minecraft:stone
execute as @s at @s rotated as @s run fill ^-46 ^-1 ^29 ^46 ^-1 ^29 minecraft:stone
execute as @s at @s rotated as @s run fill ^-46 ^-1 ^30 ^46 ^-1 ^30 minecraft:stone
execute as @s at @s rotated as @s run fill ^-45 ^-1 ^31 ^45 ^-1 ^31 minecraft:stone
execute as @s at @s rotated as @s run fill ^-44 ^-1 ^32 ^44 ^-1 ^32 minecraft:stone
execute as @s at @s rotated as @s run fill ^-44 ^-1 ^33 ^44 ^-1 ^33 minecraft:stone
execute as @s at @s rotated as @s run fill ^-43 ^-1 ^34 ^43 ^-1 ^34 minecraft:stone
execute as @s at @s rotated as @s run fill ^-42 ^-1 ^35 ^42 ^-1 ^35 minecraft:stone
execute as @s at @s rotated as @s run fill ^-41 ^-1 ^36 ^41 ^-1 ^36 minecraft:stone
execute as @s at @s rotated as @s run fill ^-40 ^-1 ^37 ^40 ^-1 ^37 minecraft:stone
execute as @s at @s rotated as @s run fill ^-39 ^-1 ^38 ^39 ^-1 ^38 minecraft:stone
execute as @s at @s rotated as @s run fill ^-38 ^-1 ^39 ^38 ^-1 ^39 minecraft:stone
execute as @s at @s rotated as @s run fill ^-37 ^-1 ^40 ^37 ^-1 ^40 minecraft:stone
execute as @s at @s rotated as @s run fill ^-36 ^-1 ^41 ^36 ^-1 ^41 minecraft:stone
execute as @s at @s rotated as @s run fill ^-35 ^-1 ^42 ^35 ^-1 ^42 minecraft:stone
execute as @s at @s rotated as @s run fill ^-34 ^-1 ^43 ^34 ^-1 ^43 minecraft:stone
execute as @s at @s rotated as @s run fill ^-33 ^-1 ^44 ^33 ^-1 ^44 minecraft:stone
execute as @s at @s rotated as @s run fill ^-31 ^-1 ^45 ^31 ^-1 ^45 minecraft:stone
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^46 ^30 ^-1 ^46 minecraft:stone
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^47 ^28 ^-1 ^47 minecraft:stone
execute as @s at @s rotated as @s run fill ^-26 ^-1 ^48 ^26 ^-1 ^48 minecraft:stone
execute as @s at @s rotated as @s run fill ^-24 ^-1 ^49 ^24 ^-1 ^49 minecraft:stone
execute as @s at @s rotated as @s run fill ^-22 ^-1 ^50 ^22 ^-1 ^50 minecraft:stone
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^51 ^20 ^-1 ^51 minecraft:stone
execute as @s at @s rotated as @s run fill ^-17 ^-1 ^52 ^17 ^-1 ^52 minecraft:stone
execute as @s at @s rotated as @s run fill ^-14 ^-1 ^53 ^14 ^-1 ^53 minecraft:stone
execute as @s at @s rotated as @s run fill ^-10 ^-1 ^54 ^10 ^-1 ^54 minecraft:stone
execute as @s at @s rotated as @s run fill ^ ^-1 ^55 ^ ^-1 ^55 minecraft:stone
execute as @s at @s rotated as @s run fill ^ ^ ^-52 ^ ^ ^-52 minecraft:sand
execute as @s at @s rotated as @s run fill ^-10 ^ ^-51 ^10 ^ ^-51 minecraft:sand
execute as @s at @s rotated as @s run fill ^-14 ^ ^-50 ^14 ^ ^-50 minecraft:sand
execute as @s at @s rotated as @s run fill ^-17 ^ ^-49 ^17 ^ ^-49 minecraft:sand
execute as @s at @s rotated as @s run fill ^-20 ^ ^-48 ^20 ^ ^-48 minecraft:sand
execute as @s at @s rotated as @s run fill ^-22 ^ ^-47 ^22 ^ ^-47 minecraft:sand
execute as @s at @s rotated as @s run fill ^-24 ^ ^-46 ^24 ^ ^-46 minecraft:sand
execute as @s at @s rotated as @s run fill ^-26 ^ ^-45 ^26 ^ ^-45 minecraft:sand
execute as @s at @s rotated as @s run fill ^-27 ^ ^-44 ^27 ^ ^-44 minecraft:sand
execute as @s at @s rotated as @s run fill ^-29 ^ ^-43 ^29 ^ ^-43 minecraft:sand
execute as @s at @s rotated as @s run fill ^-30 ^ ^-42 ^30 ^ ^-42 minecraft:sand
execute as @s at @s rotated as @s run fill ^-31 ^ ^-41 ^31 ^ ^-41 minecraft:sand
execute as @s at @s rotated as @s run fill ^-33 ^ ^-40 ^33 ^ ^-40 minecraft:sand
execute as @s at @s rotated as @s run fill ^-34 ^ ^-39 ^34 ^ ^-39 minecraft:sand
execute as @s at @s rotated as @s run fill ^-35 ^ ^-38 ^35 ^ ^-38 minecraft:sand
execute as @s at @s rotated as @s run fill ^-36 ^ ^-37 ^36 ^ ^-37 minecraft:sand
execute as @s at @s rotated as @s run fill ^-37 ^ ^-36 ^37 ^ ^-36 minecraft:sand
execute as @s at @s rotated as @s run fill ^-38 ^ ^-35 ^38 ^ ^-35 minecraft:sand
execute as @s at @s rotated as @s run fill ^-39 ^ ^-34 ^39 ^ ^-34 minecraft:sand
execute as @s at @s rotated as @s run fill ^-40 ^ ^-33 ^40 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run fill ^-40 ^ ^-32 ^40 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run fill ^-41 ^ ^-31 ^41 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run fill ^-42 ^ ^-30 ^42 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run fill ^-43 ^ ^-29 ^43 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run fill ^-43 ^ ^-28 ^43 ^ ^-28 minecraft:sand
execute as @s at @s rotated as @s run fill ^-44 ^ ^-27 ^44 ^ ^-27 minecraft:sand
execute as @s at @s rotated as @s run fill ^-45 ^ ^-26 ^45 ^ ^-26 minecraft:sand
execute as @s at @s rotated as @s run fill ^-45 ^ ^-25 ^45 ^ ^-25 minecraft:sand
execute as @s at @s rotated as @s run fill ^-46 ^ ^-24 ^46 ^ ^-24 minecraft:sand
execute as @s at @s rotated as @s run fill ^-46 ^ ^-23 ^46 ^ ^-23 minecraft:sand
execute as @s at @s rotated as @s run fill ^-47 ^ ^-22 ^47 ^ ^-22 minecraft:sand
execute as @s at @s rotated as @s run fill ^-47 ^ ^-21 ^47 ^ ^-21 minecraft:sand
execute as @s at @s rotated as @s run fill ^-48 ^ ^-20 ^48 ^ ^-20 minecraft:sand
execute as @s at @s rotated as @s run fill ^-48 ^ ^-19 ^48 ^ ^-19 minecraft:sand
execute as @s at @s rotated as @s run fill ^-48 ^ ^-18 ^48 ^ ^-18 minecraft:sand
execute as @s at @s rotated as @s run fill ^-49 ^ ^-17 ^49 ^ ^-17 minecraft:sand
execute as @s at @s rotated as @s run fill ^-49 ^ ^-16 ^49 ^ ^-16 minecraft:sand
execute as @s at @s rotated as @s run fill ^-49 ^ ^-15 ^49 ^ ^-15 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^-14 ^50 ^ ^-14 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^-13 ^50 ^ ^-13 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^-12 ^50 ^ ^-12 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^-11 ^50 ^ ^-11 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-10 ^51 ^ ^-10 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-9 ^51 ^ ^-9 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-8 ^51 ^ ^-8 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-7 ^51 ^ ^-7 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-6 ^51 ^ ^-6 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-5 ^51 ^ ^-5 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-4 ^51 ^ ^-4 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-3 ^51 ^ ^-3 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-2 ^51 ^ ^-2 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^-1 ^51 ^ ^-1 minecraft:sand
execute as @s at @s rotated as @s run fill ^-52 ^ ^ ^52 ^ ^ minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^1 ^51 ^ ^1 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^2 ^51 ^ ^2 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^3 ^51 ^ ^3 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^4 ^51 ^ ^4 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^5 ^51 ^ ^5 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^6 ^51 ^ ^6 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^7 ^51 ^ ^7 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^8 ^51 ^ ^8 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^9 ^51 ^ ^9 minecraft:sand
execute as @s at @s rotated as @s run fill ^-51 ^ ^10 ^51 ^ ^10 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^11 ^50 ^ ^11 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^12 ^50 ^ ^12 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^13 ^50 ^ ^13 minecraft:sand
execute as @s at @s rotated as @s run fill ^-50 ^ ^14 ^50 ^ ^14 minecraft:sand
execute as @s at @s rotated as @s run fill ^-49 ^ ^15 ^49 ^ ^15 minecraft:sand
execute as @s at @s rotated as @s run fill ^-49 ^ ^16 ^49 ^ ^16 minecraft:sand
execute as @s at @s rotated as @s run fill ^-49 ^ ^17 ^49 ^ ^17 minecraft:sand
execute as @s at @s rotated as @s run fill ^-48 ^ ^18 ^48 ^ ^18 minecraft:sand
execute as @s at @s rotated as @s run fill ^-48 ^ ^19 ^48 ^ ^19 minecraft:sand
execute as @s at @s rotated as @s run fill ^-48 ^ ^20 ^48 ^ ^20 minecraft:sand
execute as @s at @s rotated as @s run fill ^-47 ^ ^21 ^47 ^ ^21 minecraft:sand
execute as @s at @s rotated as @s run fill ^-47 ^ ^22 ^47 ^ ^22 minecraft:sand
execute as @s at @s rotated as @s run fill ^-46 ^ ^23 ^46 ^ ^23 minecraft:sand
execute as @s at @s rotated as @s run fill ^-46 ^ ^24 ^46 ^ ^24 minecraft:sand
execute as @s at @s rotated as @s run fill ^-45 ^ ^25 ^45 ^ ^25 minecraft:sand
execute as @s at @s rotated as @s run fill ^-45 ^ ^26 ^45 ^ ^26 minecraft:sand
execute as @s at @s rotated as @s run fill ^-44 ^ ^27 ^44 ^ ^27 minecraft:sand
execute as @s at @s rotated as @s run fill ^-43 ^ ^28 ^43 ^ ^28 minecraft:sand
execute as @s at @s rotated as @s run fill ^-43 ^ ^29 ^43 ^ ^29 minecraft:sand
execute as @s at @s rotated as @s run fill ^-42 ^ ^30 ^42 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run fill ^-41 ^ ^31 ^41 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run fill ^-40 ^ ^32 ^40 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run fill ^-40 ^ ^33 ^40 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run fill ^-39 ^ ^34 ^39 ^ ^34 minecraft:sand
execute as @s at @s rotated as @s run fill ^-38 ^ ^35 ^38 ^ ^35 minecraft:sand
execute as @s at @s rotated as @s run fill ^-37 ^ ^36 ^37 ^ ^36 minecraft:sand
execute as @s at @s rotated as @s run fill ^-36 ^ ^37 ^36 ^ ^37 minecraft:sand
execute as @s at @s rotated as @s run fill ^-35 ^ ^38 ^35 ^ ^38 minecraft:sand
execute as @s at @s rotated as @s run fill ^-34 ^ ^39 ^34 ^ ^39 minecraft:sand
execute as @s at @s rotated as @s run fill ^-33 ^ ^40 ^33 ^ ^40 minecraft:sand
execute as @s at @s rotated as @s run fill ^-31 ^ ^41 ^31 ^ ^41 minecraft:sand
execute as @s at @s rotated as @s run fill ^-30 ^ ^42 ^30 ^ ^42 minecraft:sand
execute as @s at @s rotated as @s run fill ^-29 ^ ^43 ^29 ^ ^43 minecraft:sand
execute as @s at @s rotated as @s run fill ^-27 ^ ^44 ^27 ^ ^44 minecraft:sand
execute as @s at @s rotated as @s run fill ^-26 ^ ^45 ^26 ^ ^45 minecraft:sand
execute as @s at @s rotated as @s run fill ^-24 ^ ^46 ^24 ^ ^46 minecraft:sand
execute as @s at @s rotated as @s run fill ^-22 ^ ^47 ^22 ^ ^47 minecraft:sand
execute as @s at @s rotated as @s run fill ^-20 ^ ^48 ^20 ^ ^48 minecraft:sand
execute as @s at @s rotated as @s run fill ^-17 ^ ^49 ^17 ^ ^49 minecraft:sand
execute as @s at @s rotated as @s run fill ^-14 ^ ^50 ^14 ^ ^50 minecraft:sand
execute as @s at @s rotated as @s run fill ^-10 ^ ^51 ^10 ^ ^51 minecraft:sand
execute as @s at @s rotated as @s run fill ^ ^ ^52 ^ ^ ^52 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-6 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-5 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-4 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-3 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-2 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^-1 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^ minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^1 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^2 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^3 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^4 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^5 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^6 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-53 ^ ^7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^-12 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^-11 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^-10 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^-9 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^-8 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^-7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^8 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^9 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^10 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^11 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^ ^12 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^-16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^-15 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^-14 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^-13 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^13 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^14 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^15 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^ ^16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^-19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^-18 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^-17 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^-16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^17 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^18 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^ ^19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^ ^-21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^ ^-20 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^ ^-19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^ ^19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^ ^20 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^ ^21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^ ^-23 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^ ^-22 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^ ^-21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^ ^21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^ ^22 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^ ^23 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^ ^-25 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^ ^-24 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^ ^24 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^ ^25 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^ ^-27 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^ ^-26 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^ ^26 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^ ^27 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-45 ^ ^-28 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-45 ^ ^28 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^ ^-30 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^ ^-29 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^ ^29 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^ ^30 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-43 ^ ^-31 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-43 ^ ^31 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^ ^-33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^ ^-32 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^ ^32 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^ ^33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^ ^-34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^ ^-33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^ ^33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^ ^34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^ ^-35 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^ ^-34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^ ^34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^ ^35 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-39 ^ ^-36 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-39 ^ ^36 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-38 ^ ^-37 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-38 ^ ^37 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-37 ^ ^-38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-37 ^ ^38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^ ^-39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^ ^-38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^ ^38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^ ^39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^ ^-40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^ ^-39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^ ^39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^ ^40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-34 ^ ^40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-34 ^ ^41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-33 ^ ^41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-33 ^ ^42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-32 ^ ^42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-32 ^ ^43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-31 ^ ^43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^ ^43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^ ^44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-29 ^ ^-45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-29 ^ ^-44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-29 ^ ^44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-29 ^ ^45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-28 ^ ^-45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-28 ^ ^45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^ ^45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^ ^46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-26 ^ ^-46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-26 ^ ^46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-25 ^ ^-47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-25 ^ ^47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-24 ^ ^-47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-24 ^ ^47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-23 ^ ^-48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-23 ^ ^48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-22 ^ ^-48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-22 ^ ^48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-21 ^ ^-49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-21 ^ ^49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-20 ^ ^-49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-20 ^ ^49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-19 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-19 ^ ^-49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-19 ^ ^49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-19 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-18 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-18 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-17 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-17 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-15 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-15 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-14 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-14 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-13 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-13 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-12 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-12 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-11 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-11 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-10 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-10 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-9 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-9 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-8 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-8 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-7 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-7 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-6 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-6 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-5 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-5 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-4 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-4 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-3 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-3 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-2 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-2 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-1 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-1 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^ ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^ ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^1 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^1 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^2 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^2 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^3 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^3 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^4 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^4 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^5 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^5 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^6 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^6 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^7 ^ ^-53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^7 ^ ^53 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^8 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^8 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^9 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^9 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^10 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^10 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^11 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^11 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^12 ^ ^-52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^12 ^ ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^13 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^13 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^14 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^14 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^15 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^15 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^ ^-51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^ ^51 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^17 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^17 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^18 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^18 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^ ^-50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^ ^-49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^ ^49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^ ^50 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^20 ^ ^-49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^20 ^ ^49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^21 ^ ^-49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^21 ^ ^49 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^22 ^ ^-48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^22 ^ ^48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^23 ^ ^-48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^23 ^ ^48 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^24 ^ ^-47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^24 ^ ^47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^25 ^ ^-47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^25 ^ ^47 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^26 ^ ^-46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^26 ^ ^46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^ ^-46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^ ^-45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^ ^45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^ ^46 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^28 ^ ^-45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^28 ^ ^45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^29 ^ ^-45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^29 ^ ^-44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^29 ^ ^44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^29 ^ ^45 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^ ^-44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^ ^-43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^ ^43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^ ^44 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^31 ^ ^-43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^31 ^ ^43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^32 ^ ^-43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^32 ^ ^-42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^32 ^ ^42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^32 ^ ^43 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^ ^-42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^ ^-41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^ ^41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^ ^42 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^ ^-41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^ ^-40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^ ^40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^ ^41 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^ ^-40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^ ^-39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^ ^39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^ ^40 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^ ^-39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^ ^-38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^ ^38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^ ^39 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^37 ^ ^-38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^37 ^ ^38 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^38 ^ ^-37 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^38 ^ ^37 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^39 ^ ^-36 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^39 ^ ^36 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^ ^-35 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^ ^-34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^ ^34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^ ^35 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^41 ^ ^-34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^41 ^ ^-33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^41 ^ ^33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^41 ^ ^34 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^ ^-33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^ ^-32 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^ ^32 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^ ^33 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^43 ^ ^-31 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^43 ^ ^31 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^ ^-30 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^ ^-29 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^ ^29 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^ ^30 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^ ^-28 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^ ^28 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^ ^-27 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^ ^-26 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^ ^26 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^ ^27 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^ ^-25 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^ ^-24 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^ ^24 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^ ^25 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^ ^-23 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^ ^-22 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^ ^-21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^ ^21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^ ^22 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^ ^23 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^ ^-21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^ ^-20 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^ ^-19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^ ^19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^ ^20 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^ ^21 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^-19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^-18 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^-17 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^-16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^17 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^18 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^ ^19 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^-16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^-15 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^-14 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^-13 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^13 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^14 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^15 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^ ^16 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^-12 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^-11 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^-10 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^-9 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^-8 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^-7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^8 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^9 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^10 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^11 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^ ^12 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-6 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-5 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-4 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-3 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-2 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^-1 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^ minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^1 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^2 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^3 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^4 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^5 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^6 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^53 ^ ^7 minecraft:cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-6 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-5 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-4 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-3 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-2 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^-1 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^ minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^1 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^2 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^3 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^4 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^5 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^6 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-52 ^1 ^7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^-12 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^-11 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^-10 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^-9 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^-8 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^-7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^8 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^9 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^10 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^11 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-51 ^1 ^12 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^-16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^-15 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^-14 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^-13 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^13 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^14 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^15 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-50 ^1 ^16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^-18 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^-17 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^-16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^17 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^18 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^1 ^-21 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^1 ^-20 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^1 ^-19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^1 ^19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^1 ^20 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-48 ^1 ^21 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^1 ^-23 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^1 ^-22 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^1 ^22 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-47 ^1 ^23 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^1 ^-25 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^1 ^-24 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^1 ^-23 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^1 ^23 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^1 ^24 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-46 ^1 ^25 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-45 ^1 ^-27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-45 ^1 ^-26 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-45 ^1 ^26 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-45 ^1 ^27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^1 ^-28 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^1 ^-27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^1 ^27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-44 ^1 ^28 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-43 ^1 ^-30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-43 ^1 ^-29 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-43 ^1 ^29 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-43 ^1 ^30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^1 ^-31 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^1 ^-30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^1 ^30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-42 ^1 ^31 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^1 ^-32 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^1 ^-31 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^1 ^31 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-41 ^1 ^32 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^1 ^-34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^1 ^-33 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^1 ^33 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-40 ^1 ^34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-39 ^1 ^-35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-39 ^1 ^-34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-39 ^1 ^34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-39 ^1 ^35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-38 ^1 ^-36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-38 ^1 ^-35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-38 ^1 ^35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-38 ^1 ^36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-37 ^1 ^-37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-37 ^1 ^-36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-37 ^1 ^36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-37 ^1 ^37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^1 ^-38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^1 ^-37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^1 ^37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-36 ^1 ^38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^1 ^-39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^1 ^-38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^1 ^38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-35 ^1 ^39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-34 ^1 ^-39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-34 ^1 ^39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-33 ^1 ^-40 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-33 ^1 ^40 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-32 ^1 ^-41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-32 ^1 ^41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-31 ^1 ^-42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-31 ^1 ^42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^1 ^-43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^1 ^-42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^1 ^42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-30 ^1 ^43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-29 ^1 ^-43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-29 ^1 ^43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-28 ^1 ^-44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-28 ^1 ^44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^1 ^-45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^1 ^-44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^1 ^44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-27 ^1 ^45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-26 ^1 ^-45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-26 ^1 ^45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-25 ^1 ^-46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-25 ^1 ^-45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-25 ^1 ^45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-25 ^1 ^46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-24 ^1 ^-46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-24 ^1 ^46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-23 ^1 ^-47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-23 ^1 ^47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-22 ^1 ^-47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-22 ^1 ^47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-21 ^1 ^-48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-21 ^1 ^-47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-21 ^1 ^47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-21 ^1 ^48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-20 ^1 ^-48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-20 ^1 ^48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-19 ^1 ^-48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-19 ^1 ^48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-18 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-18 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-17 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-17 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-16 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-15 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-15 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-14 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-14 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-13 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-13 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-12 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-12 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-11 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-11 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-10 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-10 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-9 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-9 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-8 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-8 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-7 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-7 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-7 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-7 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-6 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-6 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-5 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-5 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-4 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-4 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-3 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-3 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-2 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-2 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-1 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^-1 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^ ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^ ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^1 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^1 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^2 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^2 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^3 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^3 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^4 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^4 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^5 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^5 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^6 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^6 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^7 ^1 ^-52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^7 ^1 ^52 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^8 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^8 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^9 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^9 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^10 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^10 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^11 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^11 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^12 ^1 ^-51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^12 ^1 ^51 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^13 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^13 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^14 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^14 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^15 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^15 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^1 ^-50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^16 ^1 ^50 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^17 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^17 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^18 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^18 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^1 ^-49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^1 ^-48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^1 ^48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^19 ^1 ^49 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^20 ^1 ^-48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^20 ^1 ^48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^21 ^1 ^-48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^21 ^1 ^-47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^21 ^1 ^47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^21 ^1 ^48 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^22 ^1 ^-47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^22 ^1 ^47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^23 ^1 ^-47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^23 ^1 ^-46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^23 ^1 ^46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^23 ^1 ^47 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^24 ^1 ^-46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^24 ^1 ^46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^25 ^1 ^-46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^25 ^1 ^-45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^25 ^1 ^45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^25 ^1 ^46 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^26 ^1 ^-45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^26 ^1 ^45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^1 ^-45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^1 ^-44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^1 ^44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^27 ^1 ^45 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^28 ^1 ^-44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^28 ^1 ^44 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^29 ^1 ^-43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^29 ^1 ^43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^1 ^-43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^1 ^-42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^1 ^42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^30 ^1 ^43 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^31 ^1 ^-42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^31 ^1 ^-41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^31 ^1 ^41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^31 ^1 ^42 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^32 ^1 ^-41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^32 ^1 ^41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^1 ^-41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^1 ^-40 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^1 ^40 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^33 ^1 ^41 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^1 ^-40 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^1 ^-39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^1 ^39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^34 ^1 ^40 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^1 ^-39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^1 ^-38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^1 ^38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^35 ^1 ^39 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^1 ^-38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^1 ^-37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^1 ^37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^36 ^1 ^38 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^37 ^1 ^-37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^37 ^1 ^-36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^37 ^1 ^36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^37 ^1 ^37 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^38 ^1 ^-36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^38 ^1 ^-35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^38 ^1 ^35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^38 ^1 ^36 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^39 ^1 ^-35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^39 ^1 ^-34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^39 ^1 ^34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^39 ^1 ^35 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^1 ^-34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^1 ^-33 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^1 ^33 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^40 ^1 ^34 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^41 ^1 ^-32 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^41 ^1 ^32 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^1 ^-31 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^1 ^-30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^1 ^30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^42 ^1 ^31 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^43 ^1 ^-30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^43 ^1 ^-29 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^43 ^1 ^29 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^43 ^1 ^30 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^1 ^-28 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^1 ^-27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^1 ^27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^44 ^1 ^28 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^1 ^-27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^1 ^-26 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^1 ^-25 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^1 ^25 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^1 ^26 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^45 ^1 ^27 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^1 ^-25 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^1 ^-24 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^1 ^24 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^46 ^1 ^25 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^1 ^-23 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^1 ^-22 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^1 ^-21 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^1 ^21 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^1 ^22 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^47 ^1 ^23 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^1 ^-21 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^1 ^-20 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^1 ^-19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^1 ^19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^1 ^20 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^48 ^1 ^21 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^-19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^-18 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^-17 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^-16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^17 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^18 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^49 ^1 ^19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^-16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^-15 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^-14 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^-13 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^13 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^14 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^15 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^50 ^1 ^16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^-12 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^-11 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^-10 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^-9 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^-8 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^-7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^8 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^9 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^10 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^11 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^51 ^1 ^12 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-7 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-6 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-5 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-4 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-3 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-2 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^-1 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^ minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^1 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^2 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^3 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^4 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^5 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^6 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run setblock ^52 ^1 ^7 minecraft:mossy_cobblestone

# === CENTRAL LAGOON ===
execute as @s at @s rotated as @s run fill ^ ^ ^-31 ^ ^ ^-31 minecraft:water
execute as @s at @s rotated as @s run fill ^-7 ^ ^-30 ^7 ^ ^-30 minecraft:water
execute as @s at @s rotated as @s run fill ^-10 ^ ^-29 ^10 ^ ^-29 minecraft:water
execute as @s at @s rotated as @s run fill ^-13 ^ ^-28 ^13 ^ ^-28 minecraft:water
execute as @s at @s rotated as @s run fill ^-15 ^ ^-27 ^15 ^ ^-27 minecraft:water
execute as @s at @s rotated as @s run fill ^-16 ^ ^-26 ^16 ^ ^-26 minecraft:water
execute as @s at @s rotated as @s run fill ^-18 ^ ^-25 ^18 ^ ^-25 minecraft:water
execute as @s at @s rotated as @s run fill ^-19 ^ ^-24 ^19 ^ ^-24 minecraft:water
execute as @s at @s rotated as @s run fill ^-20 ^ ^-23 ^20 ^ ^-23 minecraft:water
execute as @s at @s rotated as @s run fill ^-21 ^ ^-22 ^21 ^ ^-22 minecraft:water
execute as @s at @s rotated as @s run fill ^-22 ^ ^-21 ^22 ^ ^-21 minecraft:water
execute as @s at @s rotated as @s run fill ^-23 ^ ^-20 ^23 ^ ^-20 minecraft:water
execute as @s at @s rotated as @s run fill ^-24 ^ ^-19 ^24 ^ ^-19 minecraft:water
execute as @s at @s rotated as @s run fill ^-25 ^ ^-18 ^25 ^ ^-18 minecraft:water
execute as @s at @s rotated as @s run fill ^-25 ^ ^-17 ^25 ^ ^-17 minecraft:water
execute as @s at @s rotated as @s run fill ^-26 ^ ^-16 ^26 ^ ^-16 minecraft:water
execute as @s at @s rotated as @s run fill ^-27 ^ ^-15 ^27 ^ ^-15 minecraft:water
execute as @s at @s rotated as @s run fill ^-27 ^ ^-14 ^27 ^ ^-14 minecraft:water
execute as @s at @s rotated as @s run fill ^-28 ^ ^-13 ^28 ^ ^-13 minecraft:water
execute as @s at @s rotated as @s run fill ^-28 ^ ^-12 ^28 ^ ^-12 minecraft:water
execute as @s at @s rotated as @s run fill ^-28 ^ ^-11 ^28 ^ ^-11 minecraft:water
execute as @s at @s rotated as @s run fill ^-29 ^ ^-10 ^29 ^ ^-10 minecraft:water
execute as @s at @s rotated as @s run fill ^-29 ^ ^-9 ^29 ^ ^-9 minecraft:water
execute as @s at @s rotated as @s run fill ^-29 ^ ^-8 ^29 ^ ^-8 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-7 ^30 ^ ^-7 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-6 ^30 ^ ^-6 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-5 ^30 ^ ^-5 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-4 ^30 ^ ^-4 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-3 ^30 ^ ^-3 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-2 ^30 ^ ^-2 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^-1 ^30 ^ ^-1 minecraft:water
execute as @s at @s rotated as @s run fill ^-31 ^ ^ ^31 ^ ^ minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^1 ^30 ^ ^1 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^2 ^30 ^ ^2 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^3 ^30 ^ ^3 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^4 ^30 ^ ^4 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^5 ^30 ^ ^5 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^6 ^30 ^ ^6 minecraft:water
execute as @s at @s rotated as @s run fill ^-30 ^ ^7 ^30 ^ ^7 minecraft:water
execute as @s at @s rotated as @s run fill ^-29 ^ ^8 ^29 ^ ^8 minecraft:water
execute as @s at @s rotated as @s run fill ^-29 ^ ^9 ^29 ^ ^9 minecraft:water
execute as @s at @s rotated as @s run fill ^-29 ^ ^10 ^29 ^ ^10 minecraft:water
execute as @s at @s rotated as @s run fill ^-28 ^ ^11 ^28 ^ ^11 minecraft:water
execute as @s at @s rotated as @s run fill ^-28 ^ ^12 ^28 ^ ^12 minecraft:water
execute as @s at @s rotated as @s run fill ^-28 ^ ^13 ^28 ^ ^13 minecraft:water
execute as @s at @s rotated as @s run fill ^-27 ^ ^14 ^27 ^ ^14 minecraft:water
execute as @s at @s rotated as @s run fill ^-27 ^ ^15 ^27 ^ ^15 minecraft:water
execute as @s at @s rotated as @s run fill ^-26 ^ ^16 ^26 ^ ^16 minecraft:water
execute as @s at @s rotated as @s run fill ^-25 ^ ^17 ^25 ^ ^17 minecraft:water
execute as @s at @s rotated as @s run fill ^-25 ^ ^18 ^25 ^ ^18 minecraft:water
execute as @s at @s rotated as @s run fill ^-24 ^ ^19 ^24 ^ ^19 minecraft:water
execute as @s at @s rotated as @s run fill ^-23 ^ ^20 ^23 ^ ^20 minecraft:water
execute as @s at @s rotated as @s run fill ^-22 ^ ^21 ^22 ^ ^21 minecraft:water
execute as @s at @s rotated as @s run fill ^-21 ^ ^22 ^21 ^ ^22 minecraft:water
execute as @s at @s rotated as @s run fill ^-20 ^ ^23 ^20 ^ ^23 minecraft:water
execute as @s at @s rotated as @s run fill ^-19 ^ ^24 ^19 ^ ^24 minecraft:water
execute as @s at @s rotated as @s run fill ^-18 ^ ^25 ^18 ^ ^25 minecraft:water
execute as @s at @s rotated as @s run fill ^-16 ^ ^26 ^16 ^ ^26 minecraft:water
execute as @s at @s rotated as @s run fill ^-15 ^ ^27 ^15 ^ ^27 minecraft:water
execute as @s at @s rotated as @s run fill ^-13 ^ ^28 ^13 ^ ^28 minecraft:water
execute as @s at @s rotated as @s run fill ^-10 ^ ^29 ^10 ^ ^29 minecraft:water
execute as @s at @s rotated as @s run fill ^-7 ^ ^30 ^7 ^ ^30 minecraft:water
execute as @s at @s rotated as @s run fill ^ ^ ^31 ^ ^ ^31 minecraft:water
execute as @s at @s rotated as @s run fill ^ ^-1 ^-31 ^ ^-1 ^-31 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-7 ^-1 ^-30 ^7 ^-1 ^-30 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-10 ^-1 ^-29 ^10 ^-1 ^-29 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-13 ^-1 ^-28 ^13 ^-1 ^-28 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-15 ^-1 ^-27 ^15 ^-1 ^-27 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-16 ^-1 ^-26 ^16 ^-1 ^-26 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^-25 ^18 ^-1 ^-25 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-19 ^-1 ^-24 ^19 ^-1 ^-24 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^-23 ^20 ^-1 ^-23 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-21 ^-1 ^-22 ^21 ^-1 ^-22 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-22 ^-1 ^-21 ^22 ^-1 ^-21 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-23 ^-1 ^-20 ^23 ^-1 ^-20 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-24 ^-1 ^-19 ^24 ^-1 ^-19 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-1 ^-18 ^25 ^-1 ^-18 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-1 ^-17 ^25 ^-1 ^-17 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-1 ^-16 ^26 ^-1 ^-16 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-27 ^-1 ^-15 ^27 ^-1 ^-15 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-27 ^-1 ^-14 ^27 ^-1 ^-14 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^-13 ^28 ^-1 ^-13 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^-12 ^28 ^-1 ^-12 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^-11 ^28 ^-1 ^-11 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-29 ^-1 ^-10 ^29 ^-1 ^-10 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-29 ^-1 ^-9 ^29 ^-1 ^-9 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-29 ^-1 ^-8 ^29 ^-1 ^-8 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-7 ^30 ^-1 ^-7 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-6 ^30 ^-1 ^-6 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-5 ^30 ^-1 ^-5 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-4 ^30 ^-1 ^-4 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-3 ^30 ^-1 ^-3 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-2 ^30 ^-1 ^-2 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^-1 ^30 ^-1 ^-1 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-31 ^-1 ^ ^31 ^-1 ^ minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^1 ^30 ^-1 ^1 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^2 ^30 ^-1 ^2 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^3 ^30 ^-1 ^3 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^4 ^30 ^-1 ^4 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^5 ^30 ^-1 ^5 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^6 ^30 ^-1 ^6 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-30 ^-1 ^7 ^30 ^-1 ^7 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-29 ^-1 ^8 ^29 ^-1 ^8 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-29 ^-1 ^9 ^29 ^-1 ^9 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-29 ^-1 ^10 ^29 ^-1 ^10 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^11 ^28 ^-1 ^11 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^12 ^28 ^-1 ^12 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-28 ^-1 ^13 ^28 ^-1 ^13 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-27 ^-1 ^14 ^27 ^-1 ^14 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-27 ^-1 ^15 ^27 ^-1 ^15 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-1 ^16 ^26 ^-1 ^16 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-1 ^17 ^25 ^-1 ^17 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-1 ^18 ^25 ^-1 ^18 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-24 ^-1 ^19 ^24 ^-1 ^19 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-23 ^-1 ^20 ^23 ^-1 ^20 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-22 ^-1 ^21 ^22 ^-1 ^21 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-21 ^-1 ^22 ^21 ^-1 ^22 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^23 ^20 ^-1 ^23 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-19 ^-1 ^24 ^19 ^-1 ^24 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-18 ^-1 ^25 ^18 ^-1 ^25 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-16 ^-1 ^26 ^16 ^-1 ^26 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-15 ^-1 ^27 ^15 ^-1 ^27 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-13 ^-1 ^28 ^13 ^-1 ^28 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-10 ^-1 ^29 ^10 ^-1 ^29 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^-7 ^-1 ^30 ^7 ^-1 ^30 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^ ^-1 ^31 ^ ^-1 ^31 minecraft:prismarine
execute as @s at @s rotated as @s run fill ^ ^-2 ^-27 ^ ^-2 ^-27 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-7 ^-2 ^-26 ^7 ^-2 ^-26 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-10 ^-2 ^-25 ^10 ^-2 ^-25 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-12 ^-2 ^-24 ^12 ^-2 ^-24 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-14 ^-2 ^-23 ^14 ^-2 ^-23 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-15 ^-2 ^-22 ^15 ^-2 ^-22 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-16 ^-2 ^-21 ^16 ^-2 ^-21 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-18 ^-2 ^-20 ^18 ^-2 ^-20 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-19 ^-2 ^-19 ^19 ^-2 ^-19 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-20 ^-2 ^-18 ^20 ^-2 ^-18 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-20 ^-2 ^-17 ^20 ^-2 ^-17 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-21 ^-2 ^-16 ^21 ^-2 ^-16 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-22 ^-2 ^-15 ^22 ^-2 ^-15 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-23 ^-2 ^-14 ^23 ^-2 ^-14 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-23 ^-2 ^-13 ^23 ^-2 ^-13 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-24 ^-2 ^-12 ^24 ^-2 ^-12 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-24 ^-2 ^-11 ^24 ^-2 ^-11 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-2 ^-10 ^25 ^-2 ^-10 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-2 ^-9 ^25 ^-2 ^-9 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-2 ^-8 ^25 ^-2 ^-8 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-7 ^26 ^-2 ^-7 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-6 ^26 ^-2 ^-6 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-5 ^26 ^-2 ^-5 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-4 ^26 ^-2 ^-4 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-3 ^26 ^-2 ^-3 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-2 ^26 ^-2 ^-2 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^-1 ^26 ^-2 ^-1 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-27 ^-2 ^ ^27 ^-2 ^ minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^1 ^26 ^-2 ^1 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^2 ^26 ^-2 ^2 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^3 ^26 ^-2 ^3 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^4 ^26 ^-2 ^4 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^5 ^26 ^-2 ^5 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^6 ^26 ^-2 ^6 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-26 ^-2 ^7 ^26 ^-2 ^7 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-2 ^8 ^25 ^-2 ^8 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-2 ^9 ^25 ^-2 ^9 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-25 ^-2 ^10 ^25 ^-2 ^10 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-24 ^-2 ^11 ^24 ^-2 ^11 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-24 ^-2 ^12 ^24 ^-2 ^12 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-23 ^-2 ^13 ^23 ^-2 ^13 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-23 ^-2 ^14 ^23 ^-2 ^14 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-22 ^-2 ^15 ^22 ^-2 ^15 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-21 ^-2 ^16 ^21 ^-2 ^16 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-20 ^-2 ^17 ^20 ^-2 ^17 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-20 ^-2 ^18 ^20 ^-2 ^18 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-19 ^-2 ^19 ^19 ^-2 ^19 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-18 ^-2 ^20 ^18 ^-2 ^20 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-16 ^-2 ^21 ^16 ^-2 ^21 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-15 ^-2 ^22 ^15 ^-2 ^22 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-14 ^-2 ^23 ^14 ^-2 ^23 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-12 ^-2 ^24 ^12 ^-2 ^24 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-10 ^-2 ^25 ^10 ^-2 ^25 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^-7 ^-2 ^26 ^7 ^-2 ^26 minecraft:dark_prismarine
execute as @s at @s rotated as @s run fill ^ ^-2 ^27 ^ ^-2 ^27 minecraft:dark_prismarine
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-5 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-4 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-3 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-2 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-1 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^ minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^1 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^2 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^3 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^4 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-33 ^ ^5 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-9 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-8 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-7 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-6 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^6 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^7 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^8 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-32 ^ ^9 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-12 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-11 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-10 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-31 ^ ^10 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-31 ^ ^11 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-31 ^ ^12 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-14 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-13 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-30 ^ ^13 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-30 ^ ^14 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-30 ^ ^15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-29 ^ ^-16 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-29 ^ ^-15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-29 ^ ^15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-29 ^ ^16 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-28 ^ ^-18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-28 ^ ^-17 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-28 ^ ^17 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-28 ^ ^18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-19 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-27 ^ ^18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-27 ^ ^19 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-27 ^ ^20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-26 ^ ^-21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-26 ^ ^-20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-26 ^ ^20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-26 ^ ^21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-25 ^ ^-22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-25 ^ ^-21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-25 ^ ^21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-25 ^ ^22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-24 ^ ^-23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-24 ^ ^-22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-24 ^ ^22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-24 ^ ^23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-23 ^ ^-24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-23 ^ ^-23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-23 ^ ^23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-23 ^ ^24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-22 ^ ^-25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-22 ^ ^-24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-22 ^ ^24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-22 ^ ^25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-21 ^ ^-26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-21 ^ ^-25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-21 ^ ^25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-21 ^ ^26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-20 ^ ^-26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-20 ^ ^26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-19 ^ ^-27 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-19 ^ ^27 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-18 ^ ^-28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-18 ^ ^28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-17 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-17 ^ ^-28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-17 ^ ^28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-16 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-16 ^ ^29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-15 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-15 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-15 ^ ^29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-15 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-14 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-14 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-13 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-13 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-12 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-12 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-11 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-11 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-10 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-10 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-10 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-10 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-9 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-9 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-8 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-8 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-7 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-7 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-6 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-6 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-5 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-5 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-4 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-4 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-3 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-3 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-2 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-2 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-1 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-1 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^ ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^ ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^1 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^1 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^2 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^2 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^3 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^3 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^4 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^4 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^5 ^ ^-33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^5 ^ ^33 minecraft:sand
execute as @s at @s rotated as @s run setblock ^6 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^6 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^7 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^7 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^8 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^8 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^9 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^9 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^10 ^ ^-32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^10 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^10 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^10 ^ ^32 minecraft:sand
execute as @s at @s rotated as @s run setblock ^11 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^11 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^12 ^ ^-31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^12 ^ ^31 minecraft:sand
execute as @s at @s rotated as @s run setblock ^13 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^13 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^14 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^14 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^15 ^ ^-30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^15 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^15 ^ ^29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^15 ^ ^30 minecraft:sand
execute as @s at @s rotated as @s run setblock ^16 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^16 ^ ^29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^17 ^ ^-29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^17 ^ ^-28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^17 ^ ^28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^17 ^ ^29 minecraft:sand
execute as @s at @s rotated as @s run setblock ^18 ^ ^-28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^18 ^ ^28 minecraft:sand
execute as @s at @s rotated as @s run setblock ^19 ^ ^-27 minecraft:sand
execute as @s at @s rotated as @s run setblock ^19 ^ ^27 minecraft:sand
execute as @s at @s rotated as @s run setblock ^20 ^ ^-26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^20 ^ ^26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^21 ^ ^-26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^21 ^ ^-25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^21 ^ ^25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^21 ^ ^26 minecraft:sand
execute as @s at @s rotated as @s run setblock ^22 ^ ^-25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^22 ^ ^-24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^22 ^ ^24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^22 ^ ^25 minecraft:sand
execute as @s at @s rotated as @s run setblock ^23 ^ ^-24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^23 ^ ^-23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^23 ^ ^23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^23 ^ ^24 minecraft:sand
execute as @s at @s rotated as @s run setblock ^24 ^ ^-23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^24 ^ ^-22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^24 ^ ^22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^24 ^ ^23 minecraft:sand
execute as @s at @s rotated as @s run setblock ^25 ^ ^-22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^25 ^ ^-21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^25 ^ ^21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^25 ^ ^22 minecraft:sand
execute as @s at @s rotated as @s run setblock ^26 ^ ^-21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^26 ^ ^-20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^26 ^ ^20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^26 ^ ^21 minecraft:sand
execute as @s at @s rotated as @s run setblock ^27 ^ ^-20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^27 ^ ^-19 minecraft:sand
execute as @s at @s rotated as @s run setblock ^27 ^ ^-18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^27 ^ ^18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^27 ^ ^19 minecraft:sand
execute as @s at @s rotated as @s run setblock ^27 ^ ^20 minecraft:sand
execute as @s at @s rotated as @s run setblock ^28 ^ ^-18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^28 ^ ^-17 minecraft:sand
execute as @s at @s rotated as @s run setblock ^28 ^ ^17 minecraft:sand
execute as @s at @s rotated as @s run setblock ^28 ^ ^18 minecraft:sand
execute as @s at @s rotated as @s run setblock ^29 ^ ^-16 minecraft:sand
execute as @s at @s rotated as @s run setblock ^29 ^ ^-15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^29 ^ ^15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^29 ^ ^16 minecraft:sand
execute as @s at @s rotated as @s run setblock ^30 ^ ^-15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^30 ^ ^-14 minecraft:sand
execute as @s at @s rotated as @s run setblock ^30 ^ ^-13 minecraft:sand
execute as @s at @s rotated as @s run setblock ^30 ^ ^13 minecraft:sand
execute as @s at @s rotated as @s run setblock ^30 ^ ^14 minecraft:sand
execute as @s at @s rotated as @s run setblock ^30 ^ ^15 minecraft:sand
execute as @s at @s rotated as @s run setblock ^31 ^ ^-12 minecraft:sand
execute as @s at @s rotated as @s run setblock ^31 ^ ^-11 minecraft:sand
execute as @s at @s rotated as @s run setblock ^31 ^ ^-10 minecraft:sand
execute as @s at @s rotated as @s run setblock ^31 ^ ^10 minecraft:sand
execute as @s at @s rotated as @s run setblock ^31 ^ ^11 minecraft:sand
execute as @s at @s rotated as @s run setblock ^31 ^ ^12 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^-9 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^-8 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^-7 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^-6 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^6 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^7 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^8 minecraft:sand
execute as @s at @s rotated as @s run setblock ^32 ^ ^9 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^-5 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^-4 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^-3 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^-2 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^-1 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^ minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^1 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^2 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^3 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^4 minecraft:sand
execute as @s at @s rotated as @s run setblock ^33 ^ ^5 minecraft:sand
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-6 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-5 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-4 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-3 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-2 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^-1 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^ minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^1 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^2 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^3 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^4 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^5 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-34 ^ ^6 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-9 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-8 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-7 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^-6 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^6 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^7 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^8 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^9 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-33 ^ ^10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-12 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-11 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-32 ^ ^-10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-32 ^ ^10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-32 ^ ^11 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-32 ^ ^12 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-14 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-31 ^ ^-13 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-31 ^ ^13 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-31 ^ ^14 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-31 ^ ^15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-16 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-30 ^ ^-15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-30 ^ ^15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-30 ^ ^16 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-30 ^ ^17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-29 ^ ^-18 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-29 ^ ^-17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-29 ^ ^17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-29 ^ ^18 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-28 ^ ^-20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-28 ^ ^-19 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-28 ^ ^19 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-28 ^ ^20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-21 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-27 ^ ^-20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-27 ^ ^20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-27 ^ ^21 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-26 ^ ^-22 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-26 ^ ^-21 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-26 ^ ^21 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-26 ^ ^22 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-25 ^ ^-23 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-25 ^ ^23 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-24 ^ ^-24 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-24 ^ ^24 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-23 ^ ^-25 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-23 ^ ^25 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-22 ^ ^-26 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-22 ^ ^26 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-21 ^ ^-27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-21 ^ ^-26 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-21 ^ ^26 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-21 ^ ^27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-20 ^ ^-28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-20 ^ ^-27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-20 ^ ^27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-20 ^ ^28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-19 ^ ^-28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-19 ^ ^28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-18 ^ ^-29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-18 ^ ^29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-17 ^ ^-30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-17 ^ ^-29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-17 ^ ^29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-17 ^ ^30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-16 ^ ^-30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-16 ^ ^30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-15 ^ ^-31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-15 ^ ^-30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-15 ^ ^30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-15 ^ ^31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-14 ^ ^-31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-14 ^ ^31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-13 ^ ^-31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-13 ^ ^31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-12 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-12 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-11 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-11 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-10 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-10 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-10 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-10 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-9 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-9 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-8 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-8 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-7 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-7 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-6 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-6 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-6 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-6 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-5 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-5 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-4 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-4 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-3 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-3 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-2 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-2 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-1 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^-1 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^ ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^ ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^1 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^1 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^2 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^2 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^3 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^3 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^4 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^4 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^5 ^ ^-34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^5 ^ ^34 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^6 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^6 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^7 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^7 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^8 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^8 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^9 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^9 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^10 ^ ^-33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^10 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^10 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^10 ^ ^33 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^11 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^11 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^12 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^12 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^13 ^ ^-32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^13 ^ ^-31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^13 ^ ^31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^13 ^ ^32 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^14 ^ ^-31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^14 ^ ^31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^15 ^ ^-31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^15 ^ ^-30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^15 ^ ^30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^15 ^ ^31 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^16 ^ ^-30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^16 ^ ^30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^17 ^ ^-30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^17 ^ ^-29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^17 ^ ^29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^17 ^ ^30 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^18 ^ ^-29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^18 ^ ^29 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^19 ^ ^-28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^19 ^ ^28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^20 ^ ^-28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^20 ^ ^-27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^20 ^ ^27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^20 ^ ^28 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^21 ^ ^-27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^21 ^ ^27 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^22 ^ ^-26 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^22 ^ ^26 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^23 ^ ^-25 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^23 ^ ^25 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^24 ^ ^-24 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^24 ^ ^24 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^25 ^ ^-24 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^25 ^ ^-23 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^25 ^ ^23 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^25 ^ ^24 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^26 ^ ^-22 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^26 ^ ^22 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^27 ^ ^-21 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^27 ^ ^-20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^27 ^ ^20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^27 ^ ^21 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^28 ^ ^-20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^28 ^ ^-19 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^28 ^ ^19 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^28 ^ ^20 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^29 ^ ^-18 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^29 ^ ^-17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^29 ^ ^17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^29 ^ ^18 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^30 ^ ^-17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^30 ^ ^-16 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^30 ^ ^-15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^30 ^ ^15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^30 ^ ^16 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^30 ^ ^17 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^31 ^ ^-15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^31 ^ ^-14 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^31 ^ ^-13 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^31 ^ ^13 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^31 ^ ^14 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^31 ^ ^15 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^-13 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^-12 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^-11 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^-10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^11 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^12 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^32 ^ ^13 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^-10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^-9 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^-8 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^-7 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^-6 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^6 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^7 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^8 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^9 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^33 ^ ^10 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^-5 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^-4 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^-3 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^-2 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^-1 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^ minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^1 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^2 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^3 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^4 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^34 ^ ^5 minecraft:gravel
execute as @s at @s rotated as @s run setblock ^24 ^-1 ^ minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^23 ^-1 ^6 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^21 ^-1 ^12 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^17 ^-1 ^17 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^12 ^-1 ^21 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^6 ^-1 ^23 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^ ^-1 ^24 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-6 ^-1 ^23 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-12 ^-1 ^21 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-17 ^-1 ^17 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-21 ^-1 ^12 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-23 ^-1 ^6 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-24 ^-1 ^ minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-23 ^-1 ^-6 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-21 ^-1 ^-12 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-17 ^-1 ^-17 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-12 ^-1 ^-21 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-6 ^-1 ^-23 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^ ^-1 ^-24 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^6 ^-1 ^-23 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^12 ^-1 ^-21 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^17 ^-1 ^-17 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^21 ^-1 ^-12 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^23 ^-1 ^-6 minecraft:sea_lantern

# === ROCKY COVE CLIFFS ===
execute as @s at @s rotated as @s run fill ^-55 ^ ^3 ^-39 ^9 ^17 minecraft:stone
execute as @s at @s rotated as @s run fill ^-53 ^10 ^5 ^-41 ^19 ^15 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^-51 ^17 ^6 ^-43 ^21 ^14 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^-57 ^2 ^7 ^-54 ^9 ^13 minecraft:stone
execute as @s at @s rotated as @s run fill ^-40 ^1 ^6 ^-37 ^9 ^14 minecraft:stone
execute as @s at @s rotated as @s run fill ^-50 ^ ^11 ^-34 ^12 ^25 minecraft:stone
execute as @s at @s rotated as @s run fill ^-48 ^13 ^13 ^-36 ^25 ^23 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^-46 ^23 ^14 ^-38 ^27 ^22 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^-52 ^2 ^15 ^-49 ^12 ^21 minecraft:stone
execute as @s at @s rotated as @s run fill ^-35 ^1 ^14 ^-32 ^12 ^22 minecraft:stone
execute as @s at @s rotated as @s run fill ^34 ^ ^5 ^50 ^9 ^19 minecraft:stone
execute as @s at @s rotated as @s run fill ^36 ^10 ^7 ^48 ^18 ^17 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^38 ^16 ^8 ^46 ^20 ^16 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^32 ^2 ^9 ^35 ^9 ^15 minecraft:stone
execute as @s at @s rotated as @s run fill ^49 ^1 ^8 ^52 ^9 ^16 minecraft:stone
execute as @s at @s rotated as @s run fill ^39 ^ ^1 ^55 ^9 ^15 minecraft:stone
execute as @s at @s rotated as @s run fill ^41 ^10 ^3 ^53 ^19 ^13 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^43 ^17 ^4 ^51 ^21 ^12 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^37 ^2 ^5 ^40 ^9 ^11 minecraft:stone
execute as @s at @s rotated as @s run fill ^54 ^1 ^4 ^57 ^9 ^12 minecraft:stone
execute as @s at @s rotated as @s run fill ^-32 ^ ^6 ^-16 ^12 ^20 minecraft:stone
execute as @s at @s rotated as @s run fill ^-30 ^13 ^8 ^-18 ^24 ^18 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^-28 ^22 ^9 ^-20 ^26 ^17 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^-34 ^2 ^10 ^-31 ^12 ^16 minecraft:stone
execute as @s at @s rotated as @s run fill ^-17 ^1 ^9 ^-14 ^12 ^17 minecraft:stone
execute as @s at @s rotated as @s run fill ^10 ^ ^8 ^26 ^14 ^22 minecraft:stone
execute as @s at @s rotated as @s run fill ^12 ^15 ^10 ^24 ^28 ^20 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^14 ^26 ^11 ^22 ^30 ^19 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^8 ^2 ^12 ^11 ^14 ^18 minecraft:stone
execute as @s at @s rotated as @s run fill ^25 ^1 ^11 ^28 ^14 ^19 minecraft:stone
execute as @s at @s rotated as @s run fill ^-41 ^ ^ ^-25 ^8 ^14 minecraft:stone
execute as @s at @s rotated as @s run fill ^-39 ^9 ^2 ^-27 ^16 ^12 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^-37 ^14 ^3 ^-29 ^18 ^11 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^-43 ^2 ^4 ^-40 ^8 ^10 minecraft:stone
execute as @s at @s rotated as @s run fill ^-26 ^1 ^3 ^-23 ^8 ^11 minecraft:stone
execute as @s at @s rotated as @s run fill ^23 ^ ^2 ^39 ^7 ^16 minecraft:stone
execute as @s at @s rotated as @s run fill ^25 ^8 ^4 ^37 ^15 ^14 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^27 ^13 ^5 ^35 ^17 ^13 minecraft:mossy_cobblestone
execute as @s at @s rotated as @s run fill ^21 ^2 ^6 ^24 ^7 ^12 minecraft:stone
execute as @s at @s rotated as @s run fill ^38 ^1 ^5 ^41 ^7 ^13 minecraft:stone

# === GIANT SKULL CAVE ===
execute as @s at @s rotated as @s run fill ^-18 ^ ^35 ^18 ^28 ^56 minecraft:stone
execute as @s at @s rotated as @s run fill ^-15 ^20 ^38 ^15 ^34 ^52 minecraft:cobblestone
execute as @s at @s rotated as @s run fill ^-7 ^1 ^33 ^7 ^12 ^56 minecraft:air
execute as @s at @s rotated as @s run fill ^-10 ^4 ^42 ^10 ^16 ^55 minecraft:air
execute as @s at @s rotated as @s run fill ^-12 ^12 ^33 ^12 ^27 ^37 minecraft:smooth_quartz
execute as @s at @s rotated as @s run fill ^-9 ^28 ^34 ^9 ^31 ^37 minecraft:smooth_quartz
execute as @s at @s rotated as @s run fill ^-6 ^32 ^35 ^6 ^34 ^37 minecraft:smooth_quartz
execute as @s at @s rotated as @s run fill ^-8 ^20 ^32 ^-3 ^25 ^38 minecraft:polished_blackstone
execute as @s at @s rotated as @s run fill ^3 ^20 ^32 ^8 ^25 ^38 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-5 ^22 ^31 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^5 ^22 ^31 minecraft:sea_lantern
execute as @s at @s rotated as @s run fill ^-2 ^16 ^32 ^2 ^20 ^37 minecraft:polished_blackstone
execute as @s at @s rotated as @s run fill ^-8 ^7 ^31 ^8 ^14 ^38 minecraft:air
execute as @s at @s rotated as @s run fill ^-7 ^12 ^31 ^-7 ^15 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^-4 ^12 ^31 ^-4 ^15 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^-1 ^12 ^31 ^-1 ^15 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^2 ^12 ^31 ^2 ^15 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^5 ^12 ^31 ^5 ^15 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^8 ^12 ^31 ^8 ^15 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^-6 ^7 ^31 ^-6 ^10 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^-3 ^7 ^31 ^-3 ^10 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^ ^7 ^31 ^ ^10 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^3 ^7 ^31 ^3 ^10 ^32 minecraft:quartz_block
execute as @s at @s rotated as @s run fill ^6 ^7 ^31 ^6 ^10 ^32 minecraft:quartz_block

# === CLIFF WATERFALLS ===
execute as @s at @s rotated as @s run fill ^-14 ^26 ^47 ^-10 ^27 ^49 minecraft:stone
execute as @s at @s rotated as @s run fill ^-13 ^1 ^48 ^-11 ^25 ^48 minecraft:water
execute as @s at @s rotated as @s run fill ^-15 ^ ^46 ^-9 ^ ^50 minecraft:water
execute as @s at @s rotated as @s run fill ^9 ^24 ^48 ^13 ^25 ^50 minecraft:stone
execute as @s at @s rotated as @s run fill ^10 ^1 ^49 ^12 ^23 ^49 minecraft:water
execute as @s at @s rotated as @s run fill ^8 ^ ^47 ^14 ^ ^51 minecraft:water
execute as @s at @s rotated as @s run fill ^-46 ^19 ^21 ^-42 ^20 ^23 minecraft:stone
execute as @s at @s rotated as @s run fill ^-45 ^1 ^22 ^-43 ^18 ^22 minecraft:water
execute as @s at @s rotated as @s run fill ^-47 ^ ^20 ^-41 ^ ^24 minecraft:water
execute as @s at @s rotated as @s run fill ^42 ^17 ^16 ^46 ^18 ^18 minecraft:stone
execute as @s at @s rotated as @s run fill ^43 ^1 ^17 ^45 ^16 ^17 minecraft:water
execute as @s at @s rotated as @s run fill ^41 ^ ^15 ^47 ^ ^19 minecraft:water

# === WRECKED PIRATE SHIP IN THE LAGOON ===
execute as @s at @s rotated as @s run fill ^-24 ^2 ^-3 ^-21 ^2 ^3 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-24 ^3 ^-4 ^-21 ^3 ^4 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-24 ^4 ^-4 ^-21 ^4 ^4 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-24 ^5 ^-3 ^-21 ^5 ^3 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^-20 ^2 ^-4 ^-17 ^2 ^4 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-20 ^3 ^-5 ^-17 ^3 ^5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-20 ^4 ^-5 ^-17 ^4 ^5 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-20 ^5 ^-4 ^-17 ^5 ^4 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^-16 ^3 ^-5 ^-13 ^3 ^5 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-16 ^4 ^-6 ^-13 ^4 ^6 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-16 ^5 ^-6 ^-13 ^5 ^6 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-16 ^6 ^-5 ^-13 ^6 ^5 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^-12 ^3 ^-6 ^-9 ^3 ^6 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-12 ^4 ^-7 ^-9 ^4 ^7 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-12 ^5 ^-7 ^-9 ^5 ^7 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-12 ^6 ^-6 ^-9 ^6 ^6 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^-8 ^4 ^-7 ^-5 ^4 ^7 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-8 ^5 ^-8 ^-5 ^5 ^8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-8 ^6 ^-8 ^-5 ^6 ^8 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-8 ^7 ^-7 ^-5 ^7 ^7 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^-4 ^4 ^-7 ^-1 ^4 ^7 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-4 ^5 ^-8 ^-1 ^5 ^8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-4 ^6 ^-8 ^-1 ^6 ^8 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-4 ^7 ^-7 ^-1 ^7 ^7 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^ ^5 ^-7 ^3 ^5 ^7 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^ ^6 ^-8 ^3 ^6 ^8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^ ^7 ^-8 ^3 ^7 ^8 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^ ^8 ^-7 ^3 ^8 ^7 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^4 ^6 ^-6 ^7 ^6 ^6 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^4 ^7 ^-7 ^7 ^7 ^7 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^4 ^8 ^-7 ^7 ^8 ^7 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^4 ^9 ^-6 ^7 ^9 ^6 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^8 ^7 ^-5 ^11 ^7 ^5 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^8 ^8 ^-6 ^11 ^8 ^6 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^8 ^9 ^-6 ^11 ^9 ^6 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^8 ^10 ^-5 ^11 ^10 ^5 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^12 ^8 ^-4 ^15 ^8 ^4 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^12 ^9 ^-5 ^15 ^9 ^5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^12 ^10 ^-5 ^15 ^10 ^5 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^12 ^11 ^-4 ^15 ^11 ^4 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^16 ^9 ^-3 ^19 ^9 ^3 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^16 ^10 ^-4 ^19 ^10 ^4 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^16 ^11 ^-4 ^19 ^11 ^4 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^16 ^12 ^-3 ^19 ^12 ^3 minecraft:oak_planks
execute as @s at @s rotated as @s run fill ^-24 ^6 ^-4 ^-21 ^6 ^-4 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-24 ^6 ^4 ^-21 ^6 ^4 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-20 ^6 ^-5 ^-17 ^6 ^-5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-20 ^6 ^5 ^-17 ^6 ^5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-16 ^7 ^-6 ^-13 ^7 ^-6 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-16 ^7 ^6 ^-13 ^7 ^6 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-12 ^7 ^-7 ^-9 ^7 ^-7 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-12 ^7 ^7 ^-9 ^7 ^7 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-8 ^8 ^-8 ^-5 ^8 ^-8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-8 ^8 ^8 ^-5 ^8 ^8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-4 ^8 ^-8 ^-1 ^8 ^-8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-4 ^8 ^8 ^-1 ^8 ^8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^ ^9 ^-8 ^3 ^9 ^-8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^ ^9 ^8 ^3 ^9 ^8 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^4 ^10 ^-7 ^7 ^10 ^-7 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^4 ^10 ^7 ^7 ^10 ^7 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^8 ^11 ^-6 ^11 ^11 ^-6 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^8 ^11 ^6 ^11 ^11 ^6 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^12 ^12 ^-5 ^15 ^12 ^-5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^12 ^12 ^5 ^15 ^12 ^5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^16 ^13 ^-4 ^19 ^13 ^-4 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^16 ^13 ^4 ^19 ^13 ^4 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-2 ^9 ^ ^-2 ^29 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run fill ^-3 ^10 ^ ^-1 ^10 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run fill ^-2 ^20 ^-8 ^-2 ^20 ^8 minecraft:spruce_log
execute as @s at @s rotated as @s run fill ^-2 ^21 ^-7 ^-2 ^27 ^-2 minecraft:white_wool
execute as @s at @s rotated as @s run fill ^-2 ^22 ^2 ^-2 ^26 ^7 minecraft:white_wool
execute as @s at @s rotated as @s run setblock ^-2 ^23 ^-5 minecraft:air
execute as @s at @s rotated as @s run setblock ^-2 ^25 ^-3 minecraft:air
execute as @s at @s rotated as @s run setblock ^-2 ^24 ^4 minecraft:air
execute as @s at @s rotated as @s run setblock ^18 ^14 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^19 ^14 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^20 ^15 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^21 ^15 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^22 ^15 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^23 ^16 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^24 ^16 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^25 ^16 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^26 ^17 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run setblock ^27 ^17 ^ minecraft:spruce_log
execute as @s at @s rotated as @s run fill ^-25 ^6 ^-5 ^-18 ^11 ^5 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-24 ^12 ^-4 ^-19 ^14 ^4 minecraft:red_wool
execute as @s at @s rotated as @s run fill ^-2 ^29 ^ ^-2 ^35 ^ minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^-2 ^32 ^1 ^-2 ^35 ^6 minecraft:black_wool
execute as @s at @s rotated as @s run setblock ^-2 ^34 ^3 minecraft:white_wool
execute as @s at @s rotated as @s run setblock ^-2 ^33 ^2 minecraft:white_wool
execute as @s at @s rotated as @s run setblock ^-2 ^33 ^4 minecraft:white_wool
execute as @s at @s rotated as @s run setblock ^-2 ^32 ^3 minecraft:white_wool
execute as @s at @s rotated as @s run fill ^-18 ^9 ^-5 ^-16 ^10 ^-5 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-15 ^9 ^-5 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^-10 ^10 ^-7 ^-8 ^11 ^-7 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-7 ^10 ^-7 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^ ^11 ^-7 ^2 ^12 ^-7 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^3 ^11 ^-7 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^8 ^12 ^-5 ^10 ^13 ^-5 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^11 ^12 ^-5 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^-18 ^9 ^5 ^-16 ^10 ^5 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-15 ^9 ^5 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^-10 ^10 ^7 ^-8 ^11 ^7 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-7 ^10 ^7 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^ ^11 ^7 ^2 ^12 ^7 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^3 ^11 ^7 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^8 ^12 ^5 ^10 ^13 ^5 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^11 ^12 ^5 minecraft:blackstone

# === BOARDWALKS & DOCKS ===
execute as @s at @s rotated as @s run fill ^-4 ^1 ^-54 ^4 ^1 ^-31 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-5 ^2 ^-54 ^-5 ^2 ^-31 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^5 ^2 ^-54 ^5 ^2 ^-31 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-20 ^1 ^-34 ^20 ^1 ^-29 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-40 ^1 ^-10 ^-30 ^1 ^10 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^30 ^1 ^-8 ^42 ^1 ^11 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-20 ^-1 ^-32 ^-20 ^4 ^-32 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^-20 ^5 ^-32 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-10 ^-1 ^-32 ^-10 ^4 ^-32 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^-10 ^5 ^-32 minecraft:lantern
execute as @s at @s rotated as @s run fill ^ ^-1 ^-32 ^ ^4 ^-32 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^ ^5 ^-32 minecraft:lantern
execute as @s at @s rotated as @s run fill ^10 ^-1 ^-32 ^10 ^4 ^-32 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^10 ^5 ^-32 minecraft:lantern
execute as @s at @s rotated as @s run fill ^20 ^-1 ^-32 ^20 ^4 ^-32 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^20 ^5 ^-32 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-35 ^-1 ^-10 ^-35 ^4 ^-10 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^-35 ^5 ^-10 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-35 ^-1 ^10 ^-35 ^4 ^10 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^-35 ^5 ^10 minecraft:lantern
execute as @s at @s rotated as @s run fill ^35 ^-1 ^-8 ^35 ^4 ^-8 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^35 ^5 ^-8 minecraft:lantern
execute as @s at @s rotated as @s run fill ^35 ^-1 ^10 ^35 ^4 ^10 minecraft:dark_oak_log
execute as @s at @s rotated as @s run setblock ^35 ^5 ^10 minecraft:lantern

# === CLIFFSIDE PIRATE FORT ===
execute as @s at @s rotated as @s run fill ^28 ^8 ^22 ^50 ^10 ^44 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^11 ^24 ^48 ^24 ^42 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^30 ^25 ^24 ^31 ^27 ^26 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^25 ^40 ^31 ^27 ^42 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^34 ^25 ^24 ^35 ^27 ^26 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^34 ^25 ^40 ^35 ^27 ^42 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^38 ^25 ^24 ^39 ^27 ^26 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^38 ^25 ^40 ^39 ^27 ^42 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^42 ^25 ^24 ^43 ^27 ^26 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^42 ^25 ^40 ^43 ^27 ^42 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^24 ^47 ^27 ^26 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^40 ^47 ^27 ^42 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^25 ^24 ^32 ^27 ^25 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^24 ^48 ^27 ^25 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^25 ^28 ^32 ^27 ^29 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^28 ^48 ^27 ^29 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^25 ^32 ^32 ^27 ^33 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^32 ^48 ^27 ^33 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^25 ^36 ^32 ^27 ^37 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^36 ^48 ^27 ^37 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^30 ^25 ^40 ^32 ^27 ^41 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^46 ^25 ^40 ^48 ^27 ^41 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^39 ^11 ^30 ^49 ^31 ^40 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^37 ^31 ^28 ^51 ^33 ^42 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^44 ^34 ^35 ^44 ^42 ^35 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^44 ^38 ^36 ^44 ^41 ^42 minecraft:black_wool
execute as @s at @s rotated as @s run setblock ^44 ^40 ^39 minecraft:white_wool
execute as @s at @s rotated as @s run fill ^29 ^15 ^27 ^30 ^17 ^28 minecraft:air
execute as @s at @s rotated as @s run fill ^29 ^15 ^33 ^30 ^17 ^34 minecraft:air
execute as @s at @s rotated as @s run fill ^29 ^15 ^39 ^30 ^17 ^40 minecraft:air
execute as @s at @s rotated as @s run fill ^29 ^20 ^27 ^30 ^22 ^28 minecraft:air
execute as @s at @s rotated as @s run fill ^29 ^20 ^33 ^30 ^22 ^34 minecraft:air
execute as @s at @s rotated as @s run fill ^29 ^20 ^39 ^30 ^22 ^40 minecraft:air
execute as @s at @s rotated as @s run fill ^27 ^14 ^27 ^31 ^15 ^28 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^26 ^14 ^27 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^27 ^14 ^33 ^31 ^15 ^34 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^26 ^14 ^33 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^27 ^14 ^39 ^31 ^15 ^40 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^26 ^14 ^39 minecraft:blackstone

# === ROPE BRIDGE TO FORT ===
execute as @s at @s rotated as @s run fill ^8 ^19 ^24 ^8 ^19 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^8 ^20 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^8 ^20 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^9 ^19 ^24 ^9 ^19 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^9 ^20 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^9 ^20 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^10 ^20 ^24 ^10 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^10 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^10 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^11 ^20 ^24 ^11 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^11 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^11 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^12 ^20 ^24 ^12 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^12 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^12 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^13 ^20 ^24 ^13 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^13 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^13 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^14 ^20 ^24 ^14 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^14 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^14 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^15 ^21 ^24 ^15 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^15 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^15 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^16 ^21 ^24 ^16 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^16 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^16 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^17 ^21 ^24 ^17 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^17 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^17 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^18 ^21 ^24 ^18 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^18 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^18 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^19 ^21 ^24 ^19 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^19 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^19 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^20 ^21 ^24 ^20 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^20 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^20 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^21 ^21 ^24 ^21 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^21 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^21 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^22 ^21 ^24 ^22 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^22 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^22 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^23 ^21 ^24 ^23 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^23 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^23 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^24 ^21 ^24 ^24 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^24 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^24 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^25 ^21 ^24 ^25 ^21 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^25 ^22 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^25 ^22 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^26 ^20 ^24 ^26 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^26 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^26 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^27 ^20 ^24 ^27 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^27 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^27 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^28 ^20 ^24 ^28 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^28 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^28 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^29 ^20 ^24 ^29 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^29 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^29 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^30 ^20 ^24 ^30 ^20 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^30 ^21 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^30 ^21 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^31 ^19 ^24 ^31 ^19 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^31 ^20 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^31 ^20 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run fill ^32 ^19 ^24 ^32 ^19 ^26 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^32 ^20 ^23 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^32 ^20 ^27 minecraft:spruce_fence
execute as @s at @s rotated as @s run setblock ^8 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^9 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^10 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^11 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^12 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^13 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^14 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^15 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^16 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^17 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^18 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^19 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^20 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^21 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^22 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^23 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^24 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^25 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^26 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^27 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^28 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^29 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^30 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^31 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^32 ^22 ^23 minecraft:chain
execute as @s at @s rotated as @s run setblock ^8 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^9 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^10 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^11 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^12 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^13 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^14 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^15 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^16 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^17 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^18 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^19 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^20 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^21 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^22 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^23 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^24 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^25 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^26 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^27 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^28 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^29 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^30 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^31 ^22 ^27 minecraft:chain
execute as @s at @s rotated as @s run setblock ^32 ^22 ^27 minecraft:chain

# === TREASURE CAVE & CAPTAIN'S HOARD ===
execute as @s at @s rotated as @s run fill ^-48 ^2 ^22 ^-28 ^16 ^42 minecraft:stone
execute as @s at @s rotated as @s run fill ^-45 ^4 ^20 ^-31 ^12 ^35 minecraft:air
execute as @s at @s rotated as @s run fill ^-43 ^3 ^23 ^-33 ^3 ^32 minecraft:gold_block
execute as @s at @s rotated as @s run setblock ^-41 ^4 ^25 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-40 ^4 ^25 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-37 ^4 ^28 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-36 ^4 ^28 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-34 ^4 ^24 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-33 ^4 ^24 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-42 ^4 ^31 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-41 ^4 ^31 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-40 ^5 ^24 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-35 ^5 ^31 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^-43 ^5 ^29 minecraft:sea_lantern

# === SHORE CANNON BATTERY ===
execute as @s at @s rotated as @s run fill ^-44 ^ ^-20 ^-40 ^1 ^-16 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-42 ^2 ^-18 ^-39 ^3 ^-18 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-38 ^2 ^-18 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^-44 ^ ^-12 ^-40 ^1 ^-8 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-42 ^2 ^-10 ^-39 ^3 ^-10 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^-38 ^2 ^-10 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^40 ^ ^-20 ^44 ^1 ^-16 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^39 ^2 ^-18 ^42 ^3 ^-18 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^38 ^2 ^-18 minecraft:blackstone
execute as @s at @s rotated as @s run fill ^40 ^ ^-12 ^44 ^1 ^-8 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^39 ^2 ^-10 ^42 ^3 ^-10 minecraft:polished_blackstone
execute as @s at @s rotated as @s run setblock ^38 ^2 ^-10 minecraft:blackstone

# === SERPENTINE QUEUE ===
execute as @s at @s rotated as @s run fill ^-48 ^ ^-52 ^-16 ^ ^-36 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^-46 ^1 ^-50 ^-18 ^1 ^-50 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-46 ^1 ^-46 ^-18 ^1 ^-46 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-46 ^1 ^-42 ^-18 ^1 ^-42 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-46 ^1 ^-38 ^-18 ^1 ^-38 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-46 ^1 ^-50 ^-46 ^1 ^-38 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-18 ^1 ^-46 ^-18 ^1 ^-42 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-18 ^1 ^-38 ^-18 ^1 ^-36 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-44 ^1 ^-49 ^-44 ^4 ^-49 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-44 ^5 ^-49 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-34 ^1 ^-45 ^-34 ^4 ^-45 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-34 ^5 ^-45 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-24 ^1 ^-41 ^-24 ^4 ^-41 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-24 ^5 ^-41 minecraft:lantern
execute as @s at @s rotated as @s run fill ^-44 ^1 ^-37 ^-44 ^4 ^-37 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-44 ^5 ^-37 minecraft:lantern

# === PIRATE TICKET HUT ===
execute as @s at @s rotated as @s run fill ^20 ^ ^-52 ^35 ^ ^-40 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^21 ^1 ^-51 ^34 ^6 ^-41 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^22 ^3 ^-52 ^33 ^5 ^-52 minecraft:glass
execute as @s at @s rotated as @s run fill ^20 ^7 ^-52 ^35 ^8 ^-40 minecraft:red_wool
execute as @s at @s rotated as @s run fill ^22 ^8 ^-53 ^33 ^9 ^-53 minecraft:black_wool
execute as @s at @s rotated as @s run fill ^23 ^1 ^-53 ^32 ^2 ^-52 minecraft:spruce_planks
execute as @s at @s rotated as @s run setblock ^20 ^9 ^-46 minecraft:lantern
execute as @s at @s rotated as @s run setblock ^35 ^9 ^-46 minecraft:lantern

# === GRAND PIRATE COVE ENTRANCE ===
execute as @s at @s rotated as @s run fill ^-10 ^ ^-58 ^-7 ^11 ^-58 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^7 ^ ^-58 ^10 ^11 ^-58 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-10 ^11 ^-58 ^10 ^13 ^-58 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^-7 ^13 ^-58 ^7 ^15 ^-58 minecraft:black_wool
execute as @s at @s rotated as @s run fill ^-2 ^13 ^-59 ^2 ^16 ^-59 minecraft:white_wool
execute as @s at @s rotated as @s run setblock ^-1 ^15 ^-60 minecraft:black_wool
execute as @s at @s rotated as @s run setblock ^1 ^15 ^-60 minecraft:black_wool
execute as @s at @s rotated as @s run setblock ^ ^13 ^-60 minecraft:black_wool
execute as @s at @s rotated as @s run setblock ^-5 ^11 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-4 ^12 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-3 ^12 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-2 ^13 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-1 ^13 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^ ^14 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^1 ^15 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^2 ^15 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^3 ^16 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^4 ^16 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^5 ^17 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^5 ^11 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^4 ^12 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^3 ^12 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^2 ^13 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^1 ^13 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^ ^14 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-1 ^15 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-2 ^15 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-3 ^16 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-4 ^16 ^-59 minecraft:quartz_block
execute as @s at @s rotated as @s run setblock ^-5 ^17 ^-59 minecraft:quartz_block

# === LOADING STATION ===
execute as @s at @s rotated as @s run fill ^-15 ^ ^-28 ^15 ^ ^-20 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-13 ^1 ^-27 ^13 ^1 ^-21 minecraft:spruce_planks
execute as @s at @s rotated as @s run fill ^-15 ^2 ^-28 ^-5 ^2 ^-28 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^5 ^2 ^-28 ^15 ^2 ^-28 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-15 ^2 ^-20 ^15 ^2 ^-20 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^-15 ^2 ^-28 ^-15 ^2 ^-20 minecraft:iron_bars
execute as @s at @s rotated as @s run fill ^15 ^2 ^-28 ^15 ^2 ^-20 minecraft:iron_bars
# === OPERATOR BOOTH ===
execute as @s at @s rotated as @s run fill ^16 ^ ^-28 ^24 ^ ^-20 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^17 ^1 ^-27 ^23 ^5 ^-21 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run fill ^18 ^3 ^-28 ^22 ^5 ^-28 minecraft:glass
execute as @s at @s rotated as @s run fill ^16 ^6 ^-28 ^24 ^7 ^-20 minecraft:red_wool
execute as @s at @s rotated as @s run setblock ^18 ^2 ^-28 minecraft:redstone_lamp
execute as @s at @s rotated as @s run setblock ^20 ^2 ^-28 minecraft:gold_block
execute as @s at @s rotated as @s run setblock ^22 ^2 ^-28 minecraft:sea_lantern

# === EXIT LANE ===
execute as @s at @s rotated as @s run fill ^38 ^ ^-4 ^57 ^ ^14 minecraft:smooth_stone
execute as @s at @s rotated as @s run fill ^38 ^1 ^-4 ^57 ^1 ^-4 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^38 ^1 ^14 ^57 ^1 ^14 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^57 ^1 ^-4 ^57 ^1 ^14 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^52 ^1 ^ ^52 ^4 ^ minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^52 ^5 ^ minecraft:lantern
execute as @s at @s rotated as @s run fill ^52 ^1 ^6 ^52 ^4 ^6 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^52 ^5 ^6 minecraft:lantern
execute as @s at @s rotated as @s run fill ^52 ^1 ^12 ^52 ^4 ^12 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^52 ^5 ^12 minecraft:lantern

# === TROPICAL LANDSCAPING ===
execute as @s at @s rotated as @s run fill ^-50 ^ ^-28 ^-50 ^7 ^-28 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^-53 ^8 ^-28 ^-47 ^8 ^-28 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-50 ^8 ^-31 ^-50 ^8 ^-25 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-52 ^9 ^-30 ^-48 ^9 ^-26 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^-50 ^10 ^-28 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^-42 ^ ^8 ^-42 ^7 ^8 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^-45 ^8 ^8 ^-39 ^8 ^8 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-42 ^8 ^5 ^-42 ^8 ^11 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-44 ^9 ^6 ^-40 ^9 ^10 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^-42 ^10 ^8 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^-50 ^ ^28 ^-50 ^7 ^28 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^-53 ^8 ^28 ^-47 ^8 ^28 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-50 ^8 ^25 ^-50 ^8 ^31 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-52 ^9 ^26 ^-48 ^9 ^30 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^-50 ^10 ^28 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^-30 ^ ^50 ^-30 ^7 ^50 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^-33 ^8 ^50 ^-27 ^8 ^50 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-30 ^8 ^47 ^-30 ^8 ^53 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-32 ^9 ^48 ^-28 ^9 ^52 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^-30 ^10 ^50 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^30 ^ ^50 ^30 ^7 ^50 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^27 ^8 ^50 ^33 ^8 ^50 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^30 ^8 ^47 ^30 ^8 ^53 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^28 ^9 ^48 ^32 ^9 ^52 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^30 ^10 ^50 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^50 ^ ^28 ^50 ^7 ^28 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^47 ^8 ^28 ^53 ^8 ^28 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^50 ^8 ^25 ^50 ^8 ^31 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^48 ^9 ^26 ^52 ^9 ^30 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^50 ^10 ^28 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^43 ^ ^6 ^43 ^7 ^6 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^40 ^8 ^6 ^46 ^8 ^6 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^43 ^8 ^3 ^43 ^8 ^9 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^41 ^9 ^4 ^45 ^9 ^8 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^43 ^10 ^6 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^50 ^ ^-28 ^50 ^7 ^-28 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^47 ^8 ^-28 ^53 ^8 ^-28 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^50 ^8 ^-31 ^50 ^8 ^-25 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^48 ^9 ^-30 ^52 ^9 ^-26 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^50 ^10 ^-28 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^-28 ^ ^-50 ^-28 ^7 ^-50 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^-31 ^8 ^-50 ^-25 ^8 ^-50 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-28 ^8 ^-53 ^-28 ^8 ^-47 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-30 ^9 ^-52 ^-26 ^9 ^-48 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^-28 ^10 ^-50 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^36 ^ ^-48 ^36 ^7 ^-48 minecraft:jungle_log
execute as @s at @s rotated as @s run fill ^33 ^8 ^-48 ^39 ^8 ^-48 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^36 ^8 ^-51 ^36 ^8 ^-45 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^34 ^9 ^-50 ^38 ^9 ^-46 minecraft:jungle_leaves
execute as @s at @s rotated as @s run setblock ^36 ^10 ^-48 minecraft:glowstone
execute as @s at @s rotated as @s run fill ^-56 ^ ^16 ^-52 ^1 ^20 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-56 ^ ^-10 ^-52 ^1 ^-6 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^52 ^ ^18 ^56 ^1 ^22 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^52 ^ ^-8 ^56 ^1 ^-4 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^-22 ^ ^52 ^-18 ^1 ^56 minecraft:jungle_leaves
execute as @s at @s rotated as @s run fill ^18 ^ ^52 ^22 ^1 ^56 minecraft:jungle_leaves

# === BENCHES & REST AREAS ===
execute as @s at @s rotated as @s run fill ^-47 ^ ^48 ^-41 ^ ^48 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-47 ^1 ^49 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-41 ^1 ^49 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-29 ^ ^52 ^-23 ^ ^52 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-29 ^1 ^53 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-23 ^1 ^53 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^23 ^ ^52 ^29 ^ ^52 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^23 ^1 ^53 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^29 ^1 ^53 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^41 ^ ^48 ^47 ^ ^48 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^41 ^1 ^49 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^47 ^1 ^49 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^-55 ^ ^-18 ^-49 ^ ^-18 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^-55 ^1 ^-17 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^-49 ^1 ^-17 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run fill ^49 ^ ^-18 ^55 ^ ^-18 minecraft:dark_oak_planks
execute as @s at @s rotated as @s run setblock ^49 ^1 ^-17 minecraft:dark_oak_fence
execute as @s at @s rotated as @s run setblock ^55 ^1 ^-17 minecraft:dark_oak_fence

# === PIRATE CARGO DETAILS ===
execute as @s at @s rotated as @s run setblock ^-12 ^1 ^-32 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-11 ^1 ^-32 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-8 ^1 ^-32 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-7 ^1 ^-32 minecraft:chest
execute as @s at @s rotated as @s run setblock ^10 ^1 ^-32 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^11 ^1 ^-32 minecraft:chest
execute as @s at @s rotated as @s run setblock ^14 ^1 ^-32 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^15 ^1 ^-32 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-31 ^1 ^12 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-34 ^1 ^14 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-33 ^1 ^14 minecraft:chest
execute as @s at @s rotated as @s run setblock ^31 ^1 ^15 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^32 ^1 ^15 minecraft:chest
execute as @s at @s rotated as @s run setblock ^35 ^1 ^13 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^36 ^1 ^13 minecraft:chest
execute as @s at @s rotated as @s run setblock ^-22 ^1 ^44 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^-21 ^1 ^44 minecraft:chest
execute as @s at @s rotated as @s run setblock ^22 ^1 ^46 minecraft:barrel
execute as @s at @s rotated as @s run setblock ^23 ^1 ^46 minecraft:chest

# === BRAZIERS & NIGHT LIGHTING ===
execute as @s at @s rotated as @s run fill ^-25 ^ ^-26 ^-23 ^1 ^-24 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-24 ^2 ^-25 ^-24 ^3 ^-25 minecraft:cobblestone_wall
execute as @s at @s rotated as @s run setblock ^-24 ^4 ^-25 minecraft:campfire
execute as @s at @s rotated as @s run fill ^23 ^ ^-26 ^25 ^1 ^-24 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^24 ^2 ^-25 ^24 ^3 ^-25 minecraft:cobblestone_wall
execute as @s at @s rotated as @s run setblock ^24 ^4 ^-25 minecraft:campfire
execute as @s at @s rotated as @s run fill ^-36 ^ ^17 ^-34 ^1 ^19 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-35 ^2 ^18 ^-35 ^3 ^18 minecraft:cobblestone_wall
execute as @s at @s rotated as @s run setblock ^-35 ^4 ^18 minecraft:campfire
execute as @s at @s rotated as @s run fill ^34 ^ ^17 ^36 ^1 ^19 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^35 ^2 ^18 ^35 ^3 ^18 minecraft:cobblestone_wall
execute as @s at @s rotated as @s run setblock ^35 ^4 ^18 minecraft:campfire
execute as @s at @s rotated as @s run fill ^-21 ^ ^39 ^-19 ^1 ^41 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^-20 ^2 ^40 ^-20 ^3 ^40 minecraft:cobblestone_wall
execute as @s at @s rotated as @s run setblock ^-20 ^4 ^40 minecraft:campfire
execute as @s at @s rotated as @s run fill ^19 ^ ^39 ^21 ^1 ^41 minecraft:stone_bricks
execute as @s at @s rotated as @s run fill ^20 ^2 ^40 ^20 ^3 ^40 minecraft:cobblestone_wall
execute as @s at @s rotated as @s run setblock ^20 ^4 ^40 minecraft:campfire

# === PIRATE COVE PHOTO SPOT ===
execute as @s at @s rotated as @s run fill ^-8 ^ ^48 ^8 ^ ^55 minecraft:sandstone
execute as @s at @s rotated as @s run fill ^-6 ^1 ^50 ^-4 ^8 ^50 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^4 ^1 ^50 ^6 ^8 ^50 minecraft:dark_oak_log
execute as @s at @s rotated as @s run fill ^-6 ^8 ^50 ^6 ^10 ^50 minecraft:red_wool
execute as @s at @s rotated as @s run fill ^-4 ^10 ^50 ^4 ^11 ^50 minecraft:black_wool
execute as @s at @s rotated as @s run setblock ^-3 ^9 ^49 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^ ^9 ^49 minecraft:sea_lantern
execute as @s at @s rotated as @s run setblock ^3 ^9 ^49 minecraft:sea_lantern

# === END OF BUILD ===
# Main entrance is behind you (negative local forward).
# Skull cave is in front of you (positive local forward).
# Pirate fort is on the local-left / local-forward cliffs.
# Run on flat open ground with at least 65 blocks of horizontal clearance.
# This function is static/decorative; add separate command systems for moving ride vehicles or effects.
