playsound block.chest.locked ambient @s ~ ~ ~ 1 2
clear @s nether_brick 1
item modify entity @s weapon.mainhand {"function": "minecraft:set_components","components": {"minecraft:damage": 0}}
title @s actionbar ""
tag @s remove reloading