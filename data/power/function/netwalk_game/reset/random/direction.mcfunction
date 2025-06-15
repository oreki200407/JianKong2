###################################################
# 從root.monitor.netwalk_game.directions_vec2arr中隨機選擇一個向量
# 
# Name   : direction.mcfunction
# Path   : power:netwalk_game/reset/random/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#從4個方向中隨機選一個
execute store result score #direction netwalk_game run random value 0..3
execute if score #direction netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[0]
execute if score #direction netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[1]
execute if score #direction netwalk_game matches 2 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[2]
execute if score #direction netwalk_game matches 3 run return run data modify storage jk2:data root.monitor.netwalk_game.direction_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[3]