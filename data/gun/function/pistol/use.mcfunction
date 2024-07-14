advancement revoke @s only gun:pistol

execute if items entity @s weapon.offhand golden_axe[custom_data~{"gun":"pistol"}] run return fail
execute if items entity @s weapon.mainhand golden_axe[damage=32] run return run function gun:reloading

item modify entity @s weapon.mainhand {"function": "set_damage", "add": true, damage: -0.0333}
tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-1
playsound entity.generic.explode ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^1 run function gun:pistol/shoot