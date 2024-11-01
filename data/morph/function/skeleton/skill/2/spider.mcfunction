###################################################
# 蜘蛛坐騎
# 
# Name   : spider.mcfunction
# Path   : morph:skeleton/skill/2/
# As     : 蜘蛛坐騎
# At     : 使用技能的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

attribute @s movement_speed base set 0.6
ride @a[tag=ride_spider, limit=1, distance=...5] mount @s
tag @s add spider_vehicle