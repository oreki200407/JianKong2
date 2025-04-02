###################################################
# 編輯模式
# 
# Name   : edit.mcfunction
# Path   : tick:
# As     : 世界重生點
# At     : As
# Loop   : 是
# Author : oreki20
###################################################

#沒有告示牌就重新放
execute as @e[type=armor_stand,tag=power_point] at @s unless block ~ ~1 ~ oak_sign run function edit:power_point/enter