###################################################
# 視線偵測
# 
# Name   : raycast.mcfunction
# Path   : monitor:photo
# As     : 正在看監視器的玩家
# At     : As
# Loop   : 遞迴
# Author : Alex_Cai
###################################################

#超出範圍
execute unless entity @s[distance=..50] run return run function monitor:photo/check

function monitor:photo/check with storage jk2:data root.monitor.photo

#還沒到 繼續往前
execute positioned ^ ^ ^.5 run function monitor:photo/raycast