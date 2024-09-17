#清怪
execute if entity @s[level=..139] run return run function power:use/fail
xp add @s -140
execute at @a[team=survivor] run kill @e[team=monitor,distance=..10]