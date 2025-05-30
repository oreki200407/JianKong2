execute store result storage jk2:data root.monitor.netwalk_game.macro.index int 1 store result score #random_index netwalk_game run random value 0..9

execute if score #random_index netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0]
execute if score #random_index netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[1]
execute if score #random_index netwalk_game matches 2 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[2]
execute if score #random_index netwalk_game matches 3 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[3]
execute if score #random_index netwalk_game matches 4 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[4]
execute if score #random_index netwalk_game matches 5 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[5]
execute if score #random_index netwalk_game matches 6 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[6]
execute if score #random_index netwalk_game matches 7 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[7]
data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[8]