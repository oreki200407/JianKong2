execute if entity @s[level=..79] run return run function box:use/fail
xp add @s -80

tellraw @s ["◎ 你已成功使用電箱-", {"text": "電力破壞", "color":"gold"}]
playsound item.trident.hit_ground ambient @s