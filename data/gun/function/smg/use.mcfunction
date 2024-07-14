advancement revoke @s only gun:smg

execute if items entity @s weapon.offhand golden_axe[custom_data~{"gun":"smg"}] run return fail
execute if items entity @s weapon.mainhand golden_axe[damage=32] run return run function gun:reloading

item modify entity @s weapon.mainhand {"function": "set_damage", "add": true, damage: -0.0333}
tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-.7
playsound ui.button.click ambient @a ~ ~ ~ 1 1.5
execute anchored eyes positioned ^ ^ ^1 run function gun:smg/shoot