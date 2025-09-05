execute unless entity @s[level=100..] run return run function box:use/fail
xp add @s -100 levels

execute as @e[type=item_display, tag=tomb] run function game:death/tomb/revive

tellraw @s ["◎ 你已成功使用電箱-", {"text": "立即救援", "color":"gold"}]
playsound item.trident.hit_ground ambient @s