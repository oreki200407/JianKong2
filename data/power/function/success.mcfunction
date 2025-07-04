setblock ~ ~1 ~1 redstone_wire[east=none,north=side,power=0,south=side,west=none]

execute if entity @s[tag=power_damage] run return run function power:fail

scoreboard players operation 電力 info_monitor += @s power_level

execute if entity @s[tag=power1,tag=!power_auto] run function power:progress/1

execute if predicate game:chance/3 run function power:damage