###################################################
# 身為夜魅的tick
# 
# Name   : tick.mcfunction
# Path   : morph:phantom/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#使用煙火 無法被進度偵測到
execute if score @s use_firework matches 1.. run function morph:player/use_skill/skill_1