function power:puzzle_game/reset/loot with entity @s data

kill @s
execute as @e[sort=random,tag=puzzle,type=marker,limit=1] run return run function power:puzzle_game/reset/insert

#給編號
execute store result storage jk2:data root.monitor.puzzle_game.number int 1 run scoreboard players set #reset puzzle_game 0
function power:puzzle_game/reset/number