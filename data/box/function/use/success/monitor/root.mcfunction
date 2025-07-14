execute unless entity @s[level=75..] run return run function box:use/fail
xp add @s -75 levels

execute as @a[tag=using_camera] at @s run function monitor:observe/player/back/root
scoreboard players set 禁止監控 info_monitor 180
tellraw @a[team=monitor] ["◎ 求生者使用了電箱-", {"text": "禁止監控", "color":"gold"},", 無法使用監視器", {"text": "3分鐘", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "禁止監控", "color":"gold"}]
playsound item.trident.hit_ground ambient @s