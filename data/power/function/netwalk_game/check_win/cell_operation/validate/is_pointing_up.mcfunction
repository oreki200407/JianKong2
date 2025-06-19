###################################################
# 回傳格子是否指向上方
# 
# Name   : is_pointing_up.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/validate/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "single", orientation: 0}}] run return 100

#UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner", orientation: 0}}] run return 100
#LEFT-UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner", orientation: 3}}] run return 100

#UP-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "straight", orientation: 0}}] run return 100

#UP-RIGHT-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 0}}] run return 100
#DOWN-LEFT-UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 2}}] run return 100
#LEFT-UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 3}}] run return 100

return fail