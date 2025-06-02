###################################################
# 等級一的熱度檢查函數
# 
# Name   : check_heat.mcfunction
# Path   : monitor:observe/camera/level/one/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#等級一

#爆炸 120秒
execute if score @s heat matches 2400.. run return run function monitor:observe/camera/heat/explode

#大冒煙 90秒
execute if score #previous heat matches ..1799 if score @s heat matches 1800.. as @a[tag=using_camera, predicate=monitor:is_using_me] at @s run return run function monitor:observe/camera/heat/big

#中冒煙 60秒
execute if score #previous heat matches ..1199 if score @s heat matches 1200.. as @a[tag=using_camera, predicate=monitor:is_using_me] at @s run return run function monitor:observe/camera/heat/medium

#小冒煙 30秒
execute if score #previous heat matches ..599 if score @s heat matches 600.. as @a[tag=using_camera, predicate=monitor:is_using_me] at @s run return run function monitor:observe/camera/heat/small