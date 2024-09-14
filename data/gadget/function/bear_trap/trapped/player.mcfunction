###################################################
# 被捕獸夾抓到的玩家，要跳10下才能解鎖
# 
# Name   : player.mcfunction
# Path   : gadget:bear_trap/trapped/
# As     : 被捕獸夾抓到的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#跳10次才能解除
execute if score @s jump_break matches 10 run function gadget:bear_trap/trapped/release