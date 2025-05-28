execute if score 電力 info matches ..99 run return run tellraw @s ["◎ 電力不足, ", {"text": "無法升級", "color":"gold"}]

scoreboard players remove 電力 info 100
tellraw @a[team=monitor] ["◎ 1號發電機已升級為", {"text": "全自動", "color":"gold"}]
setblock ~ ~ ~ air destroy

tag @e[tag=power1] add power_auto