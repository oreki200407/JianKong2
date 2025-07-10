###################################################
# 根據監視器的等級消耗電力
# 
# Name   : check_electricity.mcfunction
# Path   : monitor:observe/camera/level/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s camera_level matches 1 run return run function monitor:observe/camera/level/one/check_electricity
execute if score @s camera_level matches 2 run return run function monitor:observe/camera/level/two/check_electricity
function monitor:observe/camera/level/three/check_electricity