#UP-DOWN
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/straight/up_down

#RIGHT-LEFT
function power:netwalk_game/check_win/search/straight/right_left