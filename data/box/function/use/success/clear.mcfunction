#清怪
execute if entity @s[level=..124] run return run function box:use/fail
xp add @s -125

execute at @a[team=survivor] as @e[team=monitor,distance=..10] run data merge entity @s {DeathLootTable:"summon:empty",Tags:["box_clear"]}
execute at @a[team=survivor] run kill @a[distance=..10,tag=morph,team=monitor]
kill @e[tag=box_clear]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "範圍清怪", "color":"gold"}]
playsound item.trident.hit_ground ambient @s