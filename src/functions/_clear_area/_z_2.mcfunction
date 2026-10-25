# INTERNAL HELPER - do not run manually
scoreboard players remove ca_z clear_area 2
execute if score ca_w clear_area matches 1 run function _clear_area/_box_1_2
execute if score ca_w clear_area matches 2 run function _clear_area/_box_2_2
execute if score ca_w clear_area matches 4 run function _clear_area/_box_4_2
execute if score ca_w clear_area matches 8 run function _clear_area/_box_8_2
execute if score ca_w clear_area matches 16 run function _clear_area/_box_16_2
execute if score ca_w clear_area matches 32 run function _clear_area/_box_32_2
execute if score ca_z clear_area matches 1.. run execute positioned ^0 ^0 ^2 run function _clear_area/_z
