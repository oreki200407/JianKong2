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

scoreboard players set #phantom morph_skill_1 15
attribute @s gravity modifier add jk2:phantom -0.16 add_value
item modify entity @s armor.chest {function: "set_item", item: "elytra"}