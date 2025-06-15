scoreboard players set @s netwalk_game 0
$execute unless data block ~ ~ ~ Items[{Slot:$(check)b}] store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_data~{rotate_data:{number:$(check)}}] 0

execute if score @s netwalk_game matches 0 run return fail

$data modify storage jk2:data root.monitor.netwalk_game.switch.number set value $(check)
execute unless entity @e[tag=netwalk_game,distance=..0.1] run data modify storage jk2:data root.monitor.netwalk_game.chest2 set value 1