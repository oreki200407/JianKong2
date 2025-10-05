execute at @a[team=survivor] run tag @e[team=monitor, tag=monster ,distance=..30] add exist_monster
execute store result score #目前怪物 system if entity @e[tag=exist_monster]
tag @e[tag=exist_monster] remove exist_monster

scoreboard players reset #resistance system
execute as @a[team=survivor] run scoreboard players add #resistance system 5
execute if score #resistance system < #目前怪物 system run return run effect give @a[team=survivor] resistance 2 2 true

scoreboard players reset #resistance system
execute as @a[team=survivor] run scoreboard players add #resistance system 4
execute if score #resistance system < #目前怪物 system run return run effect give @a[team=survivor] resistance 2 1 true

scoreboard players reset #resistance system
execute as @a[team=survivor] run scoreboard players add #resistance system 3
execute if score #resistance system < #目前怪物 system run return run effect give @a[team=survivor] resistance 2 0 true