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

#召喚火marker
execute anchored eyes positioned ^ ^ ^.5 summon marker run function gun:flamethrower/using/shoot

#主手或副手拿
execute if items entity @s weapon.offhand diamond_axe[custom_data~{gun: "flamethrower"}] run data modify storage jk2:data root.gun.flamethrower.hand set value "offhand"
execute if items entity @s weapon diamond_axe[custom_data~{gun: "flamethrower"}] run data modify storage jk2:data root.gun.flamethrower.hand set value "mainhand"

#物品損壞
function gun:flamethrower/item_damage/damage with storage jk2:data root.gun.flamethrower