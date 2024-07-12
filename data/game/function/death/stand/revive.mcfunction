#透過UUID找到當初那名玩家

execute store result score #stand uuid0 run data get entity @s ArmorItems[3].components."minecraft:profile".id[0]
execute store result score #stand uuid1 run data get entity @s ArmorItems[3].components."minecraft:profile".id[1]
execute store result score #stand uuid2 run data get entity @s ArmorItems[3].components."minecraft:profile".id[2]
execute store result score #stand uuid3 run data get entity @s ArmorItems[3].components."minecraft:profile".id[3]

execute at @s as @a if score @s uuid0 = #stand uuid0 if score @s uuid1 = #stand uuid1 if score @s uuid2 = #stand uuid2 if score @s uuid3 = #stand uuid3 run function game:death/player/revive

kill