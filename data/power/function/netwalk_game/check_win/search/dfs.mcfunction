###################################################
# 使用深度優先搜尋法 將可經過的路線標記出來
# 
# Name   : dfs.mcfunction
# Path   : power:netwalk_game/check_win/search/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 遞迴
# Author : Alex_Cai
###################################################

#讀取用的 避免macro太多
$item replace entity 0-0-0-0-171e7 contents from block ~$(x_offset) ~ ~ container.$(index)

#已經走過了
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{pass: true}] run return fail

#標記為走過了 注意首個custom_model_data不要被取代
$item modify block ~$(x_offset) ~ ~ container.$(index) power:pass

#參數 以堆疊的方式模擬區域變數 畢竟是遞迴嘛
$data modify storage jk2:data root.monitor.netwalk_game.arguments_stack append value {x_offset: $(x_offset), index: $(index)}

#注意0-0-0-0-171e7的contents隨時會被修改
#因此最好單線執行 也就是說不要造成if item又if item的情形
function power:netwalk_game/check_win/search/type

#堆疊pop
data remove storage jk2:data root.monitor.netwalk_game.arguments_stack[-1]