particle smoke ^ ^ ^0.5 0.05 0.05 0.05 0 1 force

scoreboard players add @s front_distance 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!shooter, dx = 0, dy = 0, dz = 0, team = survivor] run function gun:pistol/success
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run function gun:stop
execute if score @s front_distance matches ..40 positioned ^ ^ ^1 run return run function gun:pistol/shoot
execute if score @s front_distance matches 41.. run function gun:stop