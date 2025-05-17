playsound entity.puffer_fish.blow_up ambient @s

data remove storage jk2:data root.monitor.puzzle_game.chest2
data remove storage jk2:data root.monitor.puzzle_game.switch

execute store result storage jk2:data root.monitor.puzzle_game.check int 1 run scoreboard players set #check puzzle_game 0

function power:puzzle_game/switch/check

execute if data storage jk2:data root.monitor.puzzle_game.chest2 positioned ~1 ~ ~ run return run function power:puzzle_game/switch/rotate with storage jk2:data root.monitor.puzzle_game
function power:puzzle_game/switch/rotate with storage jk2:data root.monitor.puzzle_game