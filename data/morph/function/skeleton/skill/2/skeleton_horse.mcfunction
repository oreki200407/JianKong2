###################################################
# 骷髏馬坐騎
# 
# Name   : skeleton_horse.mcfunction
# Path   : morph:skeleton/skill/2/
# As     : 骷髏馬坐騎
# At     : 使用技能的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

data merge entity @s {Team: "monitor", DeathLootTable: "summon:empty", equipment: {saddle: {id: "saddle"}, body: {id: "leather_horse_armor"}}, drop_chances: {saddle: 0, body: 0}, attributes: [{id: "movement_speed", base: 0.7}], Tame: true, Tags: ["skeleton_horse_vehicle", "monster"]}
ride @a[tag=ride_skeleton_horse, limit=1, distance=..0.5] mount @s