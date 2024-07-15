###################################################
# 使用噴火器的時候執行
# 
# Name   : use.mcfunction
# Path   : gun:flamethrower/using/
# As     : 使用噴火器的玩家
# At     : As
# Loop   : 否
# Author : Alex Cai
###################################################

advancement revoke @s only gun:flamethrower

#副手拿無效
execute if items entity @s weapon.offhand diamond_axe[custom_data~{"gun": "flamethrower"}] run return fail

#召喚火marker
execute anchored eyes positioned ^ ^ ^.5 summon marker run function gun:flamethrower/using/shoot

#物品損壞
item modify entity @s weapon {"function": "set_damage", "add": true, damage: -0.001}
execute if items entity @s weapon diamond_axe[damage=1561] run function gun:flamethrower/item_damage/break