###################################################
# 離開修理發電機狀態
# 
# Name   : leave.mcfunction
# Path   : box:fix/fix_mode/
# As     : 離開修理發電機狀態的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove fixing_box
tag @s remove fixing_box_check
#允許跳躍
attribute @s jump_strength modifier remove jk2:fix_box