#根據row和column，從箱子中選擇root.monitor.netwalk_game.cell

#row * 9 + column
$scoreboard players set #cell_index netwalk_game $(row)
scoreboard players operation #cell_index netwalk_game *= #9 constant
$scoreboard players add #cell_index netwalk_game $(column)

execute if score #cell_index netwalk_game matches ..26 run data modify storage jk2:data root.monitor.netwalk_game.macro.cell.coord set value "~ ~ ~"
execute if score #cell_index netwalk_game matches 27.. run data modify storage jk2:data root.monitor.netwalk_game.macro.cell.coord set value "~1 ~ ~"

#計算餘數
scoreboard players operation #cell_index_mod_27 netwalk_game = #cell_index netwalk_game
execute store result storage jk2:data root.monitor.netwalk_game.macro.cell.slot byte 1 run scoreboard players operation #cell_index_mod_27 netwalk_game %= #27 constant

function power:netwalk_game/reset/cell/deep_copy with storage jk2:data root.monitor.netwalk_game.macro.cell