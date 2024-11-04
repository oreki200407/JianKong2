###################################################
# 初始化被召喚的監視器
# 
# Name   : marker.mcfunction
# Path   : monitor:install/camera_interface/
# As     : 被安裝的監視器
# At     : 安裝監視器的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

data merge entity @s {Duration:2147483647, Tags:["camera"]}
scoreboard players operation @s camera = #summon_camera camera
rotate @s ~ ~
scoreboard players set @s camera_level 1