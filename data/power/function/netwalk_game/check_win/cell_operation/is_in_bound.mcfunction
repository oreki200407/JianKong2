###################################################
# 回傳x_offset和index是否在範圍內
# 
# Name   : is_in_bound.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/
# As     : 發電機標記，tag=netwalk_game
# At     : As
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

#第一橫列
execute if score #index netwalk_game matches 2..6 run return 100
#第二橫列
execute if score #index netwalk_game matches 11..15 run return 100
#只有左邊的箱子有第三橫列
return run execute if score #x_offset netwalk_game matches 0 if score #index netwalk_game matches 20..24