title @a title {"text":"準備時間結束","bold":true,"color":"gold"}

execute at @e[type=armor_stand,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ air

scoreboard players reset #time system
scoreboard players set #mode system 3
scoreboard players set 倒數 system 3
schedule function game:countdown 1s
schedule clear game:time

bossbar set jk2:prepare players
bossbar set jk2:time players @a