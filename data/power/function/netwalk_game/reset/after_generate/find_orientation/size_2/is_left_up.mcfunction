#  -1 0 1
# 1 □ ■ □
# 0 ■ □ □
#-1 □ □ □

execute if function power:netwalk_game/vector2/is_direction/1_left if function power:netwalk_game/vector2/is_direction/2_up run return 100
execute if function power:netwalk_game/vector2/is_direction/1_up if function power:netwalk_game/vector2/is_direction/2_left run return 100
return fail