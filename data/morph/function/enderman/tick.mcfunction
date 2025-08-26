###################################################
# 身為終界使者的tick
# 
# Name   : tick.mcfunction
# Path   : morph:enderman/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#使用終界珍珠 無法被進度偵測到
execute if score @s use_ender_pearl matches 1.. run function morph:player/use_skill/skill_1