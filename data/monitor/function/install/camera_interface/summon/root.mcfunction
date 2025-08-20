###################################################
# 召喚監視器
# 
# Name   : root.mcfunction
# Path   : monitor:install/camera_interface/summon/
# As     : 安裝監視器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute positioned ~ ~1 ~ unless function gun:can_through run return run function monitor:install/camera_interface/summon/fail

scoreboard players add 目前監視器 info_monitor 1
tellraw @s ["◎ 監視器", {score: {name: "@s", objective: "camera"}}, {text: "安裝成功", color: "gold"}]
scoreboard players operation #camera_installer camera = @s camera
execute summon area_effect_cloud run function monitor:install/camera_interface/summon/point
fill ~ ~1 ~ ~ ~2 ~ air replace barrier

execute as @a[team=monitor] run function monitor:observe/player/give/root

function monitor:install/camera_interface/exit