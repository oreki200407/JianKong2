###################################################
# 隨機旋轉有兩個元素的connected_vec2arr
# 
# Name   : size_2.mcfunction
# Path   : power:netwalk_game/reset/after_generate/rotate/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#旋轉兩個
data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set from storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0]
execute if score #random_rotate netwalk_game matches 1 run function power:netwalk_game/vector2/rotate/90
execute if score #random_rotate netwalk_game matches 2 run function power:netwalk_game/vector2/rotate/180
execute if score #random_rotate netwalk_game matches 3 run function power:netwalk_game/vector2/rotate/270
data modify storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0] set from storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2

data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set from storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[1]
execute if score #random_rotate netwalk_game matches 1 run function power:netwalk_game/vector2/rotate/90
execute if score #random_rotate netwalk_game matches 2 run function power:netwalk_game/vector2/rotate/180
execute if score #random_rotate netwalk_game matches 3 run function power:netwalk_game/vector2/rotate/270
data modify storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[1] set from storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2

#儲存目前的狀態
function power:netwalk_game/reset/after_generate/find_orientation/size_2/root