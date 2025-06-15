###################################################
# nodes_vec2arr[index]已經連接三個方向了，所以從nodes_vec2arr裡刪除
# 
# Name   : when_full.mcfunction
# Path   : power:netwalk_game/reset/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#已經連接3個方向了 拿走
$data remove storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[$(index)]
function power:netwalk_game/reset/generate