###################################################
# 檢查是否給予監視器
# 
# Name   : root.mcfunction
# Path   : monitor:observe/player/give/
# As     : 監控者
# At     : 世界重生點
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

#1 2 3 不須偵測初始數量
execute if entity @e[type=area_effect_cloud, tag=camera, scores={camera=1}] run function monitor:observe/player/give/run {number: 1}
execute if entity @e[type=area_effect_cloud, tag=camera, scores={camera=2}] run function monitor:observe/player/give/run {number: 2}
execute if entity @e[type=area_effect_cloud, tag=camera, scores={camera=3}] run function monitor:observe/player/give/run {number: 3}
#4以後的要
execute if score 監視器 lobby matches 4.. if entity @e[type=area_effect_cloud, tag=camera, scores={camera=4}] run function monitor:observe/player/give/run {number: 4}
execute if score 監視器 lobby matches 5.. if entity @e[type=area_effect_cloud, tag=camera, scores={camera=5}] run function monitor:observe/player/give/run {number: 5}
execute if score 監視器 lobby matches 6.. if entity @e[type=area_effect_cloud, tag=camera, scores={camera=6}] run function monitor:observe/player/give/run {number: 6}
execute if score 監視器 lobby matches 7.. if entity @e[type=area_effect_cloud, tag=camera, scores={camera=7}] run function monitor:observe/player/give/run {number: 7}
execute if score 監視器 lobby matches 8.. if entity @e[type=area_effect_cloud, tag=camera, scores={camera=8}] run function monitor:observe/player/give/run {number: 8}
execute if score 監視器 lobby matches 9 if entity @e[type=area_effect_cloud, tag=camera, scores={camera=9}] run function monitor:observe/player/give/run {number: 9}