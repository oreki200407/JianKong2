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

function monster:boss/bossbar
execute store result score @s boss_status run random value 0..1
function monster:boss/creeper/change_status