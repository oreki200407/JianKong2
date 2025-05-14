#雙倍血
execute if entity @s[level=..79] run return run function box:use/fail
xp add @s -80
effect give @a[team=survivor] health_boost 180 4 true

tellraw @s ["◎ 你已成功使用電箱-", {"text": "雙倍血量", "color":"gold"}]
playsound item.trident.hit_ground ambient @s