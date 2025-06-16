###################################################
# 檢查格子的旋轉
# 
# Name   : orientation.mcfunction
# Path   : power:netwalk_game/switch/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : oreki20
###################################################

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:0}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 1

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:1}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 2

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:2}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 3

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:3}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 0