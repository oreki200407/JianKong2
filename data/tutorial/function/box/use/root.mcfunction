#使用電箱
execute if items entity @e[type=item, distance=..1.5] contents redstone[custom_data~{type:"tutorial_box"}] run function tutorial:box/use/kill_item

execute store success score @s box_operation run clear @s redstone 0
execute as @s[scores={box_operation=0}] run return fail

execute at @e[type=marker,tag=tutorial_box] run function box:use/reset
clear @s redstone[custom_data~{box:"none"}]
execute store success score @s box_operation run clear @s redstone[item_name={"text":"修復電源","color":"red"}]
execute as @s[scores={box_operation=1}] at @e[type=marker,tag=tutorial_box] run function tutorial:box/fix/fix_mode/enter