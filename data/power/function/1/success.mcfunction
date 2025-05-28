execute if entity @e[tag=puzzle_game] run return run function power:fail

scoreboard players add 電力 info 1
setblock ~ ~1 ~ redstone_lamp[lit=true] strict
summon area_effect_cloud ~ ~1 ~ {Duration:41,Tags:["power1_time"],Particle:{type:"block",block_state:"minecraft:air"}}