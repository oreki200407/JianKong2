###################################################
# 初始化被召喚的監視器
# 
# Name   : marker.mcfunction
# Path   : monitor:camera/camera_interface/
# As     : 被安裝的監視器
# At     : 安裝監視器的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add camera
scoreboard players operation @s camera = #summon_camera camera
tp @s ~ ~ ~ ~ ~
scoreboard players set @s camera_level 1