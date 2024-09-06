###################################################
# 草地展示實體
# 
# Name   : block_display.mcfunction
# Path   : morph:enderman/skill/2/
# As     : 召喚出的展示實體
# At     : 使用技能的玩家 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#NBT
data merge entity @s {block_state: {Name: "grass_block"},  transformation: {left_rotation: [.0f, .0f, .0f, 1.0f], right_rotation: [.0f, .0f, .0f, 1.0f], translation: [.0f, .0f, .0f], scale: [1.01f, 1.01f, 1.01f]}}
team join monitor @s
tag @s add grass_block

#讓展示實體的中心對齊方塊的中心
tp @s ~-.005 ~ ~-.005

#儲存UUID到計分板上
execute store result score #grass_block_display uuid0 store result score @s uuid0 run data get entity @s UUID[0]

#召喚界伏蚌
execute summon shulker run function morph:enderman/skill/2/shulker