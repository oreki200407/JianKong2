###################################################
# 釋放被捕獸夾抓到的實體
# 
# Name   : release.mcfunction
# Path   : gadget:trap/trapped/
# As     : 被捕獸夾抓到的實體
# At     : 世界重生點
# Loop   : 否
# Author : Alex Cai
###################################################

tag @s remove trapped

#釋放
attribute @s generic.movement_speed modifier remove jk2:trap
attribute @s generic.jump_strength modifier remove jk2:trap