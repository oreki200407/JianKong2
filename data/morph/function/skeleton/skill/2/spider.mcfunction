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

data merge entity @s {Tags: ["spider_vehicle", "monster"], Team: "monitor", DeathLootTable: "summon:empty", attributes: [{id: "movement_speed", base: 0.7}]}
ride @a[tag=ride_spider, limit=1, distance=..0.5] mount @s