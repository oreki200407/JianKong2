clear @s nether_brick[custom_data~{"ammo": "smg"}] 1
item modify entity @s weapon {"function": "set_damage", damage: 1}
function gun:reloaded