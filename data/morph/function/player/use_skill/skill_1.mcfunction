###################################################
# 使用技能1 (進度)
# 
# Name   : skill_1.mcfunction
# Path   : morph:player/use_skill/
# As     : 使用技能1的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

data modify storage jk2:data root.morph.use_skill.id set value 1
#找出玩家變形的怪物
data modify storage jk2:data root.morph.use_skill.monster set from entity @s equipment.head.components."minecraft:custom_data".monster

#執行技能
function morph:player/use_skill/run with storage jk2:data root.morph.use_skill