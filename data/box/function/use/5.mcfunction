#解鎖門
execute if entity @s[level=..49] run return run function box:use/fail
xp add @s -50

tellraw @s ["◎ 你已成功使用電箱-", {"text": "鐵門解鎖", "color":"gold"}]
playsound item.trident.hit_ground ambient @s