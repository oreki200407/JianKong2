###################################################
# 爆炸
# 
# Name   : explode.mcfunction
# Path   : monitor:observe/camera/heat/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute as @a[tag=using_camera, predicate=monitor:is_using_me] run function monitor:observe/player/camera_explode
kill