###################################################
# 苦力怕boss變換成普通狀態
# 
# Name   : change_to.mcfunction
# Path   : monster:boss/creeper/status/normal/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players set @s boss_status 0

attribute @s generic.movement_speed base set 0.25