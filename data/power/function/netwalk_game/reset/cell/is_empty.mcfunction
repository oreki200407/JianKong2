#先獲得cell
function power:netwalk_game/reset/cell/get with storage jk2:data root.monitor.netwalk_game.macro.get_cell_vec2
#算connected大小
execute store result score #cell_connections netwalk_game run data get storage jk2:data root.monitor.netwalk_game.cell.connected
#當0的時候 return true 否則return false
return run execute if score #cell_connections netwalk_game matches 0