###################################################
# 身為蜘蛛的tick
# 
# Name   : tick.mcfunction
# Path   : morph:spider/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#還騎著蜘蛛就不減少cd
execute if predicate {condition: "entity_properties", entity: "this", predicate: {vehicle: {type: "spider"}}} store result score @s morph_skill_2 run data get storage jk2:data root.morph.cooldown.skeleton.2

#附近的狼攻擊力提升
effect give @e[type=wolf, distance=..10] strength 1 0 true