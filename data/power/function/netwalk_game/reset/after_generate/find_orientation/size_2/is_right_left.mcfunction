#  -1 0 1
# 1 □ □ □
# 0 ■ □ ■
#-1 □ □ □

execute if function power:netwalk_game/vector2/is_direction/1_right if score #o_r2 netwalk_game matches 0 if score #o_c2 netwalk_game matches -1 run return 100
execute if score #o_r1 netwalk_game matches 0 if score #o_c1 netwalk_game matches -1 if function power:netwalk_game/vector2/is_direction/2_right run return 100
return fail