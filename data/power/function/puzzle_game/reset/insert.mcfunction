function power:puzzle_game/reset/loot with entity @s data

kill @s
execute as @e[sort=random,tag=puzzle,type=marker] run function power:puzzle_game/reset/insert