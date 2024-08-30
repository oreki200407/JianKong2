###################################################
# 人體變形結束
# 
# Name   : root.mcfunction
# Path   : morph:player/end/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players reset @s morph
tag @s remove morph
function morph:player/end/return_monster with entity @s