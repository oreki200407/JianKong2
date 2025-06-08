###################################################
# 視線偵測
# 
# Name   : raycast.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 正在看監視器的玩家
# At     : As
# Loop   : 遞迴
# Author : Alex_Cai
###################################################

#超出範圍
execute unless entity @s[distance=..50] run return run function monitor:observe/player/summon/check

#不是空氣
execute unless block ^ ^ ^0.5 #air unless block ^ ^ ^0.5 #doors[open=true] run return run function monitor:observe/player/summon/check

#還沒到 繼續往前
execute positioned ^ ^ ^.5 run function monitor:observe/player/summon/raycast