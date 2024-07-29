###################################################
# 如果熱度 >= 1，根據不同的等級分發到不同的檢查函數內
# 
# Name   : check_heat.mcfunction
# Path   : monitor:observe/camera/level/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s camera_level matches 1 run return run function monitor:observe/camera/level/one/check_heat
execute if score @s camera_level matches 2 run return run function monitor:observe/camera/level/two/check_heat
function monitor:observe/camera/level/three/check_heat