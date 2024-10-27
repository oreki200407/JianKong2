tag @e[tag=power] add power_off
execute at @e[tag=power_off] run function power:use/power_off
tellraw @a ["◎ 電源已被", {"text": "關閉", "color":"gold"}, ", 無法使用電箱"]