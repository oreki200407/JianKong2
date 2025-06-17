###################################################
# 根據x_offset和index，對上方的格子進行DFS
# 
# Name   : up.mcfunction
# Path   : power:netwalk_game/check_win/search/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#  0  1  2  3  4  5  6  7  8 #
#  □  □  ■  ■  ■  ■  ■  □  □ #
#  9 10 11 12 13 14 15 16 17 #
#  □  □  ■  ■  ■  ■  ■  □  □ #
# 18 19 20 21 22 23 24 25 26 #
#  □  □  ■  ■  ■  ■  ■  □  □ #
#  0  1  2  3  4  5  6  7  8 #
#  □  □  ■  ■  ■  ■  ■  □  □ #
#  9 10 11 12 13 14 15 16 17 #
#  □  □  ■  ■  ■  ■  ■  □  □ #
# 18 19 20 21 22 23 24 25 26 #
#  □  □  □  □  □  □  □  □  □ #

#讀取參數
execute store result score #x_offset netwalk_game run data get storage jk2:data root.monitor.netwalk_game.arguments_stack[-1].x_offset
execute store result score #index netwalk_game run data get storage jk2:data root.monitor.netwalk_game.arguments_stack[-1].index

#對#index參數進行調整
function power:netwalk_game/check_win/cell_operation/get_up

#調整後不在範圍內就結束
execute unless function power:netwalk_game/check_win/cell_operation/is_in_bound run return fail

execute store result storage jk2:data root.monitor.netwalk_game.macro.dfs.x_offset int 1 run scoreboard players get #x_offset netwalk_game
execute store result storage jk2:data root.monitor.netwalk_game.macro.dfs.index int 1 run scoreboard players get #index netwalk_game

#DFS
function power:netwalk_game/check_win/search/dfs with storage jk2:data root.monitor.netwalk_game.macro.dfs