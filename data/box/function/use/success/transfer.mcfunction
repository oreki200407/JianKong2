execute if entity @s[level=..124] run return run function box:use/fail
xp add @s -125 levels

execute at @e[tag=box] run tag @e[team=monitor,type=!player,distance=..15] add box_transfer
execute as @e[tag=box_transfer] run data merge entity @s {DeathLootTable:"summon:empty",Team:"survivor"}
tp @e[tag=box_transfer] @e[type=marker,tag=lobby,limit=1]

tellraw @a[team=monitor] ["◎ 求生者使用了電箱-", {"text": "轉移怪物", "color":"gold"},", 有怪物進入了", {"text": "監控室", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "轉移怪物", "color":"gold"}]
playsound item.trident.hit_ground ambient @s