###################################################
# 初始化被召喚的監視器
# 
# Name   : marker.mcfunction
# Path   : monitor:camera/camera_interface/
# As     : 被召喚的監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add camera
scoreboard players operation @s camera = #summon_camera camera
tp @s ~ ~ ~ ~ ~