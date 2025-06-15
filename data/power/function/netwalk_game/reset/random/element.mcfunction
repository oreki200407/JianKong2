###################################################
# 根據index，從nodes_vec2arr中選擇一個向量
# 
# Name   : element.mcfunction
# Path   : power:netwalk_game/reset/random/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#根據index選擇
$data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[$(index)]