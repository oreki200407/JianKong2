###################################################
# 當監控者死亡的時候執行
# 
# Name   : monitor.mcfunction
# Path   : game:death/
# As     : 血量歸零的監控者
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#如果處在變形狀態
execute if score @s morph matches 1.. run function morph:player/end with entity @s equipment.head.components."minecraft:custom_data"

tag @s add monitor_death