###################################################
# 檢定成功
# 
# Name   : countdown.mcfunction
# Path   : box:fix/check_mode/
# As     : 完成檢定的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.5
scoreboard players add #box fix_progress 1