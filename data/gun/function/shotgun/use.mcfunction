advancement revoke @s only gun:shotgun

execute if items entity @s weapon.offhand golden_axe[custom_data~{"gun":"shotgun"}] run return fail
execute if items entity @s weapon golden_axe[damage=32] run return run function gun:shotgun/reloading

item modify entity @s weapon.mainhand {"function": "set_damage", "add": true, damage: -0.20}
tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-8
playsound entity.generic.explode ambient @a ~ ~ ~
execute anchored eyes positioned ^ ^ ^1 run function gun:shotgun/shoot