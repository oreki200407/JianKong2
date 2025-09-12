###################################################
# 使用夜魅的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:phantom/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

tp @s ~ ~0.5 ~
effect give @s levitation 1 12 true
item modify entity @s armor.chest {function: "set_item", item: "elytra"}