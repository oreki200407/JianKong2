title @a title {"text":"準備時間","bold":true,"color":"gold"}

scoreboard players reset #time system
schedule function game:time 1s
schedule function game:start 3601t

execute at @e[type=armor_stand,tag=box_point] run fill ~ ~ ~ ~ ~1 ~ air

function game:teleport
execute at @e[type=marker,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ ender_chest
execute at @e[type=marker,tag=spawn_survivor,limit=1] run spawnpoint @a[team=survivor]
execute at @e[type=marker,tag=spawn_monitor,limit=1] run spawnpoint @a[team=monitor]

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

bossbar set jk2:time players
bossbar set jk2:prepare players @a