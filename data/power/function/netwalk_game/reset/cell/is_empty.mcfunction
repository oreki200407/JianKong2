###################################################
# 回傳格子是否沒有連接
# 
# Name   : is_empty.mcfunction
# Path   : power:netwalk_game/reset/after_generate/rotate/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#算connected大小
execute store result score #cell_connections netwalk_game run function power:netwalk_game/reset/cell/get_connected
#當0的時候 return true 否則return false
return run execute if score #cell_connections netwalk_game matches 0