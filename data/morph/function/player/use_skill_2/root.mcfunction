###################################################
# 技能二
# 
# Name   : root.mcfunction
# Path   : morph:player/use_skill_2/
# As     : 使用技能二的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

function morph:player/use_skill_2/run with entity @s ArmorItems[3].components."minecraft:custom_data"
clear @s *[custom_data~{skill: 2}]
advancement revoke @s only morph:use_skill_2