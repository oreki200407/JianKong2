###################################################
# 使用監視器
# 
# Name   : use.mcfunction
# Path   : monitor:observe/player/
# As     : 使用監視器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:observe/use

#尋找目標監視器
execute store result score @s camera store result score #teleport_camera camera run data get entity @s SelectedItem.components."minecraft:custom_model_data"
execute as @e[type=area_effect_cloud, tag=camera] if score @s camera = #teleport_camera camera run tag @s add camera_destination
execute unless entity @e[type=area_effect_cloud, tag=camera_destination] run return run tellraw @s ["監視器", {"score": {"name": "@s", "objective": "camera"}}, "已被破壞"]

#儲存位置
data modify storage jk2:data root.monitor.observe.player.uuid set from entity @s UUID
function monitor:observe/player/store_location with storage jk2:data root.monitor.observe.player

#傳送到目標監視器
tag @s add using_camera
clear @s white_dye
effect give @s invisibility infinite 0 true
ride @s mount @e[type=area_effect_cloud,tag=camera_destination,limit=1]
tag @e[type=area_effect_cloud, tag=camera_destination] remove camera_destination