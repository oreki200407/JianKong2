###################################################
# 等級二的熱度檢查函數
# 
# Name   : check_heat.mcfunction
# Path   : monitor:observe/camera/level/two/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#等級二

#爆炸 240秒
execute if score @s heat matches 4800.. run return run function monitor:observe/camera/heat/explode

#大冒煙 180秒
execute if score #previous heat matches ..3599 if score @s heat matches 3600.. run return run function monitor:observe/camera/heat/big

#中冒煙 120秒
execute if score #previous heat matches ..2399 if score @s heat matches 2400.. run return run function monitor:observe/camera/heat/medium

#小冒煙 60秒
execute if score #previous heat matches ..1199 if score @s heat matches 1200.. run return run function monitor:observe/camera/heat/small