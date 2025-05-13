function wire_game:random with storage jk2:data root.monitor.wire_game
execute positioned ~1 ~ ~ run function wire_game:random with storage jk2:data root.monitor.wire_game

execute store result storage jk2:data root.monitor.wire_game.number int 1 run scoreboard players add #reset wire_game 1
execute if score #reset wire_game matches ..26 run function wire_game:insert