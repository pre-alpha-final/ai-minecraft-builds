# CLEAR AREA FROM SIGN - Minecraft Bedrock Edition
# Run as a player: /function 0_clear_sides_forward_up
# Stand at ground level at a sign (at your feet or directly below), facing the area.
# Write exactly three integers on the sign: 10 50 30 (sides forward up).
# Your position centers on the current block; pitch levels and yaw snaps to a cardinal.
# sides = blocks on EACH side; width = 2*sides+1. forward/up are block counts.
# Front-center origin; exact local bounds: (-sides,0,1) through (sides,up-1,forward).
# Leaves the sign/origin column and blocks below foot level intact.
# Limits: sides 0..128, forward 1..512, up 1..384, plus a checked 10,000-command budget.
# Overworld supported feet Y: -64 through 320-up; Classic Flat Y -60 allows up <= 380.
# Temporary ticking areas automatically load the complete target box; keep the world running.
# Script API 1.16.0 saves the sign context, preloads, checks every tile, clears and cleans up.
# One active clear at a time; up to six temporary ticking areas. At most 32,768 cells per fill.
# WARNING: permanently deletes blocks. Back up first or use a disposable world.

# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ===
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0

execute as @s at @s rotated as @s run execute if entity @s[type=minecraft:player] run scriptevent ai_minecraft_builds:clear read_sign
