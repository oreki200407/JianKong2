###################################################
# 使用骷髏的第二個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:skeleton/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add ride_skeleton_horse
#召喚出骷髏馬坐騎
execute summon skeleton_horse run function morph:skeleton/skill/2/skeleton_horse
tag @s remove ride_skeleton_horse