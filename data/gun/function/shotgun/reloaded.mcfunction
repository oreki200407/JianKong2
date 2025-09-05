clear @s brick[item_name="散彈槍子彈"] 1
item modify entity @s weapon {"function": "set_damage", "add": true, damage: 0.20}
function gun:reloaded
execute unless items entity @s weapon breeze_rod[damage=0] run function gun:shotgun/reloading