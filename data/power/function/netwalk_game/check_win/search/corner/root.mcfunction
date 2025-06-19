#UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/corner/up_right

#RIGHT-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 1}}] run return run function power:netwalk_game/check_win/search/corner/right_down

#DOWN-LEFT
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 2}}] run return run function power:netwalk_game/check_win/search/corner/down_left

#LEFT-UP
function power:netwalk_game/check_win/search/corner/left_up