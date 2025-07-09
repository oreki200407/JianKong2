execute at @e[tag=box] run function box:use/reset
execute at @e[tag=box_off] run function box:use/box_off

execute if entity @s[team=monitor] run return run clear @s redstone[custom_data~{type:"box"}]

execute store success score @s box_operation run clear @s redstone[item_name={"text":"水管爆裂","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/water/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"電力破壞","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/power
execute store success score @s box_operation run clear @s redstone[item_name={"text":"禁止監控","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/monitor/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"轉移怪物","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/transfer/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"鐵門解鎖","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/door
execute store success score @s box_operation run clear @s redstone[item_name={"text":"雙倍血量","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/health
execute store success score @s box_operation run clear @s redstone[item_name={"text":"立即救援","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/rescue
execute store success score @s box_operation run clear @s redstone[item_name={"text":"範圍清怪","color":"gold"}]
execute as @a[scores={box_operation=1}] run return run function box:use/success/clear
execute store success score @s box_operation run clear @s redstone[item_name={"text":"修復電源","color":"red"}]
execute as @a[scores={box_operation=1}] at @e[tag=box_off] run return run function box:fix/fix_mode/enter
clear @s redstone[custom_data~{box:"none"}]