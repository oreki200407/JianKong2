###################################################
# 離開編輯模式
# 
# Name   : exit.mcfunction
# Path   : edit:
# As     : 打指令的玩家
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players set #mode system 2
execute as @e[type=armor_stand,tag=edit] run data merge entity @s {Glowing:0b}
execute as @e[type=armor_stand,tag=power_point] at @s run function edit:power_point/exit