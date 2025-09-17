###################################################
# 復活怪物
# 
# Name   : check.mcfunction
# Path   : contain:revive/
# As     : 點復活怪物的監控者
# At     : 復活怪物告示牌
# Loop   : 否
# Author : oreki20
###################################################

#復活怪物
execute unless score 電力 info_monitor matches 30.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "復活生物", "color":"gold"}]

playsound block.bell.use master @a[team=monitor]
scoreboard players remove 電力 info_monitor 30

fill ~1 ~1 ~ ~1 ~2 ~ glass_pane
execute as @n[type=marker,tag=contain_marker, distance=..2] at @s run function contain:revive/success