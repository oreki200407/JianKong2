#清怪
execute unless entity @s[level=120..] run return run function box:use/fail
xp add @s -120 levels

execute at @a[team=survivor] as @e[team=monitor, distance=..10] run function box:use/success/clear/run

tellraw @s ["◎ 你已成功使用電箱-", {"text": "範圍清怪", "color":"gold"}]
playsound item.trident.hit_ground master @s