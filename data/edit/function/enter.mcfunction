###################################################
# 進入編輯模式
# 
# Name   : enter.mcfunction
# Path   : edit:
# As     : 打指令的玩家
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players set #mode system 1
execute as @e[type=armor_stand,tag=edit] run data merge entity @s {Glowing:1b}
execute as @e[type=armor_stand, tag=power_point] at @s run function edit:power_point/enter