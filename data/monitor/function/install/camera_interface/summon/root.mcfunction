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
scoreboard players add 目前監視器 info_monitor 1
tellraw @s ["◎ 監視器", {"score": {"name": "@s", "objective": "camera"}}, {"text": "安裝成功", "color":"gold"}]
playsound block.anvil.land
execute at @s summon area_effect_cloud run function monitor:install/camera_interface/summon/point
function monitor:install/camera_interface/exit