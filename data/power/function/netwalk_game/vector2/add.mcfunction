execute store result score #r1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.augend_vec2.row
execute store result score #c1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.augend_vec2.column

execute store result score #r2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2.row
execute store result score #c2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2.column

execute store result storage jk2:data root.monitor.netwalk_game.vector2.result_vec2.row int 1 run scoreboard players operation #r1 netwalk_game += #r2 netwalk_game
execute store result storage jk2:data root.monitor.netwalk_game.vector2.result_vec2.column int 1 run scoreboard players operation #c1 netwalk_game += #c2 netwalk_game