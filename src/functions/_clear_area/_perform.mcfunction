# INTERNAL HELPER - do not run manually
scoreboard players set ca_mode clear_area 0
scoreboard players set ca_ready clear_area 0
execute align y positioned ^0 ^0 ^1 run function _clear_area/_run
execute unless score ca_ready clear_area = ca_tiles clear_area run scoreboard players set ca_status clear_area 3
scoreboard players set ca_mode clear_area 1
execute if score ca_ready clear_area = ca_tiles clear_area align y positioned ^0 ^0 ^1 run function _clear_area/_run
execute if score ca_ready clear_area = ca_tiles clear_area run scoreboard players set ca_status clear_area 1
