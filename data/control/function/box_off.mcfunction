execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 50.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "關閉電箱", "color":"gold"}]

scoreboard players remove 電力 info_monitor 50
scoreboard players add 關閉電箱-冷卻 info_monitor 180

setblock ~ ~ ~ air destroy
playsound block.piston.extend

tag @e[tag=box] add box_off
execute at @e[tag=box_off] run function box:use/box_off
tellraw @a ["◎ 電箱已被", {"text": "關閉", "color":"gold"}, ", 求生者無法使用",{"text": "電箱", "color":"gold"}]