#清怪
execute if entity @s[level=..139] run return run function box:use/fail
xp add @s -140
execute at @a[team=survivor] run kill @e[team=monitor,distance=..10]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "範圍清怪", "color":"gold"}]
playsound item.trident.hit_ground ambient @s