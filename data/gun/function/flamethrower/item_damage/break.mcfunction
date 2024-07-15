###################################################
# 噴火器耐久度歸零
# 
# Name   : break.mcfunction
# Path   : gun:flamethrower/item_damage/
# As     : 使用噴火器的玩家
# At     : As
# Loop   : 否
# Author : Alex Cai
###################################################

item replace entity @s weapon with air
playsound entity.item.break