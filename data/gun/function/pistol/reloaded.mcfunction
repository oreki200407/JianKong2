clear @s nether_brick[item_name="手槍彈夾"] 1
item modify entity @s weapon {"function": "set_damage", damage: 1}
function gun:reloaded