#---傳送---
tp @a[team=survivor] @e[type=marker,tag=spawn_survivor,limit=1]
tp @a[team=monitor] @e[type=marker,tag=spawn_monitor,limit=1]
tp @a[team=spec] @e[type=marker,tag=spawn_survivor,limit=1]

execute as @a[team=survivor] at @e[type=marker,tag=spawn_survivor,limit=1] run spawnpoint @s ~ ~ ~
execute as @a[team=monitor] at @e[type=marker,tag=spawn_monitor,limit=1] run spawnpoint @s ~ ~ ~

scoreboard players set 倒數 system 3
schedule function game:countdown 1s

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]