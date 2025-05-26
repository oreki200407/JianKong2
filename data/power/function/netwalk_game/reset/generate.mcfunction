execute store result score #nodes_size netwalk_game run data get storage jk2:data root.monitor.netwalk_game.nodes_vec2arr
#已經滿了 不生成了
execute if score #nodes_size netwalk_game matches 0 run return fail

#隨機選一個vector2的座標位置
function power:netwalk_game/reset/random/pick

#根據node在table中找到cell
data modify storage jk2:data root.monitor.netwalk_game.macro.get_cell_vec2 set from storage jk2:data root.monitor.netwalk_game.node_vec2
function power:netwalk_game/reset/cell/get with storage jk2:data root.monitor.netwalk_game.macro.get_cell_vec2
execute store result score #connections netwalk_game run data get storage jk2:data root.monitor.netwalk_game.cell.connected


#已經連接3個方向了 拿走
execute if score #connections netwalk_game matches 3 run return run function power:netwalk_game/reset/when_full with storage jk2:data root.monitor.netwalk_game.macro

#已經連接2個方向了 98%直接下一個
execute if score #connections netwalk_game matches 2 if predicate {condition: "random_chance", chance: 0.98} run return run schedule function power:netwalk_game/reset/generate 1

#如果這個位置四周都已經生成過了 拿走
execute if function power:netwalk_game/reset/is_complete run return run function power:netwalk_game/reset/when_full with storage jk2:data root.monitor.netwalk_game.macro


#如果以上這些都通過了
#那麼接下來就是真正的隨機新增