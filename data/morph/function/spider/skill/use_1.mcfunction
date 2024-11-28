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

summon cave_spider ~ ~ ~ {Team:"monitor",DeathLootTable:"summon:loot",PersistenceRequired:1b,Tags:["monster"]}