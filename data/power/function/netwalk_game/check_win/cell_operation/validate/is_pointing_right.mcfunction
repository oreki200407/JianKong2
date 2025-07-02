###################################################
# 回傳格子是否指向右邊
# 
# Name   : is_pointing_up.mcfunction
# Path   : power:netwalk_game/check_win/cell_operation/validate/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "single", orientation: 1}}] run return 100

#UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner", orientation: 0}}] run return 100
#RIGHT-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner", orientation: 1}}] run return 100

#RIGHT-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "straight", orientation: 1}}] run return 100

#UP-RIGHT-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 0}}] run return 100
#RIGHT-DOWN-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 1}}] run return 100
#LEFT-UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "t", orientation: 3}}] run return 100

return fail