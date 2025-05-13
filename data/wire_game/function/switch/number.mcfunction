scoreboard players set @a wire_game 0
$execute unless data block ~ ~ ~ Items[{Slot:$(check)b}] store success score @s wire_game run clear @s string[custom_data={number:$(check)}] 0
$execute as @a[scores={wire_game=1}] run data modify storage jk2:data root.monitor.wire_game.switch set value $(check)
execute as @a[scores={wire_game=1}] unless entity @e[tag=wire_game,distance=..0.1] run data modify storage jk2:data root.monitor.wire_game.chest2 set value 1