###################################################
# 回傳x_offset和index是否在範圍內
# 
# Name   : in_bound.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#第一橫列
execute if score #index netwalk_game matches 2..6 run return 100
#第二橫列
execute if score #index netwalk_game matches 11..15 run return 100
#只有左邊的箱子有第三橫列
return run execute if score #x_offset netwalk_game matches 0 if score #index netwalk_game matches 20..24