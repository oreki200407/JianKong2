###################################################
# 新的電箱
# 
# Name   : new_power.mcfunction
# Path   : power:switch/
# As     : 新的電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

function power:switch/set

#刪除舊的
execute as @e[type=armor_stand, tag=power] at @s run function power:switch/remove_power

tag @s add power