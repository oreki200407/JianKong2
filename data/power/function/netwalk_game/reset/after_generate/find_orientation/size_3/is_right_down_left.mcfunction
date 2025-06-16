###################################################
# 回傳是否連接到右、下、左
# 
# Name   : is_right_down_left.mcfunction
# Path   : power:netwalk_game/reset/after_generate/size_3/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#  -1 0 1
# 1 □ □ □
# 0 ■ □ ■
#-1 □ ■ □

execute if function power:netwalk_game/vector2/is_direction/1_right if function power:netwalk_game/vector2/is_direction/2_down if function power:netwalk_game/vector2/is_direction/3_left run return 100
execute if function power:netwalk_game/vector2/is_direction/1_right if function power:netwalk_game/vector2/is_direction/2_left if function power:netwalk_game/vector2/is_direction/3_down run return 100
execute if function power:netwalk_game/vector2/is_direction/1_down if function power:netwalk_game/vector2/is_direction/2_right if function power:netwalk_game/vector2/is_direction/3_left run return 100
execute if function power:netwalk_game/vector2/is_direction/1_down if function power:netwalk_game/vector2/is_direction/2_left if function power:netwalk_game/vector2/is_direction/3_right run return 100
execute if function power:netwalk_game/vector2/is_direction/1_left if function power:netwalk_game/vector2/is_direction/2_right if function power:netwalk_game/vector2/is_direction/3_down run return 100
execute if function power:netwalk_game/vector2/is_direction/1_left if function power:netwalk_game/vector2/is_direction/2_down if function power:netwalk_game/vector2/is_direction/3_right run return 100
return fail