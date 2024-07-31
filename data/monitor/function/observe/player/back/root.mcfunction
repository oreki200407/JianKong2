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

data modify storage jk2:data root.monitor.observe.player.uuid set from entity @s UUID
function monitor:observe/player/back/relay with storage jk2:data root.monitor.observe.player
effect clear @s invisibility
give @s white_dye
tag @s remove using_camera
scoreboard players reset @s camera