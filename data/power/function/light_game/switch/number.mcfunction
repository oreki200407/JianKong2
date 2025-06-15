scoreboard players set @s light_game 0
$execute unless data block ~ ~ ~ Items[{Slot:$(check)b}] store success score @s light_game run clear @s coal[custom_data~{number:$(check)}] 0

execute if score @s light_game matches 0 run return fail

$data modify storage jk2:data root.monitor.light_game.switch set value $(check)
execute unless entity @e[tag=light_game,distance=..0.1] run data modify storage jk2:data root.monitor.light_game.chest2 set value 1