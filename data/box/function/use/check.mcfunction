execute if entity @s[team=monitor] run clear @s redstone[custom_data~{type:"box"}]

execute store success score @s box_operation run clear @s redstone[item_name={"text":"水管爆裂","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/water/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"電力破壞","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/power
execute store success score @s box_operation run clear @s redstone[item_name={"text":"禁止監控","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/monitor/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"轉移怪物","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/transfer/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"鐵門解鎖","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/door
execute store success score @s box_operation run clear @s redstone[item_name={"text":"雙倍血量","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/health
execute store success score @s box_operation run clear @s redstone[item_name={"text":"立即救援","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/rescue
execute store success score @s box_operation run clear @s redstone[item_name={"text":"範圍清怪","color":"gold"}]
execute as @s[scores={box_operation=1}] run function box:use/success/clear/root
execute store success score @s box_operation run clear @s redstone[item_name={"text":"修復電源","color":"red"}]
execute as @s[scores={box_operation=1}] at @e[tag=box_off, type=armor_stand] run function box:fix/fix_mode/enter
clear @s redstone[custom_data~{box:"none"}]

execute at @e[tag=box, type=armor_stand] run function box:use/return
execute at @e[tag=one_box, type=text_display] positioned ~ ~-2.2 ~ run function box:use/return
execute at @e[tag=box_off, type=armor_stand] run function box:use/box_off