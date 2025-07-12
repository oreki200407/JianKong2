execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 80.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "禁止奔跑", "color":"gold"}]

scoreboard players remove 電力 info_monitor 80
scoreboard players add 禁止奔跑-冷卻 info_monitor 300

setblock ~ ~ ~ air destroy
playsound block.piston.extend

tellraw @a ["◎ 10秒後將",{"text": "禁止奔跑", "color":"gold"},"3分鐘"]
schedule function control:sprint/start 10s
schedule function control:sprint/end 190s