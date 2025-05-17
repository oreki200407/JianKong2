function power:puzzle_game/random with storage jk2:data root.monitor.puzzle_game
execute positioned ~1 ~ ~ run function power:puzzle_game/random with storage jk2:data root.monitor.puzzle_game

execute store result storage jk2:data root.monitor.puzzle_game.number int 1 run scoreboard players add #reset puzzle_game 1
execute if score #reset puzzle_game matches ..24 run function power:puzzle_game/insert