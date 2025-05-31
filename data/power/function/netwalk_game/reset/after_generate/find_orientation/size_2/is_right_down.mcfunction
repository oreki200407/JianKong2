#  -1 0 1
# 1 □ □ □
# 0 □ □ ■
#-1 □ ■ □

execute if function power:netwalk_game/vector2/is_direction/1_right if function power:netwalk_game/vector2/is_direction/2_down run return 100
execute if function power:netwalk_game/vector2/is_direction/1_down if function power:netwalk_game/vector2/is_direction/2_right run return 100
return fail