particle smoke ~ ~ ~ 1 1 1 0.1 15 force

scoreboard players add @s front_distance 1
execute as @e[distance=..2,tag=!shooter, type=#gun:entity ,team=monitor] run function gun:shotgun/success
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run function gun:stop
execute if score @s front_distance matches ..9 positioned ^ ^ ^1 run return run function gun:shotgun/shoot
execute if score @s front_distance matches 10.. run function gun:stop