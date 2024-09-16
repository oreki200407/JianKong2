###################################################
# 給予烈焰使者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:blaze/skill/
# As     : 變形成烈焰使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s blaze_powder[custom_data={skill: 2}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]