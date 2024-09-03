###################################################
# 使用骷髏的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:skeleton/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#考慮 https://home.gamer.com.tw/artwork.php?sn=4770295

execute store result score #px morph_skill_1 run data get entity @s Pos[0] 1000
execute store result score #py morph_skill_1 run data get entity @s Pos[1] 1000
execute store result score #pz morph_skill_1 run data get entity @s Pos[2] 1000

execute anchored eyes positioned ^ ^ ^1 summon marker run function morph:skeleton/skill/1/marker