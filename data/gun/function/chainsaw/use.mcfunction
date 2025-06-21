advancement revoke @s only gun:chainsaw
tag @s add shooter
execute anchored eyes positioned ^ ^ ^1 run function gun:chainsaw/shoot

playsound block.grindstone.use ambient @a ~ ~ ~ 1 2
execute unless items entity @s weapon diamond_axe[damage=2000] run return run item modify entity @s weapon gun:damage
item replace entity @s weapon with air
playsound entity.item.break