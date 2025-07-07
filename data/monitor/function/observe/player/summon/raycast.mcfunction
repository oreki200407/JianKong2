###################################################
# 視線偵測
# 
# Name   : raycast.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 正在看監視器的玩家
# At     : 飛出去的視線
# Loop   : 遞迴
# Author : Alex_Cai
###################################################

#超出範圍
execute unless entity @s[distance=..50] run return run function monitor:observe/player/summon/check

#還沒到 繼續往前
execute positioned ^ ^ ^.5 if function gun:can_through run return run function monitor:observe/player/summon/raycast

#撞上實體方塊
function monitor:observe/player/summon/check