clear @s nether_brick[custom_data~{"ammo": "shotgun"}] 1
item modify entity @s weapon {"function": "set_damage", "add": true, damage: 0.20}
function gun:reloaded