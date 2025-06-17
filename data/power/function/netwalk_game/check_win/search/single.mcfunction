#UP
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/up

#RIGHT
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 1}}] run return run function power:netwalk_game/check_win/search/right

#DOWN
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 2}}] run return run function power:netwalk_game/check_win/search/down

#LEFT
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 3}}] run return run function power:netwalk_game/check_win/search/left