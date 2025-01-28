###################################################
# 復活倒地的玩家並刪除自己
# 
# Name   : revive.mcfunction
# Path   : game/death/stand
# As     : 代表倒地玩家的盔甲座
# At     : 蹲在盔甲座附近的玩家
# Loop   : 是
# Author : Alex_Cai
###################################################

#透過UUID[0]找到當初那名玩家

#頭顱裡儲存的UUID
execute store result score #stand uuid0 run data get entity @s item.components."minecraft:profile".id[0]

#找到跟頭顱裡UUID相同的玩家
execute at @s as @a[team=survivor] if score @s uuid0 = #stand uuid0 run function game:death/survivor/save/saved

#刪除盔甲座
kill