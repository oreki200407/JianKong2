summon item ~ ~ ~ {Item:{id:"stone",count:1},Tags:["gun_manual"]}
item replace entity @e[tag=gun_manual] contents with air
execute if items entity @s weapon * run item replace entity @e[tag=gun_manual] contents from entity @s weapon
item replace entity @s weapon from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[tag=gun_manual,limit=1] contents
kill @e[tag=gun_manual]

execute if items entity @s weapon golden_axe[item_name="手槍"] run return run function gun:pistol/reloading
execute if items entity @s weapon golden_axe[item_name="散彈槍"] run return run function gun:shotgun/reloading
execute if items entity @s weapon golden_axe[item_name="衝鋒槍"] run return run function gun:smg/reloading