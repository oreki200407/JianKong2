execute on target run playsound block.end_portal_frame.fill ambient @s

execute if entity @s[tag=contain_add_temperature] run function contain:control/add_temperature
execute if entity @s[tag=contain_subtract_temperature] run function contain:control/subtract_temperature
execute if entity @s[tag=contain_feed] run scoreboard players add @e[tag=contain] contain_food 1
execute if entity @s[tag=contain_check] on target run function contain:control/check

data remove entity @s interaction