#使用電箱
execute if items entity @e[type=item, distance=..1.5] contents redstone[custom_data~{type:"power"}] run function power:use/kill_item

execute store success score @s power_operation run clear @s redstone 0
execute as @a[scores={power_operation=1}] run return run function power:use/check