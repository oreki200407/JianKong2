###################################################
# 回到使用前的位置
# 
# Name   : root.mcfunction
# Path   : monitor:observe/back/
# As     : 移動的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

data modify storage jk2:data root.monitor.observe.player.uuid set from entity @s UUID
function monitor:observe/back/relay with storage jk2:data root.monitor.observe.player
gamemode adventure
tag @s remove using_monitor