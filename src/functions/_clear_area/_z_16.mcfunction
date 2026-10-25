# INTERNAL HELPER - do not run manually
scoreboard players remove ca_z clear_area 16
execute if score ca_w clear_area matches 1 run function _clear_area/_box_1_16
execute if score ca_w clear_area matches 2 run function _clear_area/_box_2_16
execute if score ca_w clear_area matches 4 run function _clear_area/_box_4_16
execute if score ca_w clear_area matches 8 run function _clear_area/_box_8_16
execute if score ca_w clear_area matches 16 run function _clear_area/_box_16_16
execute if score ca_w clear_area matches 32 run function _clear_area/_box_32_16
execute if score ca_z clear_area matches 1.. run execute positioned ^0 ^0 ^16 run function _clear_area/_z
