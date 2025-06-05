###################################################
# 清除附近的白色玻璃
# 
# Name   : kill_item.mcfunction
# Path   : upgrade:
# As     : 求生者
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

function upgrade:reset
execute as @e[type=item, distance=..1.5] if items entity @s contents gunpowder[custom_data={upgrade: true}] run kill