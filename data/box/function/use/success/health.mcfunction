#雙倍血
execute if entity @s[level=..74] run return run function box:use/fail
xp add @s -75

effect give @a[team=survivor] health_boost 180 4

tellraw @s ["◎ 你已成功使用電箱-", {"text": "雙倍血量", "color":"gold"}]
playsound item.trident.hit_ground ambient @s