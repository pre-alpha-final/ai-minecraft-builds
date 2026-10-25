# INTERNAL HELPER - do not run manually
scoreboard players set ca_status clear_area 0
scoreboard players set ca_32 clear_area 32
scoreboard players set ca_2 clear_area 2
scoreboard players set ca_11 clear_area 11
scoreboard players set ca_26 clear_area 26
scoreboard players set ca_10 clear_area 10
scoreboard players set ca_9 clear_area 9
scoreboard players operation ca_width clear_area = sides clear_area
scoreboard players operation ca_width clear_area += sides clear_area
scoreboard players add ca_width clear_area 1
scoreboard players operation ca_value clear_area = ca_width clear_area
function _clear_area/_count_parts
scoreboard players operation ca_pw clear_area = ca_parts clear_area
scoreboard players operation ca_value clear_area = forward clear_area
function _clear_area/_count_parts
scoreboard players operation ca_pf clear_area = ca_parts clear_area
scoreboard players operation ca_value clear_area = up clear_area
function _clear_area/_count_parts
scoreboard players operation ca_ph clear_area = ca_parts clear_area
scoreboard players operation ca_value clear_area = sides clear_area
function _clear_area/_count_parts
scoreboard players operation ca_ps clear_area = ca_parts clear_area
scoreboard players operation ca_value clear_area = forward clear_area
scoreboard players remove ca_value clear_area 1
function _clear_area/_count_parts
scoreboard players operation ca_pz clear_area = ca_parts clear_area
scoreboard players operation ca_tiles clear_area = ca_pw clear_area
scoreboard players operation ca_tiles clear_area *= ca_ph clear_area
scoreboard players operation ca_tiles clear_area *= ca_pf clear_area
scoreboard players operation ca_maxp clear_area = ca_pw clear_area
scoreboard players operation ca_maxp clear_area > ca_pf clear_area
scoreboard players operation ca_cost clear_area = ca_ph clear_area
scoreboard players add ca_cost clear_area 1
scoreboard players operation ca_cost clear_area *= ca_maxp clear_area
scoreboard players operation ca_cost clear_area *= ca_11 clear_area
scoreboard players operation ca_temp clear_area = ca_tiles clear_area
scoreboard players operation ca_temp clear_area *= ca_26 clear_area
scoreboard players operation ca_cost clear_area += ca_temp clear_area
scoreboard players operation ca_temp clear_area = ca_ps clear_area
scoreboard players operation ca_temp clear_area *= ca_10 clear_area
scoreboard players operation ca_cost clear_area += ca_temp clear_area
scoreboard players operation ca_temp clear_area = ca_pz clear_area
scoreboard players operation ca_temp clear_area *= ca_9 clear_area
scoreboard players operation ca_cost clear_area += ca_temp clear_area
scoreboard players add ca_cost clear_area 46
scoreboard players operation ca_cost clear_area *= ca_2 clear_area
execute if score ca_cost clear_area matches 9001.. run scoreboard players set ca_status clear_area 2
execute if score ca_cost clear_area matches ..9000 run function _clear_area/_perform
