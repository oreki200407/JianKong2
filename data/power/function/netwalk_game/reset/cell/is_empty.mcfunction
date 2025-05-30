#算connected大小
execute store result score #cell_connections netwalk_game run function power:netwalk_game/reset/cell/get_connected
#當0的時候 return true 否則return false
return run execute if score #cell_connections netwalk_game matches 0