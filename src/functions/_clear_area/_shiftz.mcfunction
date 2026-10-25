# INTERNAL HELPER - do not run manually
execute if score ca_shiftz clear_area matches 0 run execute rotated 0 0 run function _clear_area/_walk
execute if score ca_shiftz clear_area matches 1..1 run function _clear_area/_shiftz_1
execute if score ca_shiftz clear_area matches 2..3 run function _clear_area/_shiftz_2
execute if score ca_shiftz clear_area matches 4..7 run function _clear_area/_shiftz_4
execute if score ca_shiftz clear_area matches 8..15 run function _clear_area/_shiftz_8
execute if score ca_shiftz clear_area matches 16..31 run function _clear_area/_shiftz_16
execute if score ca_shiftz clear_area matches 32.. run function _clear_area/_shiftz_32
