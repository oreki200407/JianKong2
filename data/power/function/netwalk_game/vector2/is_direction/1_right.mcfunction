###################################################
# 回傳o_r1為0且o_c1為1，代表右
# 
# Name   : 1_right.mcfunction
# Path   : power:netwalk_game/vector2/is_direction/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#  -1 0 1
# 1 □ □ □
# 0 □ □ ■
#-1 □ □ □

return run execute if score #o_r1 netwalk_game matches 0 if score #o_c1 netwalk_game matches 1