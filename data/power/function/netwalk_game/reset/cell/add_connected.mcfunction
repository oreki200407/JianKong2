###################################################
# 為格子增加連接
# 
# Name   : add_connected.mcfunction
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
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 0 run return run item modify block ~ ~ ~ container.2 power:new_connected
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 1 run return run item modify block ~ ~ ~ container.3 power:new_connected
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 2 run return run item modify block ~ ~ ~ container.4 power:new_connected
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 3 run return run item modify block ~ ~ ~ container.5 power:new_connected
execute if score #cell_row netwalk_game matches 0 if score #cell_column netwalk_game matches 4 run return run item modify block ~ ~ ~ container.6 power:new_connected
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 0 run return run item modify block ~ ~ ~ container.11 power:new_connected
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 1 run return run item modify block ~ ~ ~ container.12 power:new_connected
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 2 run return run item modify block ~ ~ ~ container.13 power:new_connected
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 3 run return run item modify block ~ ~ ~ container.14 power:new_connected
execute if score #cell_row netwalk_game matches 1 if score #cell_column netwalk_game matches 4 run return run item modify block ~ ~ ~ container.15 power:new_connected
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 0 run return run item modify block ~ ~ ~ container.20 power:new_connected
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 1 run return run item modify block ~ ~ ~ container.21 power:new_connected
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 2 run return run item modify block ~ ~ ~ container.22 power:new_connected
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 3 run return run item modify block ~ ~ ~ container.23 power:new_connected
execute if score #cell_row netwalk_game matches 2 if score #cell_column netwalk_game matches 4 run return run item modify block ~ ~ ~ container.24 power:new_connected

#右邊的是~1 ~ ~
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 0 run return run item modify block ~1 ~ ~ container.2 power:new_connected
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 1 run return run item modify block ~1 ~ ~ container.3 power:new_connected
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 2 run return run item modify block ~1 ~ ~ container.4 power:new_connected
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 3 run return run item modify block ~1 ~ ~ container.5 power:new_connected
execute if score #cell_row netwalk_game matches 3 if score #cell_column netwalk_game matches 4 run return run item modify block ~1 ~ ~ container.6 power:new_connected
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 0 run return run item modify block ~1 ~ ~ container.11 power:new_connected
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 1 run return run item modify block ~1 ~ ~ container.12 power:new_connected
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 2 run return run item modify block ~1 ~ ~ container.13 power:new_connected
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 3 run return run item modify block ~1 ~ ~ container.14 power:new_connected
execute if score #cell_row netwalk_game matches 4 if score #cell_column netwalk_game matches 4 run return run item modify block ~1 ~ ~ container.15 power:new_connected