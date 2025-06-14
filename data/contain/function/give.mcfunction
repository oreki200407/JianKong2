#---給原料---
execute if entity @e[tag=contain_villager,tag=contain] run scoreboard players add 紙 info_monitor 1
execute if entity @e[tag=contain_skeleton,tag=contain] run scoreboard players add 骨頭 info_monitor 1
execute if entity @e[tag=contain_spider,tag=contain] run scoreboard players add 蜘蛛眼 info_monitor 1
execute if entity @e[tag=contain_zombie,tag=contain] run scoreboard players add 腐肉 info_monitor 1
execute if entity @e[tag=contain_creeper,tag=contain] run scoreboard players add 火藥 info_monitor 1

execute unless score #time system matches 1400.. run return run schedule function contain:give 60s
schedule clear contain:give