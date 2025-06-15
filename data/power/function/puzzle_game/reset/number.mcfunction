function power:puzzle_game/reset/number_give with storage jk2:data root.monitor.puzzle_game

execute store result storage jk2:data root.monitor.puzzle_game.number int 1 run scoreboard players add #reset puzzle_game 1
execute if score #reset puzzle_game matches ..26 run function power:puzzle_game/reset/number