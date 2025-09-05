execute as @a[scores={leave=1..}] run function game:join/rejoin

execute store result score 遊戲人數 lobby if entity @a[team=!spec]
execute store result score 紅隊人數 lobby if entity @a[team=survivor]
execute store result score 藍隊人數 lobby if entity @a[team=monitor]
execute as @a[tag=lobby_death,scores={health=20..}] at @s if entity @e[type=marker, tag=lobby_spawn, limit=1, distance=..0.1] run function system:death

execute as @e[type=interaction,tag=lobby_setting] if data entity @s interaction run function system:lobby_interaction

execute as @e[tag=check_display] run function system:check/display_kill

execute if entity @a[tag=tutorial] run function tutorial:tick