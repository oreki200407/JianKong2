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
execute if entity @e[type=interaction, tag=freeze] run return fail

#---給原料---
execute if entity @e[type=villager, tag=contain_villager,tag=contain] run function contain:check_give {resource: "紙"}
execute if entity @e[type=skeleton, tag=contain_skeleton,tag=contain] run function contain:check_give {resource: "骨頭"}
execute if entity @e[type=cave_spider, tag=contain_spider,tag=contain] run function contain:check_give {resource: "蜘蛛眼"}
execute if entity @e[type=zombie, tag=contain_zombie,tag=contain] run function contain:check_give {resource: "腐肉"}
execute if entity @e[type=creeper, tag=contain_creeper,tag=contain] run function contain:check_give {resource: "火藥"}