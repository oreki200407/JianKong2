###################################################
# 在眼前召喚出來的標記
# 
# Name   : marker.mcfunction
# Path   : morph:player/motion_vector/
# As     : 召喚出的標記
# At     : 使用技能的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

#儲存下標記的座標
execute store result score #mx morph run data get entity @s Pos[0] 1000
execute store result score #my morph run data get entity @s Pos[1] 1000
execute store result score #mz morph run data get entity @s Pos[2] 1000

#計算向量
execute store result storage jk2:data root.morph.motion.x double 0.001 run scoreboard players operation #mx morph -= #px morph
execute store result storage jk2:data root.morph.motion.y double 0.001 run scoreboard players operation #my morph -= #py morph
execute store result storage jk2:data root.morph.motion.z double 0.001 run scoreboard players operation #mz morph -= #pz morph

kill