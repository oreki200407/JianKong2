###################################################
# 在眼前召喚出來的標記
# 
# Name   : marker.mcfunction
# Path   : morph:creeper/skill/2/
# As     : 召喚出的標記
# At     : 使用技能的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

#儲存下標記的座標
execute store result score #mx morph_skill_2 run data get entity @s Pos[0] 1000
execute store result score #my morph_skill_2 run data get entity @s Pos[1] 1000
execute store result score #mz morph_skill_2 run data get entity @s Pos[2] 1000

#計算向量
execute store result storage jk2:data root.morph.creeper.motion.x double 0.001 run scoreboard players operation #mx morph_skill_2 -= #px morph_skill_2
execute store result storage jk2:data root.morph.creeper.motion.y double 0.001 run scoreboard players operation #my morph_skill_2 -= #py morph_skill_2
execute store result storage jk2:data root.morph.creeper.motion.z double 0.001 run scoreboard players operation #mz morph_skill_2 -= #pz morph_skill_2

#如果直接execute summon tnt 會看不到
execute at @s run function morph:creeper/skill/2/tnt with storage jk2:data root.morph.creeper.motion