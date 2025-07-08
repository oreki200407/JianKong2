gamemode adventure @s
title @s actionbar ""
effect give @s resistance 10 4
tag @s remove fall_down
scoreboard players reset @s death_time

#有骨折的繼續骨折
execute if entity @s[tag=fractured] run attribute @s movement_speed modifier add jk2:fracture -0.3 add_multiplied_total