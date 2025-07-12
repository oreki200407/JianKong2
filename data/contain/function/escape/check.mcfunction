###################################################
# 怪物靠近收容箱
# 
# Name   : check.mcfunction
# Path   : contain:escape/
# As     : 被收容的怪物，tag=contain_escape
# At     : 收容箱內的標記，tag=contain_marker
# Loop   : 否
# Author : oreki20
###################################################

execute if entity @s[tag=contain_skeleton] unless entity @e[type=marker, distance=..0.01,tag=contain_skeleton_marker] run return fail
execute if entity @s[tag=contain_creeper] unless entity @e[type=marker, distance=..0.01,tag=contain_creeper_marker] run return fail
execute if entity @s[tag=contain_spider] unless entity @e[type=marker, distance=..0.01,tag=contain_spider_marker] run return fail
execute if entity @s[tag=contain_villager] unless entity @e[type=marker, distance=..0.01,tag=contain_villager_marker] run return fail
execute if entity @s[tag=contain_zombie] unless entity @e[type=marker, distance=..0.01,tag=contain_zombie_marker] run return fail

#把其他生物送出去
tp @e[tag=contain_escape, distance=..1.5] ~-1.5 ~ ~

tp @s ~ ~-999 ~
fill ~-1 ~ ~ ~-1 ~1 ~ glass_pane
playsound block.piston.contract ambient @a[team=monitor]

execute as @n[type=marker,tag=contain_marker, distance=..0.01] at @s run function contain:escape/success

#把玩家送出去
execute as @a[team=monitor, distance=..1] run function contain:escape/player