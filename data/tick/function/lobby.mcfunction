execute store result score 遊戲人數 lobby if entity @a[team=!spec]
execute as @a[scores={death=1}] at @s if entity @e[type=marker, tag=lobby, distance=..0.1] run function system:death
execute as @a at @s[y=-120,dy=50] run tp @s @e[type=marker, tag=lobby, limit=1]

execute as @e[type=interaction] run function system:lobby_interaction