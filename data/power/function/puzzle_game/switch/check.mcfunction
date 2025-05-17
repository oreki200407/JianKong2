function wire_game:switch/number with storage jk2:data root.monitor.wire_game
execute positioned ~1 ~ ~ run function wire_game:switch/number with storage jk2:data root.monitor.wire_game

execute store result storage jk2:data root.monitor.wire_game.check int 1 run scoreboard players add #check wire_game 1
execute if score #check wire_game matches ..26 run function wire_game:switch/check