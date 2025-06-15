###################################################
# Make the Common Case Fast: 如果root.monitor.netwalk_game.nodes_vec2arr有三個向量
# 
# Name   : 3.mcfunction
# Path   : power:netwalk_game/reset/random/common_case/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result storage jk2:data root.monitor.netwalk_game.macro.index int 1 store result score #random_index netwalk_game run random value 0..2

execute if score #random_index netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0]
execute if score #random_index netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[1]
data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[2]