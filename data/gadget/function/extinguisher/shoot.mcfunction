particle cloud ~ ~ ~ 0 0 0 0 10 force
fill ~ ~ ~ ~ ~ ~ air replace fire
scoreboard players add @s front_distance 1
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run scoreboard players reset @s front_distance
execute if score @s front_distance matches ..5 positioned ^ ^ ^1 run return run function gadget:extinguisher/shoot
execute if score @s front_distance matches 6.. run scoreboard players reset @s front_distance