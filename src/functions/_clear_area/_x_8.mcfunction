# INTERNAL HELPER - do not run manually
scoreboard players remove ca_x clear_area 8
scoreboard players set ca_w clear_area 8
scoreboard players operation ca_y clear_area = up clear_area
function _clear_area/_y
execute if score ca_x clear_area matches 1.. run execute positioned ^8 ^0 ^0 run function _clear_area/_x
