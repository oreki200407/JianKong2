###################################################
# 等級三的電力檢查函數
# 
# Name   : check_electricity.mcfunction
# Path   : monitor:observe/camera/level/three/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#15秒
execute unless score @s cost_time matches 300.. run return fail

function monitor:observe/camera/electricity/cost
scoreboard players remove @s cost_time 300