playsound block.bubble_column.upwards_ambient ambient @s

data remove storage jk2:data root.monitor.netwalk_game.chest2
data remove storage jk2:data root.monitor.netwalk_game.switch
execute store result storage jk2:data root.monitor.netwalk_game.check int 1 run scoreboard players set #check netwalk_game 0

function power:netwalk_game/switch/check

function power:netwalk_game/switch/none with storage jk2:data root.monitor.netwalk_game
execute if entity @a[scores={netwalk_game=1}] run return fail

function power:netwalk_game/switch/around