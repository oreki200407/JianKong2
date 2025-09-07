###################################################
# 退出監視器
# 
# Name   : exit.mcfunction
# Path   : monitor:install/camera_interface/
# As     : 安裝監視器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

gamemode adventure
tp @s @e[type=marker, tag=lobby, limit=1]
scoreboard players reset @s camera
playsound ui.button.click ambient
scoreboard players reset @s camera_interface