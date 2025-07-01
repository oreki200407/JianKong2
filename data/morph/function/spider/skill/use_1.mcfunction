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

summon cave_spider ~ ~ ~ {Team:"monitor",DeathLootTable:"summon:empty",PersistenceRequired:1b,Health:10f,Tags:["monster"],attributes:[{base:10,id:"max_health"},{base:2,id:"attack_damage"}]}