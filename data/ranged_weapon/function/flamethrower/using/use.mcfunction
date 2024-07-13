advancement revoke @s only ranged_weapon:flamethrower/use

execute anchored eyes positioned ^ ^ ^.5 summon marker run function ranged_weapon:flamethrower/using/shoot

#主手或副手拿
execute if items entity @s weapon.offhand diamond_axe[custom_data~{flamethrower: true}] run data modify storage jk2:data root.ranged_weapon.flamethrower.hand set value "offhand"
execute if items entity @s weapon diamond_axe[custom_data~{flamethrower: true}] run data modify storage jk2:data root.ranged_weapon.flamethrower.hand set value "mainhand"

#物品損壞
function ranged_weapon:flamethrower/item_damage/damage with storage jk2:data root.ranged_weapon.flamethrower