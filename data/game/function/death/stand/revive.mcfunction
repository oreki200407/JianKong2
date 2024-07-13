#透過UUID[0]找到當初那名玩家

#頭顱裡儲存的UUID
execute store result score #stand uuid0 run data get entity @s ArmorItems[3].components."minecraft:profile".id[0]

#找到跟頭顱裡UUID相同的玩家
execute at @s as @a[team=survivor] if score @s uuid0 = #stand uuid0 run function game:death/player/revive

#刪除盔甲座
kill