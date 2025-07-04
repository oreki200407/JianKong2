#---玩家被關---
tellraw @a[team=monitor] ["◎ ",{selector:"@s",color:gold},"被關進收容櫃內, 電力",{text:"減少30",color:gold}]
scoreboard players remove 電力 info_monitor 30
execute if score 電力 info_monitor matches ..0 run scoreboard players set 電力 info_monitor 0
tp @s @e[type=marker,tag=lobby,limit=1]