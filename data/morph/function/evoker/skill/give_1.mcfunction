###################################################
# 給予喚魔者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:evoker/skill/
# As     : 變形成喚魔者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s redstone[custom_data={skill: 1}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]