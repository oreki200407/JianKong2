advancement revoke @s only gun:pistol

execute if items entity @s weapon breeze_rod[damage=32] run return run function gun:pistol/reloading
execute if score @s gun_cooldown matches 1.. run return fail

scoreboard players set @s gun_cooldown 10
item modify entity @s weapon {"function": "set_damage", "add": true, damage: -0.09}
tag @s[tag=!shooter] add shooter
rotate @s ~ ~-1
playsound entity.generic.explode master @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^1 run function gun:pistol/shoot