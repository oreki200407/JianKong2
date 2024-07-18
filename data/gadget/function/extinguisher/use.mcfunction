advancement revoke @s only gadget:extinguisher

execute if score @s gun_cooldown matches 1.. run return fail
scoreboard players set @s gun_cooldown 5
execute anchored eyes positioned ^ ^ ^1 run function gadget:extinguisher/shoot

#物品損壞
playsound block.fire.ambient ambient @s ~ ~ ~ 1 2
execute unless items entity @s weapon iron_axe[damage=20] run return run item modify entity @s weapon {"function": "set_damage", "add": true, damage: -0.05}

item replace entity @s weapon with air
playsound entity.item.break