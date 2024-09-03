###################################################
# 給予骷髏的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:skeleton/skill/
# As     : 變形成骷髏的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s arrow[custom_data={skill: 1}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]