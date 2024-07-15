advancement revoke @s only gun:pistol

execute if items entity @s weapon golden_axe[damage=32] run return run function gun:pistol/reloading
item modify entity @s weapon {"function": "set_damage", "add": true, damage: -0.0333}
tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-1
playsound entity.generic.explode ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^1 run function gun:pistol/shoot