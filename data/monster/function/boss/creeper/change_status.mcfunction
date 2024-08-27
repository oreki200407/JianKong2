###################################################
# 苦力怕boss變換狀態
# 
# Name   : change_status.mcfunction
# Path   : monster:boss/creeper/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

#15秒到30秒隨機切換一次
execute store result score @s boss_time run random value 300..600

#切換
execute if score @s boss_status matches 1 run return run function monster:boss/creeper/status/normal/change_to
function monster:boss/creeper/status/lightning/change_to