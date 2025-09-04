###################################################
# 使用伏守者的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:warden/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score @s uuid0 store result score #warden uuid0 run data get entity @s UUID[0]
execute anchored eyes positioned ^ ^ ^1 summon marker run function morph:warden/skill/1/create_sonic_boom