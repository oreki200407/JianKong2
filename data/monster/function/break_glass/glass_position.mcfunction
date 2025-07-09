###################################################
# 在玻璃的位置令標記執行指令
# 
# Name   : glass_position.mcfunction
# Path   : monster:break_glass/
# As     : 非玩家的監控者實體
# At     : 玻璃的位置中心
# Loop   : 是
# Author : Alex_Cai
###################################################

execute as @e[type=marker, tag=glass_marker, distance=..0.0001] run return run function monster:break_glass/glass_marker

#沒有return代表沒有marker
summon marker ~ ~ ~ {Tags: ["glass_marker"]}