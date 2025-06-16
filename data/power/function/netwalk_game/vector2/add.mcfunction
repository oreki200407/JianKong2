###################################################
# 二維歐氏空間向量的加法
# 
# Name   : add.mcfunction
# Path   : power:netwalk_game/vector2/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score #r1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.augend_vec2.row
execute store result score #c1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.augend_vec2.column

execute store result score #r2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2.row
execute store result score #c2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2.column

execute store result storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2.row int 1 run scoreboard players operation #r1 netwalk_game += #r2 netwalk_game
execute store result storage jk2:data root.monitor.netwalk_game.vector2.sum_vec2.column int 1 run scoreboard players operation #c1 netwalk_game += #c2 netwalk_game