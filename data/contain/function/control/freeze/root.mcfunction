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
execute as @e[type=villager, tag=contain_villager, tag=contain] run function contain:control/freeze/tellraw {freeze:1,unfreeze:2}
execute as @e[type=skeleton, tag=contain_skeleton, tag=contain] run function contain:control/freeze/tellraw {freeze:3,unfreeze:4}
execute as @e[type=cave_spider, tag=contain_spider, tag=contain] run function contain:control/freeze/tellraw {freeze:5,unfreeze:6}
execute as @e[type=zombie, tag=contain_zombie, tag=contain] run function contain:control/freeze/tellraw {freeze:7,unfreeze:8}
execute as @e[type=creeper, tag=contain_creeper, tag=contain] run function contain:control/freeze/tellraw {freeze:9,unfreeze:10}
tag @s remove temp