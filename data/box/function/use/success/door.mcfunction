#解鎖門
execute unless entity @s[level=60..] run return run function box:use/fail
xp add @s -60 levels

execute as @e[type=marker,tag=door] at @s run function gadget:unlock/door with entity @s data

tellraw @s ["◎ 你已成功使用電箱-", {"text": "鐵門解鎖", "color":"gold"}]
playsound item.trident.hit_ground ambient @s