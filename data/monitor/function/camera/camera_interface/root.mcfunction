###################################################
# 使用監視器介面
# 
# Name   : root.mcfunction
# Path   : monitor:camera/camera_interface/
# As     : 安裝監視器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if score @s camera_interface matches 1 run function monitor:camera/camera_interface/summon/root
execute if score @s camera_interface matches 2 run function monitor:camera/camera_interface/cancel_summon
scoreboard players set @s camera_interface 0