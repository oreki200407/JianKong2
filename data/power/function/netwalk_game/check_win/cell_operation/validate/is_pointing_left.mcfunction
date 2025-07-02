###################################################
# 回傳格子是否指向左邊
# 
# Name   : is_pointing_up.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/validate/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "single", orientation: 3}}] run return 100

#DOWN-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner", orientation: 2}}] run return 100
#LEFT-UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner", orientation: 3}}] run return 100

#RIGHT-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "straight", orientation: 1}}] run return 100

#RIGHT-DOWN-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 1}}] run return 100
#DOWN-LEFT-UP
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 2}}] run return 100
#LEFT-UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 3}}] run return 100

return fail