execute at @e[tag=box, type=armor_stand] run function box:use/reset
execute at @e[tag=box_off, type=armor_stand] run function box:use/box_off
execute as @e[type=item, distance=..1.5] if items entity @s contents redstone[custom_data~{type:"box"}] run kill