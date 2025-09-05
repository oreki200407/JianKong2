#雙倍血
execute unless entity @s[level=80..] run return run function box:use/fail
xp add @s -80 levels

effect give @a[team=survivor] health_boost 120 4
effect give @a[team=survivor] regeneration 1 255

tellraw @s ["◎ 你已成功使用電箱-", {"text": "雙倍血量", "color":"gold"}]
playsound item.trident.hit_ground ambient @s