###################################################
# 給予終界使者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:enderman/skill/
# As     : 變形成終界使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s grass_block[custom_data={skill: 2}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]