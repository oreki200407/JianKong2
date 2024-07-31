###################################################
# 召喚監視器
# 
# Name   : root.mcfunction
# Path   : monitor:install/camera_interface/summon/
# As     : 安裝監視器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players operation #summon_camera camera = @s camera
execute at @s summon area_effect_cloud run function monitor:install/camera_interface/summon/marker
gamemode adventure @s
tp @s @e[type=marker, tag=spawn_monitor, limit=1]
scoreboard players reset @s camera