###################################################
# 等級二的電力檢查函數
# 
# Name   : check_electricity.mcfunction
# Path   : monitor:observe/camera/level/two/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#10秒
execute unless score @s cost_time matches 200.. run return fail

function monitor:observe/camera/electricity/cost
scoreboard players remove @s cost_time 200