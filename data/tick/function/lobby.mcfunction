execute store result score 遊戲人數 lobby if entity @a[team=!spec]
execute as @a[scores={death=1}] at @s if entity @e[type=marker, tag=lobby, distance=..0.1] run function system:death
execute as @a at @s[y=-120,dy=50] run tp @s @e[type=marker, tag=lobby, limit=1]

execute as @e[type=interaction,tag=team_red] on target run team join survivor
execute as @e[type=interaction,tag=team_spec] on target run team join spec
execute as @e[type=interaction,tag=team_blue] on target run team join monitor
execute as @e[type=interaction,tag=team_leave] on target run team leave @s
execute as @e[type=interaction,tag=team_random] on target at @s run function system:team
execute as @e[type=interaction,tag=setting_easy] on target at @s run function system:difficulty/easy
execute as @e[type=interaction,tag=setting_normal] on target at @s run function system:difficulty/normal
execute as @e[type=interaction,tag=setting_hard] on target at @s run function system:difficulty/hard

execute as @e[type=interaction,tag=money-] on target run function system:money/minus
execute as @e[type=interaction,tag=money+] on target run function system:money/add

execute as @e[type=interaction,tag=power-] on target run function system:power/minus
execute as @e[type=interaction,tag=power+] on target run function system:power/add

execute as @e[type=interaction,tag=edit_enter] on target at @e[tag=control_panel] run function edit:enter

execute as @e[type=interaction,tag=start_button] on target run function game:setting

execute as @e[type=interaction] if data entity @s interaction run data remove entity @s interaction