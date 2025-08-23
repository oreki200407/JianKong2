gamemode adventure @s
title @s actionbar ""
tag @s remove fall_down
scoreboard players reset @s death_time

kill @e[type=text_display,tag=tomb_text,predicate=!game:riding]

#有骨折的繼續骨折
execute if entity @s[tag=fractured] run attribute @s movement_speed modifier add jk2:fracture -0.45 add_multiplied_total