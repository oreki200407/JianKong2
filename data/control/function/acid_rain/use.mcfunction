#酸雨
execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 60.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "釋放酸雨", "color":"gold"}]

scoreboard players remove 電力 info_monitor 60
scoreboard players add 釋放酸雨-冷卻 info_monitor 360

setblock ~ ~ ~ air destroy
playsound block.piston.extend

tellraw @a ["◎ 場上將在10秒後",{"text": "釋放酸雨", "color":"gold"},"3分鐘"]

schedule function control:acid_rain/start 10s
schedule function control:acid_rain/end 190s