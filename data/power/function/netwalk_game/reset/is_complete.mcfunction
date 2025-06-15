###################################################
# 檢查node_vec2四周的格子是否已經生成過了，是的話就return true，否則return false
# 
# Name   : is_complete.mcfunction
# Path   : power:netwalk_game/reset/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#檢查是否四周都生成過了

#被加數
data modify storage jk2:data root.monitor.netwalk_game.vector2.augend_vec2 set from storage jk2:data root.monitor.netwalk_game.node_vec2


#第一個加數
data modify storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[0]
function power:netwalk_game/vector2/add
#把和拿去檢驗
data modify storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
#在範圍內 且 還沒有任何連接 代表還沒有滿
execute if function power:netwalk_game/vector2/is_in_bound if function power:netwalk_game/reset/cell/is_empty run return fail


#第二個加數
data modify storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[1]
function power:netwalk_game/vector2/add
#把和拿去檢驗
data modify storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
#在範圍內 且 還沒有任何連接 代表還沒有滿
execute if function power:netwalk_game/vector2/is_in_bound if function power:netwalk_game/reset/cell/is_empty run return fail


#第三個加數
data modify storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[2]
function power:netwalk_game/vector2/add
#把和拿去檢驗
data modify storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
#在範圍內 且 還沒有任何連接 代表還沒有滿
execute if function power:netwalk_game/vector2/is_in_bound if function power:netwalk_game/reset/cell/is_empty run return fail


#第四個加數
data modify storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2 set from storage jk2:data root.monitor.netwalk_game.directions_vec2arr[3]
function power:netwalk_game/vector2/add
#把和拿去檢驗
data modify storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2
#在範圍內 且 還沒有任何連接 代表還沒有滿
execute if function power:netwalk_game/vector2/is_in_bound if function power:netwalk_game/reset/cell/is_empty run return fail


#四周都生成過了
return 100