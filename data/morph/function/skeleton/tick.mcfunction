###################################################
# 身為骷髏的tick
# 
# Name   : tick.mcfunction
# Path   : morph:skeleton/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#還騎著骷髏馬就不減少cd
execute if predicate {condition: "entity_properties", entity: "this", predicate: {vehicle: {type: "skeleton_horse"}}} store result score @s morph_skill_2 run data get storage jk2:data root.morph.cooldown.skeleton.2

#附近的狼攻擊力提升
effect give @e[type=wolf, tag=wolf, distance=..10] strength 1 0 true

#射箭就進入冷卻
execute if entity @s[advancements={morph:shot_crossbow=true}] run function morph:player/use_skill/skill_1