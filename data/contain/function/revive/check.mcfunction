#復活怪物
execute unless score 電力 info_monitor matches 40.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "復活生物", "color":"gold"}]

playsound block.bell.use ambient @a[team=monitor]
scoreboard players remove 電力 info_monitor 40

fill ~1 ~1 ~ ~1 ~2 ~ glass_pane
execute as @n[type=marker,tag=contain_marker] at @s run function contain:revive/success