execute if entity @s[level=..139] run return run function box:use/fail
xp add @s -140

tellraw @s ["◎ 你已成功使用電箱-", {"text": "同歸於盡", "color":"gold"}]
playsound item.trident.hit_ground ambient @s