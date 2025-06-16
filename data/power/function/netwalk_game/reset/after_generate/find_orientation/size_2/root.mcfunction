###################################################
# 兩個連接的格子
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/reset/after_generate/size_2/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score #o_r1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0].row
execute store result score #o_c1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0].column
execute store result score #o_r2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[1].row
execute store result score #o_c2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[1].column

#以UP-RIGHT為0 RIGHT-DOWN為1 DOWN-LEFT為2 LEFT-UP為3
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_2/is_up_right run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 0, type: "corner"}
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_2/is_right_down run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 1, type: "corner"}
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_2/is_down_left run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 2, type: "corner"}
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_2/is_left_up run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 3, type: "corner"}

#以UP-DOWN為0 RIGHT-LEFT為1
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_2/is_up_down run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 0, type: "straight"}
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_2/is_right_left run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 1, type: "straight"}

#HOW?
data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: -1, type: "straight"}