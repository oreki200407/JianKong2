#酸雨
execute unless score 電力 info_monitor matches 70.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "釋放酸雨", "color":"gold"}]

scoreboard players remove 電力 info_monitor 70
scoreboard players add 釋放酸雨-冷卻 info_monitor 300
scoreboard players add 酸雨 info_survivor 180

playsound block.piston.extend

tellraw @a ["◎ 場上將在10秒後",{"text": "釋放酸雨", "color":"gold"}]

schedule function control:acid_rain/start 10s