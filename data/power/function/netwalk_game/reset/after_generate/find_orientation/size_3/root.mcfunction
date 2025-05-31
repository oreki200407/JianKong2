execute store result score #o_r1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[0].row
execute store result score #o_c1 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[0].column
execute store result score #o_r2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[1].row
execute store result score #o_c2 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[1].column
execute store result score #o_r3 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[2].row
execute store result score #o_c3 netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[2].column

#以UP-RIGHT-DOWN為0 RIGHT-DOWN為1 DOWN-LEFT為2 LEFT-UP為3
execute if function power:netwalk_game/reset/after_generate/find_orientation/size_3/is_up_right_down run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data set value {orientation: 0, type: "t"}