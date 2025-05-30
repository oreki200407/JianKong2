#從4個方向中隨機選一個
execute store result score #direction netwalk_game run random value 0..3
execute if score #direction netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[0]
execute if score #direction netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[1]
execute if score #direction netwalk_game matches 2 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[2]
execute if score #direction netwalk_game matches 3 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[3]