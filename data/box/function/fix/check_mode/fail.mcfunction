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

execute at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
execute if score #box fix_progress matches 1.. run scoreboard players remove #box fix_progress 1