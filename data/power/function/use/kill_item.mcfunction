function power:use/reset
execute as @e[type=item, distance=..1.5] if items entity @s contents redstone[custom_data~{type:"power"}] run kill