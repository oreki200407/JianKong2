data remove storage jk2:data root.monitor.light_game.chest2
execute store result score #random light_game run random value 2..26
execute if score #random light_game matches 17.. run data modify storage jk2:data root.monitor.light_game.chest2 set value 1

execute if score #random light_game matches 12..16 run scoreboard players add #random light_game 8
execute if score #random light_game matches 7..11 run scoreboard players add #random light_game 4

execute if data storage jk2:data root.monitor.light_game.chest2 if score #random light_game matches 22..26 run scoreboard players remove #random light_game 11
execute if data storage jk2:data root.monitor.light_game.chest2 if score #random light_game matches 17..21 run scoreboard players remove #random light_game 15

execute store result storage jk2:data root.monitor.light_game.switch int 1 run scoreboard players get #random light_game
function power:light_game/switch/around

function power:light_game/reset/switch

scoreboard players add #random_count light_game 1
execute if score #random_count light_game matches ..10 run function power:light_game/reset/random