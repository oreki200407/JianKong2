###################################################
# 使用殭屍的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:zombie/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

playsound item.trident.hit ambient @s

#下一個打到的玩家額外傷害
tag @s add zombie_skill_1