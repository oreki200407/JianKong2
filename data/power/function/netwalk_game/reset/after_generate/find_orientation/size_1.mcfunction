data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.type set value "single"

#以UP為0 RIGHT為1 DOWN為2 LEFT為3
execute store result score #o_r netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[0].row
execute store result score #o_c netwalk_game run data get storage jk2:data root.monitor.netwalk_game.custom_data.connected[0].column

execute if score #o_r netwalk_game matches 1 if score #o_c netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 0
execute if score #o_r netwalk_game matches 0 if score #o_c netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 1
execute if score #o_r netwalk_game matches -1 if score #o_c netwalk_game matches 0 run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 2
execute if score #o_r netwalk_game matches 0 if score #o_c netwalk_game matches -1 run return run data modify storage jk2:data root.monitor.netwalk_game.custom_data.rotate_data.orientation set value 3