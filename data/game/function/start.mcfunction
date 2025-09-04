title @a title {"text":"準備時間結束","bold":true,"color":"gold"}
scoreboard players set #mode system 3

effect clear @a[team=survivor] saturation
effect give @a[team=survivor] hunger 3 255 true

execute at @e[type=marker,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ air
item replace entity @a[team=survivor] enderchest.10 with air
clear @a[team=monitor] black_dye
execute as @a[scores={camera_interface=0..}] run function monitor:install/camera_interface/exit
execute as @a[tag=using_camera] run function monitor:observe/player/back/root

execute unless score #switch system matches 1 run scoreboard objectives setdisplay sidebar.team.red info_survivor
execute if score #switch system matches 1 run scoreboard objectives setdisplay sidebar.team.blue info_survivor

scoreboard players reset @a[team=survivor] fracture
scoreboard players reset @a[team=survivor] money
scoreboard players reset 目前監視器 info_monitor
scoreboard players set 倒數 system 3
scoreboard players operation #switch_box system = #switch_box_second system
schedule function game:countdown 1s
schedule function summon:natural 10s
schedule function contain:second 60s
schedule clear game:time

bossbar set jk2:prepare players
bossbar set jk2:time players @a