execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:0}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 1

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:1}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 2

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:2}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 3

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{orientation:3}}]
execute if score @s netwalk_game matches 1 run return run scoreboard players set #orientation netwalk_game 0