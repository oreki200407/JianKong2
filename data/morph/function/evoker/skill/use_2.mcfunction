###################################################
# 使用喚魔者的第二個技能
# 
# Name   : use_2.mcfunction
# Path   : morph:evoker/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#召喚惱鬼
playsound entity.evoker.prepare_summon ambient @s
summon vex ~ ~1 ~ {equipment: {mainhand: {id: "wooden_sword", count: 1b}}, drop_chances: {mainhand: 0.0, offhand: 0.0}, Team:"monitor",DeathLootTable: "summon:empty", PersistenceRequired: 1b, Tags:["monster", "vex"], life_ticks: 200}