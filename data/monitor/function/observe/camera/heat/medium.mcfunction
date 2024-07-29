###################################################
# 中冒煙
# 
# Name   : medium.mcfunction
# Path   : monitor:observe/camera/heat/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tellraw @a[tag=using_camera, predicate=monitor:is_using_me] "中冒煙"