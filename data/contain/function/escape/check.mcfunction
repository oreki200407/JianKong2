execute if entity @s[tag=contain_skeleton] unless entity @e[type=marker, distance=..0.3,tag=contain_skeleton_marker] run return fail
execute if entity @s[tag=contain_creeper] unless entity @e[type=marker, distance=..0.3,tag=contain_creeper_marker] run return fail
execute if entity @s[tag=contain_spider] unless entity @e[type=marker, distance=..0.3,tag=contain_spider_marker] run return fail
execute if entity @s[tag=contain_villager] unless entity @e[type=marker, distance=..0.3,tag=contain_villager_marker] run return fail
execute if entity @s[tag=contain_zombie] unless entity @e[type=marker, distance=..0.3,tag=contain_zombie_marker] run return fail

tellraw @a[team=monitor] ["◎ 成功收容",{selector:"@n[type=marker,tag=contain_marker, distance=..0.3]"}]
tp @s ~ ~-999 ~
fill ~-1 ~ ~ ~-1 ~1 ~ glass_pane
execute as @n[type=marker,tag=contain_marker, distance=..0.3] at @s run function contain:escape/success
playsound block.piston.contract ambient @a[team=monitor]