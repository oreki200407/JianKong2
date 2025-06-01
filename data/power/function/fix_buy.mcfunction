scoreboard players remove 電力 info_monitor 30
setblock ~ ~ ~ air
function power:fixed

execute if entity @s[tag=puzzle_game] run return run tag @s remove puzzle_game
execute if entity @s[tag=netwalk_game] run return run tag @s remove netwalk_game
tag @s remove light_game