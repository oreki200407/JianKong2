execute if entity @s[level=..124] run return run function box:use/fail
xp add @s -125

#ing

tellraw @s ["◎ 你已成功使用電箱-", {"text": "轉移怪物", "color":"gold"}]
playsound item.trident.hit_ground ambient @s