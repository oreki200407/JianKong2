###################################################
# 凍結怪物
# 
# Name   : root.mcfunction
# Path   : contain:control/freeze/
# As     : 凍結互動實體，tag=contain_freeze
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players set @s contain_freeze 0
scoreboard players enable @s contain_freeze

tag @s add temp
execute as @e[tag=contain_villager, tag=contain, type=villager   ] run function contain:control/freeze/tellraw {freeze: 1, unfreeze: 2}
execute as @e[tag=contain_skeleton, tag=contain, type=skeleton   ] run function contain:control/freeze/tellraw {freeze: 3, unfreeze: 4}
execute as @e[tag=contain_spider,   tag=contain, type=cave_spider] run function contain:control/freeze/tellraw {freeze: 5, unfreeze: 6}
execute as @e[tag=contain_zombie,   tag=contain, type=zombie     ] run function contain:control/freeze/tellraw {freeze: 7, unfreeze: 8}
execute as @e[tag=contain_creeper,  tag=contain, type=creeper    ] run function contain:control/freeze/tellraw {freeze: 9, unfreeze: 10}
tag @s remove temp