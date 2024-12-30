###################################################
# 釋放被捕獸夾抓到的實體
# 
# Name   : release.mcfunction
# Path   : gadgets:bear_trap/trapped/
# As     : 被捕獸夾抓到的實體
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove trapped

#釋放
attribute @s movement_speed modifier remove jk2:bear_trap
attribute @s jump_strength modifier remove jk2:bear_trap