# INTERNAL HELPER - do not run manually
scoreboard players remove ca_y clear_area 32
scoreboard players set ca_h clear_area 32
scoreboard players operation ca_z clear_area = ca_world_d clear_area
function _clear_area/_z
execute if score ca_y clear_area matches 1.. run execute positioned ^0 ^32 ^0 run function _clear_area/_y
