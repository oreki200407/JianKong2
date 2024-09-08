#使用電箱
execute store success score @s power_operation run clear @s redstone 0
execute as @a[scores={power_operation=1}] run return run function power:use/check