execute store result storage jk2:data root.monitor.netwalk_game.macro.index int 1 store result score #random_index netwalk_game run random value 0..4

execute if score #random_index netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0]
execute if score #random_index netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[1]
execute if score #random_index netwalk_game matches 2 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[2]
data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[3]