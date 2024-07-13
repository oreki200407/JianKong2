particle smoke ^ ^ ^0.5 0.05 0.05 0.05 0 1 force

scoreboard players add @s front_distance 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!shooter, dx = 0, dy = 0, dz = 0, team = survivor] run function gun:smg/success
execute unless block ~ ~ ~ air unless block ~ ~ ~ #wooden_doors[open=true] run scoreboard players set @s front_distance 21
execute if score @s front_distance matches ..20 positioned ^ ^ ^1 run return run function gun:smg/shoot
execute if score @s front_distance matches 21.. run function gun:stop