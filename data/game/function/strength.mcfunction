execute at @a[team=survivor] run tag @e[team=monitor, tag=monster ,distance=..30] add exist_monster
execute store result score #目前怪物 system if entity @e[tag=exist_monster]
tag @e[tag=exist_monster] remove exist_monster

scoreboard players reset #strength system
execute as @a[team=survivor] run scoreboard players add #strength system 5
execute if score #strength system < #目前怪物 system run return run effect give @a[team=survivor] strength 2 2 true

scoreboard players reset #strength system
execute as @a[team=survivor] run scoreboard players add #strength system 4
execute if score #strength system < #目前怪物 system run return run effect give @a[team=survivor] strength 2 1 true

scoreboard players reset #strength system
execute as @a[team=survivor] run scoreboard players add #strength system 3
execute if score #strength system < #目前怪物 system run return run effect give @a[team=survivor] strength 2 0 true