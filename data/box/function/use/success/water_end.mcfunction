scoreboard players reset 水管爆裂 info_monitor
execute at @e[type=marker,tag=lobby,limit=1] run fill ~2 ~ ~1 ~-2 ~ ~-1 air
tellraw @a[team=monitor] ["◎ 水管已", {"text": "恢復", "color":"gold"}]