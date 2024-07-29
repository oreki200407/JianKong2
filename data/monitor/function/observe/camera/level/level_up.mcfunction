###################################################
# 升級函數
# 
# Name   : level_up.mcfunction
# Path   : monitor:observe/camera/level/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if score @s camera_level matches 1 run return run function monitor:observe/camera/level/one/level_up
execute if score @s camera_level matches 2 run return run function monitor:observe/camera/level/two/level_up