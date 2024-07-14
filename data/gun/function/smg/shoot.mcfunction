particle mycelium ^ ^ ^.5 .05 .05 .05 0 1 force

scoreboard players add @s front_distance 1
execute positioned ~-.5 ~-.5 ~-.5 if entity @n[tag=!shooter, type=#gun:entity, dx=0, dy=0, dz=0 ,team=monitor] run function gun:smg/success
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run function gun:stop
execute if score @s front_distance matches ..20 positioned ^ ^ ^1 run return run function gun:smg/shoot
execute if score @s front_distance matches 21.. run function gun:stop