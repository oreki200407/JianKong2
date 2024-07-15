###################################################
# 使用磨刀石
# 
# Name   : use.mcfunction
# Path   : gadget:wheststone/
# As     : 輸入指令的人
# At     : 世界重生點
# Loop   : 是
# Author : Alex Cai
###################################################

#此處不宜用進度
#https://bugs.mojang.com/browse/MC-251555

#https://medium.com/starbugs/see-why-floating-point-error-can-not-be-avoided-from-ieee-754-809720b32175
#鐵劍耐久度250
item modify entity @s weapon {"function": "set_damage", "add": true, "damage": 0.0041}
#磨刀石耐久度50
item modify entity @s weapon.offhand {"function": "set_damage", "add": true, "damage": -0.021}

execute unless items entity @s weapon.offhand netherite_ingot[damage=50] run return fail

item replace entity @s weapon.offhand with air
playsound entity.item.break