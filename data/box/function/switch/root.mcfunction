###################################################
# 更換電箱
# 
# Name   : root.mcfunction
# Path   : box:switch/
# As     : 世界重生點
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

#從所有電箱點位中挑一個新的出來
execute as @e[type=armor_stand, tag=box_point, tag=!box, sort=random, limit=1] at @s run function box:switch/new_box