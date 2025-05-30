#旋轉270度

execute store result score #rotate_r netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2.row
execute store result score #rotate_c netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2.column

#UP -> LEFT
execute if score #rotate_r netwalk_game matches 1 if score #rotate_c netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: 0, column: -1}
#RIGHT -> UP
execute if score #rotate_r netwalk_game matches 0 if score #rotate_c netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: 1, column: 0}
#DOWN -> RIGHT
execute if score #rotate_r netwalk_game matches -1 if score #rotate_c netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: 0, column: 1}
#LEFT -> DOWN
execute if score #rotate_r netwalk_game matches 0 if score #rotate_c netwalk_game matches -1 run return run data modify storage jk2:data root.monitor.netwalk_game.vector2.rotate_vec2 set value {row: -1, column: 0}