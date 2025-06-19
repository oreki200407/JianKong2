###################################################
# rotate_data.type = straight
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/check_win/search/straight/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#UP-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/straight/up_down

#RIGHT-LEFT
function power:netwalk_game/check_win/search/straight/right_left