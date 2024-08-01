###################################################
# 苦力怕boss進入準備爆炸階段
# 
# Name   : prepare_explosion.mcfunction
# Path   : monster:boss/creeper/status/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute on passengers run kill
scoreboard players set @s boss_status 2
data modify entity @s ignited set value true