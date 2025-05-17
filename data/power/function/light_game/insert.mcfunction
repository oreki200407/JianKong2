function power:light_game/random with storage jk2:data root.monitor.light_game
execute positioned ~1 ~ ~ run function power:light_game/random with storage jk2:data root.monitor.light_game

execute store result storage jk2:data root.monitor.light_game.number int 1 run scoreboard players add #reset light_game 1
execute if score #reset light_game matches ..24 run function power:light_game/insert