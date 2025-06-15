execute unless score 電力 info_monitor matches 30.. run return run tellraw @s ["◎ 電力不足, ", {"text": "無法修復", "color":"gold"}]

scoreboard players remove 電力 info_monitor 30
execute as @n[type=marker,tag=power] at @s run function power:fixed