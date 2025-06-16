###################################################
# 回傳是否連接到上、下
# 
# Name   : is_up_down.mcfunction
# Path   : power:netwalk_game/reset/after_generate/size_2/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#  -1 0 1
# 1 □ ■ □
# 0 □ □ □
#-1 □ ■ □

execute if function power:netwalk_game/vector2/is_direction/1_up if function power:netwalk_game/vector2/is_direction/2_down run return 100
execute if function power:netwalk_game/vector2/is_direction/1_down if function power:netwalk_game/vector2/is_direction/2_up run return 100
return fail