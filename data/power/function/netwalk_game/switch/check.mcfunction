function power:netwalk_game/switch/number with storage jk2:data root.monitor.netwalk_game
execute positioned ~1 ~ ~ run function power:netwalk_game/switch/number with storage jk2:data root.monitor.netwalk_game

execute if score @s netwalk_game matches 1 run return fail

execute store result storage jk2:data root.monitor.netwalk_game.check int 1 run scoreboard players add #check netwalk_game 1
execute if score #check netwalk_game matches ..26 run function power:netwalk_game/switch/check