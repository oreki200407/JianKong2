execute if score #power1 power matches 0 run setblock ~1 ~ ~ polished_andesite
execute if score #power1 power matches 0 run setblock ~1 ~-2 ~ gold_block

execute unless score #power1 power matches 1 run return run scoreboard players add #power1 power 1

setblock ~1 ~-2 ~ polished_andesite
setblock ~1 ~ ~ gold_block
execute as @e[tag=power1] at @s run function power:manual
scoreboard players set #power1 power 0