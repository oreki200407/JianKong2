###################################################
# rotate_data.type = single
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/check_win/search/single/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/single/up

#RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 1}}] run return run function power:netwalk_game/check_win/search/single/right

#DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 2}}] run return run function power:netwalk_game/check_win/search/single/down

#LEFT
function power:netwalk_game/check_win/search/single/left