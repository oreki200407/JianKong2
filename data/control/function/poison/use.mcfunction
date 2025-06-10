#毒气
execute unless score 電力 info_monitor matches 70.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "釋放毒氣", "color":"gold"}]

scoreboard players remove 電力 info_monitor 70
scoreboard players add 釋放毒氣-冷卻 info_monitor 300
scoreboard players add 毒氣 info_survivor 180

playsound block.piston.extend

#抽毒氣
tag @e[tag=poison_point,sort=random,limit=1] add poison

tellraw @a ["◎ ", {selector:"@e[tag=poinson,limit=1]"},"將在10秒後",{"text": "釋放毒氣", "color":"gold"}]