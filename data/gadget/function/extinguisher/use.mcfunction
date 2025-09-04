###################################################
# 使用滅火器
# 
# Name   : use.mcfunction
# Path   : gadget:extinguisher/
# As     : 使用滅火器的人
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

advancement revoke @s only gadget:extinguisher

execute if score @s gun_cooldown matches 1.. run return fail
scoreboard players set @s gun_cooldown 5
execute anchored eyes positioned ^ ^ ^1 run function gadget:extinguisher/shoot
playsound block.redstone_torch.burnout ambient @a ~ ~ ~ 1 2

#物品損壞
execute unless items entity @s weapon tripwire_hook[item_name="滅火器",damage=20] run return run item modify entity @s weapon {function: "set_damage", add: true, damage: -0.051}

item replace entity @s weapon with air
playsound entity.item.break