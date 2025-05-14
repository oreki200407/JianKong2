execute at @e[tag=box] run function box:use/reset
execute at @e[tag=box_off] run function box:use/box_off

execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["1"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/1
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["2"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/2
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["3"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/3
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["4"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/4
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["5"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/5
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["6"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/6
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["7"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/7
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["8"]}]
execute as @a[scores={box_operation=1}] run return run function box:use/8
execute store success score @s box_operation run clear @s redstone[custom_model_data={strings:["11"]}]
execute as @a[scores={box_operation=1}] run return run function box:fix/fix_mode/enter
clear @s redstone[custom_model_data={strings:["9"]}]
clear @s redstone[custom_model_data={strings:["10"]}]