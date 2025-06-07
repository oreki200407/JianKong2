#---體溫---
execute if score #room contain_temperature matches 19 run scoreboard players remove @s contain_temperature 1

execute if score #room contain_temperature matches 20 if predicate {"condition": "minecraft:random_chance","chance": 0.5} run tag @s add contain_temperature
scoreboard players add @s[tag=contain_temperature] contain_temperature 1
execute if score #room contain_temperature matches 20 run scoreboard players remove @s[tag=!contain_temperature] contain_temperature 1

execute if score #room contain_temperature matches 21 run scoreboard players add @s contain_temperature 1

tag @s[tag=contain_temperature] remove contain_temperature