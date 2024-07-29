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

#儲存位置
data modify storage jk2:data root.monitor.observe.player.uuid set from entity @s UUID
function monitor:observe/player/store_location with storage jk2:data root.monitor.observe.player

gamemode spectator @s

#尋找目標監視器
execute store result score @s camera store result score #teleport_camera camera run data get entity @s SelectedItem.components."minecraft:custom_model_data"
execute as @e[type=marker, tag=camera] if score @s camera = #teleport_camera camera run tag @s add camera_destination
execute unless entity @e[type=marker, tag=camera_destination] run return run tellraw @s ["監視器", {"score": {"name": "@s", "objective": "camera"}}, "已被破壞"]

#傳送到目標監視器
execute at @e[type=marker, tag=camera_destination] run function monitor:observe/player/to_marker
tag @e[type=marker, tag=camera_destination] remove camera_destination