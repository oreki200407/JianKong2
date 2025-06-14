item replace entity @s weapon from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

execute if items entity @s weapon golden_axe[item_name="手槍"] run return run function gun:pistol/reloading
execute if items entity @s weapon golden_axe[item_name="散彈槍"] run return run function gun:shotgun/reloading
execute if items entity @s weapon golden_axe[item_name="衝鋒槍"] run return run function gun:smg/reloading