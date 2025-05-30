#升級全自動
execute if score 電力 info matches ..99 run return run tellraw @s ["◎ 電力不足, ", {"text": "無法升級", "color":"gold"}]

scoreboard players remove 電力 info 100
tellraw @a[team=monitor] ["◎ ",{"entity":"@n[type=marker,tag=power]","nbt":"data.number"},"號發電機已升級為", {"text": "全自動", "color":"gold"}]
setblock ~ ~ ~ air destroy
fill ~-2 ~-2 ~ ~-2 ~-1 ~ shroomlight
tag @n[type=marker,tag=power] add power_auto

execute as @n[type=marker,tag=power] if entity @s[tag=power1] run kill @e[type=area_effect_cloud,tag=power1_time]