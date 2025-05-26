playsound entity.puffer_fish.blow_up ambient @s

data remove storage jk2:data root.monitor.puzzle_game.chest2
data remove storage jk2:data root.monitor.puzzle_game.switch

execute store result storage jk2:data root.monitor.puzzle_game.check int 1 run scoreboard players set #check puzzle_game 0

function power:puzzle_game/switch/check

function power:puzzle_game/switch/none with storage jk2:data root.monitor.puzzle_game
execute if entity @a[scores={puzzle_game=1}] run return fail

function power:puzzle_game/switch/around