###################################################
# 給材質
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/reset/number/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 遞迴
# Author : oreki20
###################################################

function power:netwalk_game/reset/number/give with storage jk2:data root.monitor.netwalk_game
execute positioned ~1 ~ ~ run function power:netwalk_game/reset/number/give with storage jk2:data root.monitor.netwalk_game

execute store result storage jk2:data root.monitor.netwalk_game.number int 1 run scoreboard players add #reset netwalk_game 1
execute if score #reset netwalk_game matches ..26 run function power:netwalk_game/reset/number/root