title @a title {"text":"準備時間","bold":true,"color":"gold"}

scoreboard players reset #time system
schedule function game:time 1s
schedule function game:start 3601t

execute at @e[type=armor_stand,tag=power_point] run fill ~ ~ ~ ~ ~1 ~ air

function game:teleport
execute at @e[type=marker,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ ender_chest
execute as @a[team=survivor] at @e[type=marker,tag=spawn_survivor,limit=1] run spawnpoint @s ~ ~ ~
execute as @a[team=monitor] at @e[type=marker,tag=spawn_monitor,limit=1] run spawnpoint @s ~ ~ ~

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

bossbar set jk2:time players
bossbar set jk2:prepare players @a