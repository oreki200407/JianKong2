tag @e[tag=box] add box_off
execute at @e[tag=box_off] run function box:use/box_off
tellraw @a ["◎ 電源已被", {"text": "關閉", "color":"gold"}, ", 求生者無法使用",{"text": "電箱", "color":"gold"}]