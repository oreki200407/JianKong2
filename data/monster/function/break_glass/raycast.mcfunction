###################################################
# 視線偵測
# 
# Name   : raycast.mcfunction
# Path   : monster:break_glass/
# As     : 非玩家的監控者實體
# At     : As
# Loop   : 是，且有遞迴
# Author : Alex_Cai
###################################################

#超出範圍
execute unless entity @s[distance=..2.5] run return fail

#的確是玻璃
execute if block ~ ~ ~ #gadgets:glass run return run function monster:break_glass/looking_at_glass

#還沒到 繼續往前
execute positioned ^ ^ ^.05 run function monster:break_glass/raycast