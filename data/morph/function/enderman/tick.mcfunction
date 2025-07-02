###################################################
# 身為終界使者的tick
# 
# Name   : tick.mcfunction
# Path   : morph:enderman/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute unless score @s use_ender_pearl matches 1.. run return fail

#使用終界珍珠 無法被進度偵測到
function morph:player/use_skill/skill_1
scoreboard players reset @s use_ender_pearl