execute if score 電力 info_monitor matches ..25 run return run tellraw @s ["◎ 電力不足, ", {"text": "無法升級", "color":"gold"}]

scoreboard players remove 電力 info_monitor 25
tellraw @a[team=monitor] ["◎ ",{"entity":"@n[type=marker,tag=power]","nbt":"data.number"},"號發電機已升級為", {"text": "等級2", "color":"gold"}]
setblock ~ ~ ~ oak_sign destroy

scoreboard players add @n[type=marker,tag=power] power_level 1