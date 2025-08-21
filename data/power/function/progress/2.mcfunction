execute unless block ~ ~1 ~ gold_block run return fail

execute if score #power2 power matches 0..7 run setblock ~ ~1 ~ polished_andesite
execute if score #power2 power matches 0..3 run setblock ~-1 ~1 ~ gold_block
execute if score #power2 power matches 4..7 run setblock ~1 ~1 ~ gold_block
execute if score #power2 power matches 4 as @e[type=marker, tag=power2] at @s run function power:manual

execute unless score #power2 power matches 7 run return run scoreboard players add #power2 power 1
scoreboard players set #power2 power 0