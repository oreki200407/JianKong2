###################################################
# 檢定成功
# 
# Name   : countdown.mcfunction
# Path   : power:fix/check_mode/
# As     : 完成檢定的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players add @s fix_progress 1
tellraw @s "檢定成功"