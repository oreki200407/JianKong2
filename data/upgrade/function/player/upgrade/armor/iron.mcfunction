execute unless entity @s[level=50..] run return run function upgrade:player/upgrade/armor/fail

xp add @s -50 levels
execute if items entity @s enderchest.10 iron_helmet run return run item modify entity @s enderchest.10 {"function": "set_item", "item": "diamond_helmet"}
execute if items entity @s enderchest.10 iron_chestplate run return run item modify entity @s enderchest.10 {"function": "set_item", "item": "diamond_chestplate"}
execute if items entity @s enderchest.10 iron_leggings run return run item modify entity @s enderchest.10 {"function": "set_item", "item": "diamond_leggings"}
item modify entity @s enderchest.10 {"function": "set_item", "item": "diamond_boots"}