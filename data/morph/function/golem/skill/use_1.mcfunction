###################################################
# 使用鐵巨人的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:golem/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

execute as @a[team=survivor,distance=..5, gamemode=adventure] run damage @s 4 player_attack by @a[tag=golem_morph,limit=1]
execute as @a[team=survivor,distance=..5, gamemode=adventure] run rotate @s ~10 ~10