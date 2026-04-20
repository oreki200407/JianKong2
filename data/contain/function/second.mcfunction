###################################################
# 每秒確認怪物
# 
# Name   : second.mcfunction
# Path   : contain:
# As     : 世界重生點
# At     : As
# Loop   : 是，一分鐘
# Author : oreki20, Alex_Cai
###################################################

execute unless score #time system matches 1400.. run schedule function contain:second 1s

#---給原料---
execute if entity @e[tag=contain_villager, tag=contain, tag=!freeze, type=villager,    limit=1] run function contain:check_give {resource: "紙"}
execute if entity @e[tag=contain_skeleton, tag=contain, tag=!freeze, type=skeleton,    limit=1] run function contain:check_give {resource: "骨頭"}
execute if entity @e[tag=contain_spider,   tag=contain, tag=!freeze, type=cave_spider, limit=1] run function contain:check_give {resource: "蜘蛛眼"}
execute if entity @e[tag=contain_zombie,   tag=contain, tag=!freeze, type=zombie,      limit=1] run function contain:check_give {resource: "腐肉"}
execute if entity @e[tag=contain_creeper,  tag=contain, tag=!freeze, type=creeper,     limit=1] run function contain:check_give {resource: "火藥"}