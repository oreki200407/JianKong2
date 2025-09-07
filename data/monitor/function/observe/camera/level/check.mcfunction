###################################################
# 根據監視器是等級1或2 檢查熱度和消耗電力
# 
# Name   : check.mcfunction
# Path   : monitor:observe/camera/level/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s camera_level matches 1 run return run function monitor:observe/camera/level/one/check
function monitor:observe/camera/level/two/check