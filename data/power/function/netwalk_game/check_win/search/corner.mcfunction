#UP-RIGHT
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 0}}] run function power:netwalk_game/check_win/search/up
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 0}}] run return run function power:netwalk_game/check_win/search/right

#RIGHT-DOWN
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 1}}] run function power:netwalk_game/check_win/search/right
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 1}}] run return run function power:netwalk_game/check_win/search/down

#DOWN-LEFT
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 2}}] run function power:netwalk_game/check_win/search/down
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 2}}] run return run function power:netwalk_game/check_win/search/left

#LEFT-UP
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 3}}] run function power:netwalk_game/check_win/search/left
execute if items entity 0-0-0-0-171e7 contents magenta_glazed_terracotta[custom_data~{rotate_data: {orientation: 3}}] run return run function power:netwalk_game/check_win/search/up