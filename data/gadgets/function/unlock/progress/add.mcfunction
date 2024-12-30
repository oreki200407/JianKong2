###################################################
# 推進開鎖進度
# 
# Name   : add.mcfunction
# Path   : gadgets:unlock/progress/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players add @s unlock_progess 1
execute store result score @s unlock_slot run random value 0..8