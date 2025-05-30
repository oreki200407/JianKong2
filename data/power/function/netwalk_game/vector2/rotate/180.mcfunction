#旋轉180度

execute store result score #rotate_r netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2.row
execute store result score #rotate_c netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2.column

#UP -> DOWN
execute if score #rotate_r netwalk_game matches 1 if score #rotate_c netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: -1, column: 0}
#RIGHT -> LEFT
execute if score #rotate_r netwalk_game matches 0 if score #rotate_c netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: 0, column: -1}
#DOWN -> UP
execute if score #rotate_r netwalk_game matches -1 if score #rotate_c netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: 1, column: 0}
#LEFT -> RIGHT
execute if score #rotate_r netwalk_game matches 0 if score #rotate_c netwalk_game matches -1 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: 0, column: 1}