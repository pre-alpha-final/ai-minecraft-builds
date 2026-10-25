# INTERNAL HELPER - do not run manually
scoreboard players remove ca_shiftx clear_area 1
execute if score ca_sign clear_area matches -1 run execute positioned ^-1 ^0 ^0 run function _clear_area/_shiftx
execute if score ca_sign clear_area matches 1 run execute positioned ^1 ^0 ^0 run function _clear_area/_shiftx
