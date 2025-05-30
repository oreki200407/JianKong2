#根據row和column，從箱子中選擇

#箱子是長這樣的
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ □ □ □ □ □ □ □ #

#橫列
execute store result score #cell_row netwalk_game run data get storage jk2:data root.monitor.netwalk_game.cell_vec2.row
#直行
execute store result score #cell_column netwalk_game run data get storage jk2:data root.monitor.netwalk_game.cell_vec2.column

#原本用macro的 想想還是這樣好了 反正也才25項

#左邊的是~ ~ ~
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 0 run return run data modify block ~ ~ ~ Items[2].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 1 run return run data modify block ~ ~ ~ Items[3].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 2 run return run data modify block ~ ~ ~ Items[4].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 3 run return run data modify block ~ ~ ~ Items[5].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 4 run return run data modify block ~ ~ ~ Items[6].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 0 run return run data modify block ~ ~ ~ Items[11].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 1 run return run data modify block ~ ~ ~ Items[12].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 2 run return run data modify block ~ ~ ~ Items[13].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 3 run return run data modify block ~ ~ ~ Items[14].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 4 run return run data modify block ~ ~ ~ Items[15].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 0 run return run data modify block ~ ~ ~ Items[20].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 1 run return run data modify block ~ ~ ~ Items[21].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 2 run return run data modify block ~ ~ ~ Items[22].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 3 run return run data modify block ~ ~ ~ Items[23].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 4 run return run data modify block ~ ~ ~ Items[24].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2

#右邊的是~1 ~ ~
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 0 run return run data modify block ~1 ~ ~ Items[2].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 1 run return run data modify block ~1 ~ ~ Items[3].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 2 run return run data modify block ~1 ~ ~ Items[4].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 3 run return run data modify block ~1 ~ ~ Items[5].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 4 run return run data modify block ~1 ~ ~ Items[6].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 0 run return run data modify block ~1 ~ ~ Items[11].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 1 run return run data modify block ~1 ~ ~ Items[12].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 2 run return run data modify block ~1 ~ ~ Items[13].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 3 run return run data modify block ~1 ~ ~ Items[14].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 4 run return run data modify block ~1 ~ ~ Items[15].components."minecraft:custom_data".connected append from storage jk2:data root.monitor.netwalk_game.new_connected_vec2