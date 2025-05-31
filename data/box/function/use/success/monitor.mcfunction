execute if entity @s[level=..99] run return run function box:use/fail
xp add @s -100

#ing

tellraw @s ["◎ 你已成功使用電箱-", {"text": "禁止監控", "color":"gold"}]
playsound item.trident.hit_ground ambient @s