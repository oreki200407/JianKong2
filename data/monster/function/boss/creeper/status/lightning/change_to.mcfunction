###################################################
# 苦力怕boss變換成閃電狀態
# 
# Name   : change_to.mcfunction
# Path   : monster:boss/creeper/status/lightning/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players set @s boss_status 1
data modify entity @s powered set value true
attribute @s movement_speed base set 0.4