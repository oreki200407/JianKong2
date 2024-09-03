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

tag @s add ride_spider
#召喚出蜘蛛坐騎
execute summon spider run function morph:skeleton/skill/2/spider
tag @s remove ride_spider