execute unless entity @s[level=100..] run return run function box:use/fail
xp add @s -100 levels

execute at @e[type=armor_stand, tag=box] as @e[type=!player, team=monitor, distance=..15] run function box:use/success/transfer/radius

tellraw @a[team=monitor] ["◎ 求生者使用了電箱-", {"text": "轉移怪物", "color":"gold"},", 有怪物進入了", {"text": "監控室", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "轉移怪物", "color":"gold"}]
playsound item.trident.hit_ground ambient @s