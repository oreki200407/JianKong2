###################################################
# 計算Motion
# 
# Name   : root.mcfunction
# Path   : morph:player/motion_vector/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#考慮 https://home.gamer.com.tw/artwork.php?sn=4770295

#儲存下目前的位置
execute store result score #px morph run data get entity @s Pos[0] 1000
execute store result score #py morph run data get entity @s Pos[1] 1000
execute store result score #pz morph run data get entity @s Pos[2] 1000

execute anchored eyes positioned ^ ^ ^1 summon marker run function morph:player/motion_vector/marker