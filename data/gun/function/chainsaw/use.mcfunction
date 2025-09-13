advancement revoke @s only gun:chainsaw
tag @s add shooter
execute anchored eyes positioned ^ ^ ^1 run function gun:chainsaw/shoot

playsound block.grindstone.use master @a ~ ~ ~ 1 2
execute unless items entity @s weapon blaze_rod[damage=2000] run return run item modify entity @s weapon {function: "set_damage", add: true, damage: -0.001}
item replace entity @s weapon with air
playsound entity.item.break