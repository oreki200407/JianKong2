execute unless entity @s[type=marker] run return run execute as 0-0-0-0-171e7 at @s run function power:netwalk_game/reset/generate

execute store result score #nodes_size netwalk_game if data storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[]
#已經滿了 不生成了
execute if score #nodes_size netwalk_game matches 0 run return run function power:netwalk_game/reset/random/store_type

#隨機選一個vector2的座標位置
function power:netwalk_game/reset/random/pick

#根據node在箱子中找到cell
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.node_vec2
#獲得這一格連了多少個格子數
execute store result score #connections netwalk_game run function power:netwalk_game/reset/cell/get_connected


#已經連接3個方向了 拿走
execute if score #connections netwalk_game matches 3 run return run function power:netwalk_game/reset/when_full with storage jk2:data root.monitor.netwalk_game.macro

#已經連接2個方向了 98%直接下一個
execute if score #connections netwalk_game matches 2 if predicate {condition: "random_chance", chance: 0.98} run return run function power:netwalk_game/reset/generate

#如果這個位置四周都已經生成過了 拿走
execute if function power:netwalk_game/reset/is_complete run return run function power:netwalk_game/reset/when_full with storage jk2:data root.monitor.netwalk_game.macro


#如果以上這些都通過了
#那麼接下來就是真正的隨機新增

#從4個方向中隨機選一個
function power:netwalk_game/reset/random/direction
#被加數為這個格子的座標 加數為剛剛隨機取的方向
data modify storage jk2:data root.monitor.netwalk_game.vector2.augend_vec2 set from storage jk2:data root.monitor.netwalk_game.node_vec2
data modify storage jk2:data root.monitor.netwalk_game.vector2.addend_vec2 set from storage jk2:data root.monitor.netwalk_game.direction_vec2
function power:netwalk_game/vector2/add
#和要拿去檢查範圍
data modify storage jk2:data root.monitor.netwalk_game.vector2.check_bound_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.result_vec2
#超過範圍就下一個 用schedule避免遞迴太深
execute unless function power:netwalk_game/vector2/is_in_bound run return run schedule function power:netwalk_game/reset/generate 1

#如果新的點位在範圍內的話
#獲得新點位連了多少個格子數
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.result_vec2
#已經有連了就下一個 用schedule避免遞迴太深
execute unless function power:netwalk_game/reset/cell/is_empty run return run schedule function power:netwalk_game/reset/generate 1

#如果以上的每一個關卡都通過了，那就可以真正開始連接了

#首先先獲得一個顛倒的方向向量 讓剛剛加法獲得的和的格子連上這個格子
data modify storage jk2:data root.monitor.netwalk_game.vector2.opposite_vec2 set from storage jk2:data root.monitor.netwalk_game.direction_vec2
function power:netwalk_game/vector2/opposite
data modify storage jk2:data root.monitor.netwalk_game.new_connected_vec2 set from storage jk2:data root.monitor.netwalk_game.vector2.opposite_vec2
function power:netwalk_game/reset/cell/add_connected

#現在這個格子也要連上剛剛那格子
data modify storage jk2:data root.monitor.netwalk_game.cell_vec2 set from storage jk2:data root.monitor.netwalk_game.node_vec2
data modify storage jk2:data root.monitor.netwalk_game.new_connected_vec2 set from storage jk2:data root.monitor.netwalk_game.direction_vec2
function power:netwalk_game/reset/cell/add_connected

#最後 把新格子加入清單 進行下一次疊代
data modify storage jk2:data root.monitor.netwalk_game.nodes_vec2arr append from storage jk2:data root.monitor.netwalk_game.vector2.result_vec2
schedule function power:netwalk_game/reset/generate 1