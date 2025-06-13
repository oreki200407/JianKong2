execute unless score 電力 info_monitor matches 50.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "鐵門上鎖", "color":"gold"}]

scoreboard players remove 電力 info_monitor 50
scoreboard players add 鐵門上鎖-冷卻 info_monitor 180

setblock ~ ~ ~ air destroy
playsound block.piston.extend

execute as @e[tag=door,type=marker] at @s run function control:lock_door/lock with entity @s data
tellraw @a ["◎ 所有門已被", {"text": "上鎖", "color":"gold"}]