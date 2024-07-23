###################################################
# 右鍵監視器
# 
# Name   : use.mcfunction
# Path   : monitor:observe/
# As     : 使用監視器的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:observe/use

#儲存位置
data modify storage jk2:data root.monitor.observe.player.uuid set from entity @s UUID
function monitor:observe/store_location with storage jk2:data root.monitor.observe.player

gamemode spectator @s

data modify storage jk2:data root.monitor.observe.player.destination set from entity @s SelectedItem.components."minecraft:custom_model_data"
function monitor:observe/to_marker with storage jk2:data root.monitor.observe.player

tag @s add using_monitor