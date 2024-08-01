###################################################
# 視線偵測
# 
# Name   : raycast.mcfunction
# Path   : monitor:observe/player/summon_trap/
# As     : 正在看監視器的玩家
# At     : As
# Loop   : 遞迴
# Author : Alex_Cai
###################################################

#超出範圍
execute unless entity @s[distance=..50] run return run function monitor:observe/player/summon_trap/summon

#不是空氣
execute unless block ~ ~ ~ #air align xyz positioned ~.5 ~1.5 ~.5 run return run function monitor:observe/player/summon_trap/summon

#還沒到 繼續往前
execute positioned ^ ^ ^.05 run function monitor:observe/player/summon_trap/raycast