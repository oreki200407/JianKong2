###################################################
# 在眼前召喚出來的標記
# 
# Name   : marker.mcfunction
# Path   : morph:skeleton/skill/1/
# As     : 召喚出的標記
# At     : 使用技能的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score #mx morph_skill_1 run data get entity @s Pos[0] 1000
execute store result score #my morph_skill_1 run data get entity @s Pos[1] 1000
execute store result score #mz morph_skill_1 run data get entity @s Pos[2] 1000

execute store result storage jk2:data root.morph.skeleton.motion.x double 0.001 run scoreboard players operation #mx morph_skill_1 -= #px morph_skill_1
execute store result storage jk2:data root.morph.skeleton.motion.y double 0.001 run scoreboard players operation #my morph_skill_1 -= #py morph_skill_1
execute store result storage jk2:data root.morph.skeleton.motion.z double 0.001 run scoreboard players operation #mz morph_skill_1 -= #pz morph_skill_1

function morph:skeleton/skill/1/arrow with storage jk2:data root.morph.skeleton.motion