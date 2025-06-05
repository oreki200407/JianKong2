execute unless entity @e[type=item_display, tag=tomb, distance=..1.5] run return run tellraw @s ["◎ 使用", {"text": "失敗", "color":"gold"},", 周圍沒有", {"text": "倒地的玩家", "color":"gold"}]

execute as @n[type=item_display, tag=tomb, distance=..1.5] run function game:death/tomb/revive
item modify entity @s weapon.mainhand { "function": "set_count", "count": -1, "add": true }