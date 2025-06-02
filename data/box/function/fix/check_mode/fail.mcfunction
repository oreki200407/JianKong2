###################################################
# 檢定失敗
# 
# Name   : countdown.mcfunction
# Path   : box:fix/check_mode/
# As     : 完成檢定的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players remove @s[scores={fix_progress=1..}] fix_progress 1
playsound entity.elder_guardian.curse ambient @s ~ ~ ~ 1 2