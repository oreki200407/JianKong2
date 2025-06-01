execute if entity @s[level=..99] run return run function box:use/fail
xp add @s -100

scoreboard players set 禁止監控 info_monitor 0
tellraw @a[team=monitor] ["◎ 求生者使用了電箱-", {"text": "禁止監控", "color":"gold"},", 無法使用監視器", {"text": "3分鐘", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "禁止監控", "color":"gold"}]
playsound item.trident.hit_ground ambient @s