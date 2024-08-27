###################################################
# 苦力怕boss閃電狀態的tick
# 
# Name   : tick.mcfunction
# Path   : monster:boss/creeper/status/lightning/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#每tick 3%
execute unless predicate monster:chance/3 run return fail

execute store result entity @s ArmorItems[3].components."minecraft:custom_data".rotate double 0.01 run random value 0..36000
execute store result entity @s ArmorItems[3].components."minecraft:custom_data".range double 0.01 run random value 1000..2000
execute at @s run function monster:boss/creeper/status/lightning/summon with entity @s ArmorItems[3].components."minecraft:custom_data"