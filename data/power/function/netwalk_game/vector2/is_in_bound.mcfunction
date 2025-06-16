###################################################
# 回傳該二維歐氏空間向量是否在0到4之間
# 
# Name   : is_in_bound.mcfunction
# Path   : power:netwalk_game/vector2/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################
execute store result score #bound_r netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2.row
execute store result score #bound_c netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2.column

#是否在範圍內
return run execute if score #bound_r netwalk_game matches 0..4 if score #bound_c netwalk_game matches 0..4