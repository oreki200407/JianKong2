execute if score #power3 power matches 0..2 run setblock ~ ~2 ~ air
execute if score #power3 power matches 0..1 run setblock ~-2 ~2 ~ stone_button[face=floor,facing=north]
execute if score #power3 power matches 0..1 run data merge block ~ ~ ~ {powered:0b}
execute if score #power3 power matches 2 run setblock ~4 ~2 ~ stone_button[face=floor,facing=north]

scoreboard players add #power3 power 1
execute if score #power3 power matches 3 run scoreboard players set #power3 power 0