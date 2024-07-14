###################################################
# 噴火器減少耐久度
# 
# Name   : damage.mcfunction
# Path   : gun:flamethrower/item_damage/
# As     : 使用噴火器的玩家
# At     : As
# Loop   : 否
# Author : Alex Cai
###################################################

$item modify entity @s weapon.$(hand) {"function": "set_damage", "add": true, damage: -0.001}
$execute if items entity @s weapon.$(hand) diamond_axe[damage=1561] run function gun:flamethrower/item_damage/break with storage jk2:data root.gun.flamethrower