###################################################
# 怪物給原料
# 
# Name   : give.mcfunction
# Path   : contain:
# As     : 世界重生點
# At     : As
# Loop   : 是，一分鐘
# Author : oreki20
###################################################

execute unless score #time system matches 1400.. run schedule function contain:give 60s
execute if entity @e[type=interaction, tag=freeze] run return fail

#---給原料---
execute if entity @e[type=villager, tag=contain_villager,tag=contain] run scoreboard players add 紙 info_monitor 1
execute if entity @e[type=skeleton, tag=contain_skeleton,tag=contain] run scoreboard players add 骨頭 info_monitor 1
execute if entity @e[type=cave_spider, tag=contain_spider,tag=contain] run scoreboard players add 蜘蛛眼 info_monitor 1
execute if entity @e[type=zombie, tag=contain_zombie,tag=contain] run scoreboard players add 腐肉 info_monitor 1
execute if entity @e[type=creeper, tag=contain_creeper,tag=contain] run scoreboard players add 火藥 info_monitor 1