###################################################
# 花電力
# 
# Name   : cost.mcfunction
# Path   : monitor:observe/camera/electricity/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players remove 電力 info_monitor 1

#沒電了
execute unless score 電力 info_monitor matches 1.. as @a[tag=using_camera, predicate=monitor:is_using_me] run function monitor:observe/player/back/root