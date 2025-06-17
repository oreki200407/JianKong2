###################################################
# 根據x_offset和index獲得上方的格子
# 
# Name   : get_up.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/
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

#如果不跨箱子 那index - 9就好了
execute unless predicate power:cross_chest/up run return run scoreboard players remove #index netwalk_game 9

#跨箱子 也就是x_offset為1時 2..6那塊
scoreboard players set #x_offset netwalk_game 0
scoreboard players add #index netwalk_game 18