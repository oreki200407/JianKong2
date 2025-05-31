execute if entity @s[level=..74] run return run function box:use/fail
xp add @s -75

execute as @e[tag=power] at @s run function power:damage
tellraw @a[team=monitor] ["◎ 求生者破壞了三台", {"text": "發電機", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "電力破壞", "color":"gold"}]
playsound item.trident.hit_ground ambient @s