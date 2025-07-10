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

execute if score @s camera_cooldown matches 1.. run return fail
scoreboard players set @s camera_cooldown 10

execute unless score 電力 info_monitor matches 1.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "使用監視器", "color":"gold"}]
execute if score 禁止監控 info_monitor matches 1.. run return run tellraw @s ["◎ 目前監視器正在被", {text: "禁止使用", color: "gold"}]

#尋找目標監視器
execute store result score #teleport_camera camera run data get entity @s SelectedItem.components."minecraft:custom_model_data".floats[]
execute as @e[type=area_effect_cloud, tag=camera] if score @s camera = #teleport_camera camera run tag @s add camera_destination
execute unless entity @e[type=area_effect_cloud, tag=camera_destination] run return run tellraw @s ["◎ 監視器", {score: {name: "@s", objective: "camera"}}, {text: "已損壞", color: "gold"}]

#儲存位置
scoreboard players operation @s camera = #teleport_camera camera
data modify storage jk2:data root.monitor.observe.player.uuid0 set from entity @s UUID[0]
execute if entity @s[tag=!using_camera] run function monitor:observe/player/store_location with storage jk2:data root.monitor.observe.player

#傳送到目標監視器
tag @s add using_camera
effect give @s invisibility infinite 0 true
execute rotated as @e[type=area_effect_cloud, tag=camera_destination, limit=1] run rotate @s ~ ~
ride @s dismount
ride @s mount @e[type=area_effect_cloud, tag=camera_destination, limit=1]
tag @e[type=area_effect_cloud, tag=camera_destination] remove camera_destination