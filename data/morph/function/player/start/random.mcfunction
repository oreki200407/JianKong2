###################################################
# 隨機選擇變形的怪物
# 
# Name   : random.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$execute store result #index morph run random value 1..$(availables)

#random的範圍是1..陣列的長度 但是陣列索引的範圍是0..(列表的長度 - 1)
return run scoreboard players remove #index morph 1