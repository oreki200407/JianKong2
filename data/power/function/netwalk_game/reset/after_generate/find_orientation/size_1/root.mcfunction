###################################################
# 一個連接的格子
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/reset/after_generate/size_1/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.type set value "single"

execute store result score #o_r1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0].row
execute store result score #o_c1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0].column

#以UP為0 RIGHT為1 DOWN為2 LEFT為3
execute if function power:netwalk_game/vector2/is_direction/1_up run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 0
execute if function power:netwalk_game/vector2/is_direction/1_right run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 1
execute if function power:netwalk_game/vector2/is_direction/1_down run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 2
execute if function power:netwalk_game/vector2/is_direction/1_left run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 3