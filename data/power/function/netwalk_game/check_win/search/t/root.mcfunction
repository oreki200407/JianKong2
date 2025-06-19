###################################################
# rotate_data.type = t
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/check_win/search/t/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#UP-RIGHT-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/t/up_right_down

#RIGHT-DOWN-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 1}}] run return run function power:netwalk_game/check_win/search/t/right_down_left

#DOWN-LEFT-UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 2}}] run return run function power:netwalk_game/check_win/search/t/down_left_up

#LEFT-UP-RIGHT
function power:netwalk_game/check_win/search/t/left_up_right