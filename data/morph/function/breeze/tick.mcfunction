###################################################
# 身為旋風使者的tick
# 
# Name   : tick.mcfunction
# Path   : morph:breeze/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#使用風彈 無法被進度偵測到
execute if score @s use_wind_charge matches 1.. run function morph:player/use_skill/skill_1