advancement revoke @s only gun:smg

execute if items entity @s weapon.offhand golden_axe[custom_data~{"gun":"smg"}] run data modify storage jk2:data root.gun.smg.hand set value "offhand"
execute if items entity @s weapon golden_axe[custom_data~{"gun":"smg"}] run data modify storage jk2:data root.gun.smg.hand set value "mainhand"

function gun:smg/reload with storage jk2:data root.gun.smg