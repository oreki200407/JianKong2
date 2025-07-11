execute if entity @s[tag=power_damage] run return run function power:fail
scoreboard players operation 電力 info_monitor += @s power_level
execute if predicate {"condition": "minecraft:random_chance","chance": 0.005} run function power:damage