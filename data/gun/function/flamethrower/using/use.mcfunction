###################################################
# 使用噴火器的時候執行
# 
# Name   : use.mcfunction
# Path   : gun:flamethrower/using/
# As     : 使用噴火器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only gun:flamethrower

#召喚火marker
execute anchored eyes positioned ^ ^ ^.5 summon marker run function gun:flamethrower/using/shoot

#物品損壞
playsound block.fire.ambient ambient @s ~ ~ ~ 1 2
execute unless items entity @s weapon diamond_axe[damage=1561] run return run item modify entity @s weapon {function: "set_damage", add: true, damage: -0.001}

item replace entity @s weapon with air
playsound entity.item.break