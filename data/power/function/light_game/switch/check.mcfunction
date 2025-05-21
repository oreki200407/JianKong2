function power:light_game/switch/number with storage jk2:data root.monitor.light_game
execute positioned ~1 ~ ~ run function power:light_game/switch/number with storage jk2:data root.monitor.light_game

execute store result storage jk2:data root.monitor.light_game.check int 1 run scoreboard players add #check light_game 1
execute if score #check light_game matches ..30 run function power:light_game/switch/check