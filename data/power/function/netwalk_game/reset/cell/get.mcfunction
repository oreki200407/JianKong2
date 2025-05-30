#根據row和column，從箱子中選擇root.monitor.netwalk_game.cell

#箱子是長這樣的
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ □ □ □ □ □ □ □ #

#橫列不變
$scoreboard players set #chest_index netwalk_game $(row)
scoreboard players operation #chest_index netwalk_game *= #9 constant
#全域直行 = 局部直行 + 2
$scoreboard players add #chest_index netwalk_game $(column)
scoreboard players add #chest_index netwalk_game 2

#判斷箱子 ~ ~ ~是左邊的
execute if score #chest_index netwalk_game matches ..26 run data modify storage jk2:data root.monitor.netwalk_game.macro.cell.coord set value "~ ~ ~"
execute if score #chest_index netwalk_game matches 27.. run data modify storage jk2:data root.monitor.netwalk_game.macro.cell.coord set value "~1 ~ ~"

#計算餘數
scoreboard players operation #chest_index_mod_27 netwalk_game = #chest_index netwalk_game
execute store result storage jk2:data root.monitor.netwalk_game.macro.cell.slot byte 1 run scoreboard players operation #chest_index_mod_27 netwalk_game %= #27 constant

#Deep copy
function power:netwalk_game/reset/cell/deep_copy with storage jk2:data root.monitor.netwalk_game.macro.cell