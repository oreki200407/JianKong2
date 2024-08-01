###################################################
# 苦力怕boss初始化
# 
# Name   : initial.mcfunction
# Path   : monster:boss/creeper/
# As     : 苦力怕boss
# At     : 打指令的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

#30秒到90秒隨機切換一次
execute store result score @s boss_time run random value 600..1800

execute store result score @s boss_status run random value 0..1