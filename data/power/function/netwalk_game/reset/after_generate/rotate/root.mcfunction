#獲得長度
$execute store result score #connected_size netwalk_game if data block $(coords) Items[$(index)].components."minecraft:custom_data".connected[]

$data modify storage jk2:data root.monitor.netwalk_game.custom_data set from block $(coords) Items[$(index)].components."minecraft:custom_data"

#旋轉程度
execute store result score #random_rotate netwalk_game run random value 0..3

execute if score #connected_size netwalk_game matches 1 run function power:netwalk_game/reset/after_generate/rotate/size_1


#旋轉第二個
$data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set from block $(coords) Items[$(index)].components."minecraft:custom_data".connected[1]
execute if score #random_rotate netwalk_game matches 1 run function power:netwalk_game/vector2/rotate/1
execute if score #random_rotate netwalk_game matches 2 run function power:netwalk_game/vector2/rotate/2
execute if score #random_rotate netwalk_game matches 3 run function power:netwalk_game/vector2/rotate/3
$data modify block $(coords) Items[$(index)].components."minecraft:custom_data".connected[1] set from storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2
#只有兩個
$execute if score #connected_size netwalk_game matches 2 run return run function power:netwalk_game/reset/after_generate/straight_or_corner {coords: "$(coords)", index: $(index)}