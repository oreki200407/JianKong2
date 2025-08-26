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

#召喚出骷髏馬坐騎
summon skeleton_horse ~ ~ ~ {Team: "monitor", DeathLootTable: "summon:empty", equipment: {saddle: {id: "saddle", components: {enchantments: {binding_curse: 1}, enchantment_glint_override: false, tooltip_display: {hidden_components: ["enchantments"]}}}}, drop_chances: {saddle: 0}, attributes: [{id: "movement_speed", base: 0.7}], Tame: true, Tags: ["skeleton_horse_vehicle", "monster", "for_ride"]}

ride @s mount @e[type=skeleton_horse, tag=for_ride, limit=1, distance=..0.5]
tag @e[type=skeleton_horse, tag=for_ride, limit=1, distance=..0.5] remove for_ride