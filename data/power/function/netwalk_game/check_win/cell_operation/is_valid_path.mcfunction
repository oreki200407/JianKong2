###################################################
# 根據from回傳格子是否指向from的位置
# 
# Name   : is_valid_path.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#從上方來
execute if score #from netwalk_game matches 0 run return run function power:netwalk_game/check_win/cell_operation/validate/is_pointing_up
#從右邊來
execute if score #from netwalk_game matches 1 run return run function power:netwalk_game/check_win/cell_operation/validate/is_pointing_right
#從下方來
execute if score #from netwalk_game matches 2 run return run function power:netwalk_game/check_win/cell_operation/validate/is_pointing_down
#從左邊來
execute if score #from netwalk_game matches 3 run return run function power:netwalk_game/check_win/cell_operation/validate/is_pointing_left

return fail