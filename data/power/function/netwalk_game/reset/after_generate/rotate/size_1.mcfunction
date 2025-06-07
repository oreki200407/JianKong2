#只旋轉一個
data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set from storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0]
execute if score #random_rotate netwalk_game matches 1 run function power:netwalk_game/vector2/rotate/90
execute if score #random_rotate netwalk_game matches 2 run function power:netwalk_game/vector2/rotate/180
execute if score #random_rotate netwalk_game matches 3 run function power:netwalk_game/vector2/rotate/270
data modify storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[0] set from storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2

#目前的狀態
function power:netwalk_game/reset/after_generate/find_orientation/size_1/root