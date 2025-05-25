function power:puzzle_game/switch/number with storage jk2:data root.monitor.puzzle_game
execute positioned ~1 ~ ~ run function power:puzzle_game/switch/number with storage jk2:data root.monitor.puzzle_game

execute store result storage jk2:data root.monitor.puzzle_game.check int 1 run scoreboard players add #check puzzle_game 1
execute if score #check puzzle_game matches ..26 run function power:puzzle_game/switch/check