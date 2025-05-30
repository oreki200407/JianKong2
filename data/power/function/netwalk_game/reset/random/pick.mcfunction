#Eight Great Ideas in Computer Architecture: Make the Common Case Fast
execute if score #nodes_size netwalk_game matches 1 run return run function power:netwalk_game/reset/random/common_case/1
execute if score #nodes_size netwalk_game matches 2 run return run function power:netwalk_game/reset/random/common_case/2
execute if score #nodes_size netwalk_game matches 3 run return run function power:netwalk_game/reset/random/common_case/3
execute if score #nodes_size netwalk_game matches 4 run return run function power:netwalk_game/reset/random/common_case/4
execute if score #nodes_size netwalk_game matches 5 run return run function power:netwalk_game/reset/random/common_case/5
execute if score #nodes_size netwalk_game matches 6 run return run function power:netwalk_game/reset/random/common_case/6
execute if score #nodes_size netwalk_game matches 7 run return run function power:netwalk_game/reset/random/common_case/7
execute if score #nodes_size netwalk_game matches 8 run return run function power:netwalk_game/reset/random/common_case/8
execute if score #nodes_size netwalk_game matches 9 run return run function power:netwalk_game/reset/random/common_case/9
execute if score #nodes_size netwalk_game matches 10 run return run function power:netwalk_game/reset/random/common_case/10

#其他的case
scoreboard players operation #random_maximum netwalk_game = #nodes_size netwalk_game
#/random指令有包含上限 所以要-1
execute store result storage jk2:data root.monitor.netwalk_game.macro.random_maximum int 1 run scoreboard players remove #random_maximum netwalk_game 1
#隨機選擇index
execute store result storage jk2:data root.monitor.netwalk_game.macro.index int 1 run function power:netwalk_game/reset/random/index with storage jk2:data root.monitor.netwalk_game.macro
#隨機選擇element到root.monitor.netwalk_game.node
function power:netwalk_game/reset/random/element with storage jk2:data root.monitor.netwalk_game.macro