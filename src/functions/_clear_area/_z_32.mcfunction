# INTERNAL HELPER - do not run manually
scoreboard players remove ca_z clear_area 32
execute if score ca_w clear_area matches 1 run function _clear_area/_box_1_32
execute if score ca_w clear_area matches 2 run function _clear_area/_box_2_32
execute if score ca_w clear_area matches 4 run function _clear_area/_box_4_32
execute if score ca_w clear_area matches 8 run function _clear_area/_box_8_32
execute if score ca_w clear_area matches 16 run function _clear_area/_box_16_32
execute if score ca_w clear_area matches 32 run function _clear_area/_box_32_32
execute if score ca_z clear_area matches 1.. run execute positioned ^0 ^0 ^32 run function _clear_area/_z
