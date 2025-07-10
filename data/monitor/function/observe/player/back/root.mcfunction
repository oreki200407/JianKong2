###################################################
# 回到使用前的位置
# 
# Name   : root.mcfunction
# Path   : monitor:observe/player/back/
# As     : 移動的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

data modify storage jk2:data root.monitor.observe.player.uuid0 set from entity @s UUID[0]
function monitor:observe/player/back/relay with storage jk2:data root.monitor.observe.player
effect clear @s invisibility
effect clear @s resistance
tag @s remove using_camera
attribute @s scale modifier remove jk2:monitor
scoreboard players reset @s camera