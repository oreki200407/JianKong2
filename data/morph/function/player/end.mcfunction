###################################################
# 人體變形結束
# 
# Name   : end.mcfunction
# Path   : morph:player/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players reset @s morph
tag @s remove morph

#將怪物歸還給可供變形的怪物陣列
data modify storage jk2:data root.morph.monsters append from entity @s ArmorItems[3].components."minecraft:custom_data".monster
clear @s