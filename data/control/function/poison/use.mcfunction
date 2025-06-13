#毒氣
execute unless score 電力 info_monitor matches 70.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "釋放毒氣", "color":"gold"}]

scoreboard players remove 電力 info_monitor 70
scoreboard players add 釋放毒氣-冷卻 info_monitor 300

playsound block.piston.extend

#抽毒氣
tag @e[tag=poison_point,sort=random,limit=1] add poison_choose

tellraw @a ["◎ ", {selector:"@e[tag=poison_choose,limit=1]"},"將在10秒後",{"text": "釋放毒氣", "color":"gold"},"3分鐘"]
schedule function control:poison/start 10s