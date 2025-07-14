#重置
data remove storage jk2:data root.monitor.puzzle_game.chest2
data remove storage jk2:data root.monitor.puzzle_game.piece

#找空白格
execute store result score #random_move puzzle_game run data get block ~ ~ ~ Items[{components:{"minecraft:custom_model_data":{strings:["20"]}}}].Slot
execute if data block ~1 ~ ~ Items[{components:{"minecraft:custom_model_data":{strings:["20"]}}}].Slot store result score #random_move puzzle_game run data get block ~1 ~ ~ Items[{components:{"minecraft:custom_model_data":{strings:["20"]}}}].Slot
execute if data block ~1 ~ ~ Items[{components:{"minecraft:custom_model_data":{strings:["20"]}}}] run data modify storage jk2:data root.monitor.puzzle_game.chest2 set value 1

#抽選
execute store result score #random puzzle_game run random value 1..4
execute if score #random puzzle_game matches 1 run scoreboard players remove #random_move puzzle_game 1
execute if score #random puzzle_game matches 2 run scoreboard players add #random_move puzzle_game 1
execute if score #random puzzle_game matches 3 run scoreboard players remove #random_move puzzle_game 9
execute if score #random puzzle_game matches 4 run scoreboard players add #random_move puzzle_game 9

execute if data storage jk2:data root.monitor.puzzle_game.chest2 if score #random_move puzzle_game matches -7..-3 run function power:puzzle_game/reset/random/up
execute unless data storage jk2:data root.monitor.puzzle_game.chest2 if score #random_move puzzle_game matches 29..33 run function power:puzzle_game/reset/random/down

execute store result storage jk2:data root.monitor.puzzle_game.switch int 1 run scoreboard players get #random_move puzzle_game

#檢查是否超出界外
execute unless data storage jk2:data root.monitor.puzzle_game.chest2 run function power:puzzle_game/reset/random/piece with storage jk2:data root.monitor.puzzle_game
execute if data storage jk2:data root.monitor.puzzle_game.chest2 positioned ~1 ~ ~ run function power:puzzle_game/reset/random/piece with storage jk2:data root.monitor.puzzle_game
execute if score #random_fail puzzle_game matches 1 run return run function power:puzzle_game/reset/random/root

#執行
function power:puzzle_game/switch/around

scoreboard players add #random_count puzzle_game 1
execute if score #random_count puzzle_game matches ..70 run function power:puzzle_game/reset/random/root