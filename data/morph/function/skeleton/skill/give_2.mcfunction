###################################################
# 給予骷髏的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:skeleton/skill/
# As     : 變形成骷髏的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s spider_eye[custom_data={skill: 2}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]