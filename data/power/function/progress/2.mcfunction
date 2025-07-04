execute if score #power2 power matches 0..7 run setblock ~ ~2 ~ air
execute if score #power2 power matches 0..3 run setblock ~-1 ~2 ~ stone_pressure_plate
execute if score #power2 power matches 4..7 run setblock ~1 ~2 ~ stone_pressure_plate
execute if score #power2 power matches 0..3 run data merge block ~ ~ ~ {powered:0b}
execute if score #power2 power matches 5..7 run data merge block ~ ~ ~ {powered:0b}

scoreboard players add #power2 power 1
execute if score #power2 power matches 8 run scoreboard players set #power2 power 0