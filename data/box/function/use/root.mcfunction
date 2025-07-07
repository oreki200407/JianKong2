#使用電箱
execute if items entity @e[type=item, distance=..1.5] contents redstone[custom_data~{type:"box"}] run function box:use/kill_item

execute store success score @s box_operation run clear @s redstone 0
execute as @s[scores={box_operation=1}] run return run function box:use/check