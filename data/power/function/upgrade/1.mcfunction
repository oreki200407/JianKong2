execute unless score 電力 info_monitor matches 40.. run return run tellraw @s ["◎ 電力不足, ", {"text": "無法升級", "color":"gold"}]

scoreboard players remove 電力 info_monitor 40
tellraw @a[team=monitor] ["◎ ",{"entity":"@n[type=marker,tag=power]","nbt":"data.number"},"號發電機已升級為", {"text": "等級2", "color":"gold"}]

setblock ~ ~ ~ oak_wall_sign[facing=south]{front_text:{messages:[{"text":"升級發電機","bold":true},{"text":"目前等級：2","bold":true},{"text":"花費：80電力","bold":true,"click_event":{"action":"run_command","command":"function power:upgrade/2"}},""]},is_waxed:1b} destroy
scoreboard players add @n[type=marker,tag=power] power_level 1