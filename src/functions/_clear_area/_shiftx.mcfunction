# INTERNAL HELPER - do not run manually
execute if score ca_shiftx clear_area matches 0 run function _clear_area/_shiftz
execute if score ca_shiftx clear_area matches 1..1 run function _clear_area/_shiftx_1
execute if score ca_shiftx clear_area matches 2..3 run function _clear_area/_shiftx_2
execute if score ca_shiftx clear_area matches 4..7 run function _clear_area/_shiftx_4
execute if score ca_shiftx clear_area matches 8..15 run function _clear_area/_shiftx_8
execute if score ca_shiftx clear_area matches 16..31 run function _clear_area/_shiftx_16
execute if score ca_shiftx clear_area matches 32.. run function _clear_area/_shiftx_32
