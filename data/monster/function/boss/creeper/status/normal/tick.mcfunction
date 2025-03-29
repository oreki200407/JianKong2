###################################################
# 苦力怕boss普通狀態的tick
# 
# Name   : tick.mcfunction
# Path   : monster:boss/creeper/status/normal/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#每tick 3%
execute unless predicate game:chance/3 run return fail

execute store result entity @s equipment.head.components."minecraft:custom_data".rotate double 0.01 run random value 0..36000
execute store result entity @s equipment.head.components."minecraft:custom_data".range double 0.01 run random value 300..700
execute at @s run function monster:boss/creeper/status/normal/summon with entity @s equipment.head.components."minecraft:custom_data"