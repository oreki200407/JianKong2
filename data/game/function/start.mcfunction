title @a title {"text":"準備時間結束","bold":true,"color":"gold"}
scoreboard players set #mode system 3

execute at @e[type=marker,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ air
clear @a[team=monitor] black_dye
item replace entity @a[team=survivor] enderchest.10 with air

execute unless score #switch system matches 1 run scoreboard objectives setdisplay sidebar.team.red
execute if score #switch system matches 1 run scoreboard objectives setdisplay sidebar.team.blue

scoreboard players reset 目前監視器 info_monitor
scoreboard players reset #time system
scoreboard players set 倒數 system 3
schedule function game:countdown 1s
schedule function summon:natural 10s
schedule clear game:time

bossbar set jk2:prepare players
bossbar set jk2:time players @a