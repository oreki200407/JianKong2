###################################################
# 等級三的熱度檢查函數
# 
# Name   : check_heat.mcfunction
# Path   : monitor:observe/camera/level/three/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#等級三

#爆炸 300秒
execute if score @s heat matches 6000.. run return run function monitor:observe/camera/heat/explode

#大冒煙 240秒
execute if score #previous heat matches ..4799 if score @s heat matches 4800.. as @a[tag=using_camera, predicate=monitor:is_using_me] at @s run return run function monitor:observe/camera/heat/big

#中冒煙 180秒
execute if score #previous heat matches ..3599 if score @s heat matches 3600.. as @a[tag=using_camera, predicate=monitor:is_using_me] at @s run return run function monitor:observe/camera/heat/medium

#小冒煙 120秒
execute if score #previous heat matches ..2399 if score @s heat matches 2400.. as @a[tag=using_camera, predicate=monitor:is_using_me] at @s run return run function monitor:observe/camera/heat/small