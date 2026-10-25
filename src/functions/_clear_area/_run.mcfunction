# INTERNAL HELPER - do not run manually
scoreboard players operation ca_world_w clear_area = ca_width clear_area
scoreboard players operation ca_world_d clear_area = forward clear_area
scoreboard players set ca_sign clear_area -1
scoreboard players operation ca_shiftx clear_area = sides clear_area
scoreboard players set ca_shiftz clear_area 0
execute if score ca_yaw clear_area matches 90 run scoreboard players operation ca_world_w clear_area = forward clear_area
execute if score ca_yaw clear_area matches 90 run scoreboard players operation ca_world_d clear_area = ca_width clear_area
execute if score ca_yaw clear_area matches -90 run scoreboard players operation ca_world_w clear_area = forward clear_area
execute if score ca_yaw clear_area matches -90 run scoreboard players operation ca_world_d clear_area = ca_width clear_area
execute if score ca_yaw clear_area matches 180 run scoreboard players set ca_sign clear_area 1
execute if score ca_yaw clear_area matches -90 run scoreboard players set ca_sign clear_area 1
execute if score ca_yaw clear_area matches 90 run scoreboard players operation ca_shiftz clear_area = forward clear_area
execute if score ca_yaw clear_area matches 90 run scoreboard players remove ca_shiftz clear_area 1
execute if score ca_yaw clear_area matches 180 run scoreboard players operation ca_shiftz clear_area = forward clear_area
execute if score ca_yaw clear_area matches 180 run scoreboard players remove ca_shiftz clear_area 1
function _clear_area/_shiftx
