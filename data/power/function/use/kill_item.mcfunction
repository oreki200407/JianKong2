execute at @e[tag=power] run function power:use/reset
execute at @e[tag=power_off] run function power:use/power_off
execute as @e[type=item, distance=..1.5] if items entity @s contents redstone[custom_data~{type:"power"}] run kill