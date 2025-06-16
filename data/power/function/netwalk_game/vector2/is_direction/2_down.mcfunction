###################################################
# 回傳o_r2為-1且o_c2為0，代表下
# 
# Name   : 2_down.mcfunction
# Path   : power:netwalk_game/vector2/is_direction/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#  -1 0 1
# 1 □ □ □
# 0 □ □ □
#-1 □ ■ □

return run execute if score #o_r2 netwalk_game matches -1 if score #o_c2 netwalk_game matches 0