execute at @e[tag=power] run function power:use/reset
execute at @e[tag=power_off] run function power:use/power_off

execute store success score @s power_operation run clear @s redstone[custom_model_data=1]
execute as @a[scores={power_operation=1}] run return run function power:use/1
execute store success score @s power_operation run clear @s redstone[custom_model_data=2]
execute as @a[scores={power_operation=1}] run return run function power:use/2
execute store success score @s power_operation run clear @s redstone[custom_model_data=3]
execute as @a[scores={power_operation=1}] run return run function power:use/3
execute store success score @s power_operation run clear @s redstone[custom_model_data=4]
execute as @a[scores={power_operation=1}] run return run function power:use/4
execute store success score @s power_operation run clear @s redstone[custom_model_data=5]
execute as @a[scores={power_operation=1}] run return run function power:use/5
execute store success score @s power_operation run clear @s redstone[custom_model_data=6]
execute as @a[scores={power_operation=1}] run return run function power:use/6
execute store success score @s power_operation run clear @s redstone[custom_model_data=7]
execute as @a[scores={power_operation=1}] run return run function power:use/7
execute store success score @s power_operation run clear @s redstone[custom_model_data=8]
execute as @a[scores={power_operation=1}] run return run function power:use/8
execute store success score @s power_operation run clear @s redstone[custom_model_data=11]
execute as @a[scores={power_operation=1}] run return run function power:fix/fix_mode/enter
clear @s redstone[custom_model_data=9]
clear @s redstone[custom_model_data=10]