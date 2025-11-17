advancement revoke @s only gun:shotgun

execute if items entity @s weapon breeze_rod[damage=6] run return run function gun:shotgun/reloading
execute if score @s gun_cooldown matches 1.. run return fail
scoreboard players set @s gun_cooldown 5
item modify entity @s weapon {"function": "set_damage", "add": true, damage: -0.1667}
tag @s[tag=!shooter] add shooter
rotate @s ~ ~-8
playsound entity.generic.explode master @a ~ ~ ~ 0.3
execute anchored eyes positioned ^ ^ ^1 run function gun:shotgun/shoot