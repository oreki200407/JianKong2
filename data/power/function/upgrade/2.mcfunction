execute unless score 電力 info_monitor matches 80.. run return run tellraw @s ["◎ 電力不足, ", {"text": "無法升級", "color":"gold"}]

scoreboard players remove 電力 info_monitor 80
tellraw @a[team=monitor] ["◎ ",{"entity":"@n[type=marker,tag=power]","nbt":"data.number"},"號發電機已升級為", {"text": "等級3", "color":"gold"}]

setblock ~ ~ ~ oak_wall_sign[facing=south]{front_text:{messages:["",{"text":"目前等級：3","bold":true},{"text":"發電機已經最高級","bold":true},""]},is_waxed:1b} destroy
scoreboard players add @n[type=marker,tag=power] power_level 1