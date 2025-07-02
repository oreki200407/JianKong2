###################################################
# 使用蜘蛛的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:spider/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

playsound entity.chicken.egg ambient @s
summon cave_spider ~ ~ ~ {Team: "monitor", DeathLootTable: "summon:empty", PersistenceRequired: true, Health: 10.0F, Tags: ["monster"], attributes: [{id: "max_health", base: 10.0}, {id: "attack_damage", base: 2.0}]}