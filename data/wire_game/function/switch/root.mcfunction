playsound entity.puffer_fish.blow_up ambient @s

data remove storage jk2:data root.monitor.wire_game.chest2
data remove storage jk2:data root.monitor.wire_game.switch
scoreboard players reset #check wire_game
execute store result storage jk2:data root.monitor.wire_game.check int 1 run scoreboard players add #check wire_game 0

function wire_game:switch/check

execute if data storage jk2:data root.monitor.wire_game.chest2 positioned ~1 ~ ~ run return run function wire_game:switch/rotate with storage jk2:data root.monitor.wire_game
function wire_game:switch/rotate with storage jk2:data root.monitor.wire_game