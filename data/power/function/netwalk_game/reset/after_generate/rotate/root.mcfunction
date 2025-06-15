#先複製 以免用太多macro
$data modify storage jk2:data root.monitor.netwalk_game.custom_data set from block $(coord) Items[{Slot: $(index)b}].components."minecraft:custom_data"

#獲得長度
execute store result score #connected_size netwalk_game if data storage jk2:data root.monitor.netwalk_game.custom_data.connected_vec2arr[]

#旋轉角度
execute store result score #random_rotate netwalk_game run random value 0..3

#有一個
execute if score #connected_size netwalk_game matches 1 run function power:netwalk_game/reset/after_generate/rotate/size_1

#有兩個
execute if score #connected_size netwalk_game matches 2 run function power:netwalk_game/reset/after_generate/rotate/size_2

#有三個
execute if score #connected_size netwalk_game matches 3 run function power:netwalk_game/reset/after_generate/rotate/size_3

#放回去
$item modify block $(coord) container.$(index) {function: "copy_custom_data", ops: [{op: "merge", source: "root.monitor.netwalk_game.custom_data", target: "{}"}], source: {type: "storage", source: "jk2:data"}}