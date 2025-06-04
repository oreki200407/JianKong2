effect give @s resistance 5 4
playsound block.scaffolding.break ambient @s
item modify entity @s weapon.mainhand { "function": "set_count", "count": -1, "add": true }