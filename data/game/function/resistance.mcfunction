execute at @a[team=survivor] run tag @e[team=monitor, tag=monster, distance=..30] add exist_monster
execute store result score #monsters system if entity @e[tag=exist_monster]
tag @e[tag=exist_monster] remove exist_monster

#怪物數 > 人數 * 5
scoreboard players reset #resistance system
execute as @a[team=survivor] run scoreboard players add #resistance system 5
execute if score #resistance system < #monsters system run return run effect give @a[team=survivor] resistance 2 2 true

#怪物數 > 人數 * 4
execute as @a[team=survivor] run scoreboard players remove #resistance system 1
execute if score #resistance system < #monsters system run return run effect give @a[team=survivor] resistance 2 1 true

#怪物數 > 人數 * 3
execute as @a[team=survivor] run scoreboard players remove #resistance system 1
execute if score #resistance system < #monsters system run return run effect give @a[team=survivor] resistance 2 0 true