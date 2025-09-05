###################################################
# 退出重進
# 
# Name   : rejoin.mcfunction
# Path   : game:join/
# As     : 加入的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if score #mode system matches 3..4 run function game:join/restore_bossbar
title @s times 0 40 0
scoreboard players reset @s leave