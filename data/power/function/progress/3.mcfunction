execute unless block ~ ~1 ~ gold_block run return fail
execute if score #power3 power matches 0..2 run setblock ~ ~1 ~ polished_andesite
execute if score #power3 power matches 0..1 run setblock ~-2 ~1 ~ gold_block

execute unless score #power3 power matches 2 run return run scoreboard players add #power3 power 1
setblock ~4 ~1 ~ gold_block
scoreboard players set #power3 power 0
execute as @e[type=marker, tag=power3] at @s run function power:manual