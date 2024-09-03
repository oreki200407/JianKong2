###################################################
# 技能一
# 
# Name   : root.mcfunction
# Path   : morph:player/use_skill_1/
# As     : 使用技能一的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

function morph:player/use_skill_1/run with entity @s ArmorItems[3].components."minecraft:custom_data"
clear @s *[custom_data~{skill: 1}]
advancement revoke @s only morph:use_skill_1