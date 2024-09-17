#雙倍血
execute if entity @s[level=..79] run return run function power:use/fail
xp add @s -80
effect give @a[team=survivor] health_boost 180 4 true