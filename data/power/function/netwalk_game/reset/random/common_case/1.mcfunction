###################################################
# Make the Common Case Fast: 如果root.monitor.netwalk_game.nodes_vec2arr有一個向量
# 
# Name   : 1.mcfunction
# Path   : power:netwalk_game/reset/random/common_case/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

data modify storage jk2:data root.monitor.netwalk_game.node_vec2 set from storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0]
data modify storage jk2:data root.monitor.netwalk_game.macro.index set value 0