###################################################
# 點擊格子
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/switch/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : oreki20
###################################################

playsound entity.puffer_fish.blow_up master @s

data remove storage jk2:data root.monitor.netwalk_game.chest2
data remove storage jk2:data root.monitor.netwalk_game.switch
data remove storage jk2:data root.monitor.netwalk_game.straight
execute store result storage jk2:data root.monitor.netwalk_game.check int 1 run scoreboard players set #check netwalk_game 0

function power:netwalk_game/switch/check

function power:netwalk_game/switch/none with storage jk2:data root.monitor.netwalk_game.switch
execute if entity @s[scores={netwalk_game=1}] run return fail

function power:netwalk_game/switch/type
function power:netwalk_game/switch/orientation

execute if score #orientation netwalk_game matches 2 if data storage jk2:data root.monitor.netwalk_game.straight run scoreboard players set #orientation netwalk_game 0
execute store result storage jk2:data root.monitor.netwalk_game.switch.orientation int 1 run scoreboard players get #orientation netwalk_game

execute unless data storage jk2:data root.monitor.netwalk_game.chest2 run return run function power:netwalk_game/switch/success with storage jk2:data root.monitor.netwalk_game.switch
execute if data storage jk2:data root.monitor.netwalk_game.chest2 positioned ~1 ~ ~ run function power:netwalk_game/switch/success with storage jk2:data root.monitor.netwalk_game.switch