###################################################
# 取消召喚監視器
# 
# Name   : cancel_summon.mcfunction
# Path   : monitor:install/camera_interface/
# As     : 安裝監視器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

gamemode adventure @s
tp @s @e[type=armor_stand, tag=spawn_monitor, limit=1]
scoreboard players reset @s camera