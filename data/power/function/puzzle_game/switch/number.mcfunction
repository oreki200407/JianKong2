scoreboard players set @s puzzle_game 0
$execute unless items block ~ ~ ~ container.$(check) * store success score @s puzzle_game run clear @s echo_shard[custom_data~{number:$(check)}] 0
$execute as @s[scores={puzzle_game=1}] run data modify storage jk2:data root.monitor.puzzle_game.switch set value $(check)
execute as @s[scores={puzzle_game=1}] unless entity @e[tag=puzzle_game,distance=..0.1] run data modify storage jk2:data root.monitor.puzzle_game.chest2 set value 1

$execute store success score @s puzzle_game run clear @s echo_shard[custom_model_data={strings:["$(check)"]}] 0
$execute as @s[scores={puzzle_game=1}] run data modify storage jk2:data root.monitor.puzzle_game.piece set value $(check)