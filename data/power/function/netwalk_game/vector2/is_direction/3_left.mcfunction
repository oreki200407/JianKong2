###################################################
# 回傳o_r3為0且o_c3為-1，代表左
# 
# Name   : 3_left.mcfunction
# Path   : power:netwalk_game/vector2/is_direction/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#  -1 0 1
# 1 □ □ □
# 0 ■ □ □
#-1 □ □ □

return run execute if score #o_r3 netwalk_game matches 0 if score #o_c3 netwalk_game matches -1