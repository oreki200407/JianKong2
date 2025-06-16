###################################################
# 二維歐氏空間向量的取反，也可以視為是乘以純量-1的純量積
# 
# Name   : opposite.mcfunction
# Path   : power:netwalk_game/vector2/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result storage jk2:data root.monitor.netwalk_game.vector2.opposite_vec2.row int -1 run data get storage jk2:data root.monitor.netwalk_game.vector2.opposite_vec2.row
execute store result storage jk2:data root.monitor.netwalk_game.vector2.opposite_vec2.column int -1 run data get storage jk2:data root.monitor.netwalk_game.vector2.opposite_vec2.column