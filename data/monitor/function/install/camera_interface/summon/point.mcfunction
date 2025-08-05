###################################################
# 初始化被召喚的監視器
# 
# Name   : point.mcfunction
# Path   : monitor:install/camera_interface/
# As     : 被安裝的監視器
# At     : 安裝監視器的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

data merge entity @s {Particle: {type: "block", block_state: "air"}, Radius: 0f, Tags: ["camera"], Duration:-1}
scoreboard players operation @s camera = #camera_installer camera
#不要把這個tp改成rotate 它有傳送的
tp @s ~ ~1 ~ ~ ~
scoreboard players set @s camera_level 1