function power:netwalk_game/reset/number/give with storage jk2:data root.monitor.netwalk_game
execute positioned ~1 ~ ~ run function power:netwalk_game/reset/number/give with storage jk2:data root.monitor.netwalk_game

execute store result storage jk2:data root.monitor.netwalk_game.number int 1 run scoreboard players add #reset netwalk_game 1
execute if score #reset netwalk_game matches ..26 run function power:netwalk_game/reset/number/root