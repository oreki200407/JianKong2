###################################################
# 回傳格子的連接數
# 
# Name   : get_connected.mcfunction
# Path   : power:netwalk_game/reset/after_generate/rotate/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

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
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 0 run return run data get block ~ ~ ~ Items[{Slot: 2b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 1 run return run data get block ~ ~ ~ Items[{Slot: 3b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 2 run return run data get block ~ ~ ~ Items[{Slot: 4b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 3 run return run data get block ~ ~ ~ Items[{Slot: 5b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 4 run return run data get block ~ ~ ~ Items[{Slot: 6b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 0 run return run data get block ~ ~ ~ Items[{Slot: 11b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 1 run return run data get block ~ ~ ~ Items[{Slot: 12b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 2 run return run data get block ~ ~ ~ Items[{Slot: 13b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 3 run return run data get block ~ ~ ~ Items[{Slot: 14b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 4 run return run data get block ~ ~ ~ Items[{Slot: 15b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 0 run return run data get block ~ ~ ~ Items[{Slot: 20b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 1 run return run data get block ~ ~ ~ Items[{Slot: 21b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 2 run return run data get block ~ ~ ~ Items[{Slot: 22b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 3 run return run data get block ~ ~ ~ Items[{Slot: 23b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 4 run return run data get block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:custom_data".connected_vec2arr

#右邊的是~1 ~ ~
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 0 run return run data get block ~1 ~ ~ Items[{Slot: 2b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 1 run return run data get block ~1 ~ ~ Items[{Slot: 3b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 2 run return run data get block ~1 ~ ~ Items[{Slot: 4b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 3 run return run data get block ~1 ~ ~ Items[{Slot: 5b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 4 run return run data get block ~1 ~ ~ Items[{Slot: 6b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 0 run return run data get block ~1 ~ ~ Items[{Slot: 11b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 1 run return run data get block ~1 ~ ~ Items[{Slot: 12b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 2 run return run data get block ~1 ~ ~ Items[{Slot: 13b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 3 run return run data get block ~1 ~ ~ Items[{Slot: 14b}].components."minecraft:custom_data".connected_vec2arr
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 4 run return run data get block ~1 ~ ~ Items[{Slot: 15b}].components."minecraft:custom_data".connected_vec2arr