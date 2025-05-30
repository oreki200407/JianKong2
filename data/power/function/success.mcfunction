execute if entity @s[tag=power_damage] run return run function power:fail

scoreboard players operation 電力 info += @s power_level

execute if entity @s[tag=power1,tag=!power_auto] run setblock ~-1 ~-1 ~ redstone_block
execute if entity @s[tag=power1,tag=!power_auto] run summon area_effect_cloud ~-1 ~-1 ~ {Duration:41,Tags:["power1_time"],Particle:{type:"block",block_state:"minecraft:air"}}

execute if predicate {condition: "random_chance", chance: 0.05} run function power:damage