playsound entity.puffer_fish.blow_up ambient @s

data remove storage jk2:data root.monitor.light_game.chest2
data remove storage jk2:data root.monitor.light_game.switch
execute store result storage jk2:data root.monitor.light_game.check int 1 run scoreboard players set #check light_game 0

function power:light_game/switch/check

function power:light_game/switch/none with storage jk2:data root.monitor.light_game
execute if entity @a[scores={light_game=1}] run return fail

function power:light_game/switch/around