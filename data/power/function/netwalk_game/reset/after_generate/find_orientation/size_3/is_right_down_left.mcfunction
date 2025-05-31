#  -1 0 1
# 1 □ □ □
# 0 ■ □ ■
#-1 □ ■ □

execute if function power:netwalk_game/vector2/is_direction/1_right if function power:netwalk_game/vector2/is_direction/2_down if function power:netwalk_game/vector2/is_direction/3_left run return 100
return fail