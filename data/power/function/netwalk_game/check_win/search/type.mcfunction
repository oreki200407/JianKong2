###################################################
# 根據rotate_data的type 決定要怎麼下一步搜尋
# 
# Name   : type.mcfunction
# Path   : power:netwalk_game/check_win/search/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#雖然可以用macro 但還是這樣好了

#單一連通
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "single"}}] run return run function power:netwalk_game/check_win/search/single/root
#角落型態
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "corner"}}] run return run function power:netwalk_game/check_win/search/corner/root
#直線型態
execute if items entity 0-0-0-0-171e7 contents *[custom_data~{rotate_data: {type: "straight"}}] run return run function power:netwalk_game/check_win/search/straight/root
#T型態
function power:netwalk_game/check_win/search/t/root