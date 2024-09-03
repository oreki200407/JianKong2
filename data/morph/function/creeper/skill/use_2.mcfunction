###################################################
# 使用苦力怕的第二個技能
# 
# Name   : use_2.mcfunction
# Path   : morph:creeper/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#考慮 https://home.gamer.com.tw/artwork.php?sn=4770295

#儲存下目前的位置
execute store result score #px morph_skill_2 run data get entity @s Pos[0] 1000
execute store result score #py morph_skill_2 run data get entity @s Pos[1] 1000
execute store result score #pz morph_skill_2 run data get entity @s Pos[2] 1000

#如果直接execute summon tnt 會看不到
execute anchored eyes positioned ^ ^ ^1 summon marker run function morph:creeper/skill/2/marker