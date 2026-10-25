# INTERNAL HELPER - do not run manually
execute if score ca_z clear_area matches 1..1 run function _clear_area/_z_1
execute if score ca_z clear_area matches 2..3 run function _clear_area/_z_2
execute if score ca_z clear_area matches 4..7 run function _clear_area/_z_4
execute if score ca_z clear_area matches 8..15 run function _clear_area/_z_8
execute if score ca_z clear_area matches 16..31 run function _clear_area/_z_16
execute if score ca_z clear_area matches 32.. run function _clear_area/_z_32
