execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{type:"single"}}] 0
execute if score @s netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.switch.type set value "single"

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{type:"corner"}}] 0
execute if score @s netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.switch.type set value "corner"

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{type:"t"}}] 0
execute if score @s netwalk_game matches 1 run return run data modify storage jk2:data root.monitor.netwalk_game.switch.type set value "t"

data modify storage jk2:data root.monitor.netwalk_game.straight set value 1
data modify storage jk2:data root.monitor.netwalk_game.switch.type set value "straight"