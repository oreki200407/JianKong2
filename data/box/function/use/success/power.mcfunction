execute unless entity @s[level=50..] run return run function box:use/fail
xp add @s -50 levels

execute as @e[type=marker, tag=power] at @s run function power:damage
tellraw @a[team=monitor] ["◎ 求生者使用了電箱-", {"text": "電力破壞", "color":"gold"},", 三台發電機", {"text": "已被破壞", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "電力破壞", "color":"gold"}]
playsound item.trident.hit_ground ambient @s