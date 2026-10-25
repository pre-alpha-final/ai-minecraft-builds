# INTERNAL HELPER - do not run manually
execute if score ca_h clear_area matches 1 if score ca_mode clear_area matches 0 if blocks ^0 ^0 ^0 ^15 ^0 ^3 ^0 ^0 ^0 all run scoreboard players add ca_ready clear_area 1
execute if score ca_h clear_area matches 1 if score ca_mode clear_area matches 1 run fill ^0 ^0 ^0 ^15 ^0 ^3 minecraft:air replace
execute if score ca_h clear_area matches 2 if score ca_mode clear_area matches 0 if blocks ^0 ^0 ^0 ^15 ^1 ^3 ^0 ^0 ^0 all run scoreboard players add ca_ready clear_area 1
execute if score ca_h clear_area matches 2 if score ca_mode clear_area matches 1 run fill ^0 ^0 ^0 ^15 ^1 ^3 minecraft:air replace
execute if score ca_h clear_area matches 4 if score ca_mode clear_area matches 0 if blocks ^0 ^0 ^0 ^15 ^3 ^3 ^0 ^0 ^0 all run scoreboard players add ca_ready clear_area 1
execute if score ca_h clear_area matches 4 if score ca_mode clear_area matches 1 run fill ^0 ^0 ^0 ^15 ^3 ^3 minecraft:air replace
execute if score ca_h clear_area matches 8 if score ca_mode clear_area matches 0 if blocks ^0 ^0 ^0 ^15 ^7 ^3 ^0 ^0 ^0 all run scoreboard players add ca_ready clear_area 1
execute if score ca_h clear_area matches 8 if score ca_mode clear_area matches 1 run fill ^0 ^0 ^0 ^15 ^7 ^3 minecraft:air replace
execute if score ca_h clear_area matches 16 if score ca_mode clear_area matches 0 if blocks ^0 ^0 ^0 ^15 ^15 ^3 ^0 ^0 ^0 all run scoreboard players add ca_ready clear_area 1
execute if score ca_h clear_area matches 16 if score ca_mode clear_area matches 1 run fill ^0 ^0 ^0 ^15 ^15 ^3 minecraft:air replace
execute if score ca_h clear_area matches 32 if score ca_mode clear_area matches 0 if blocks ^0 ^0 ^0 ^15 ^31 ^3 ^0 ^0 ^0 all run scoreboard players add ca_ready clear_area 1
execute if score ca_h clear_area matches 32 if score ca_mode clear_area matches 1 run fill ^0 ^0 ^0 ^15 ^31 ^3 minecraft:air replace
