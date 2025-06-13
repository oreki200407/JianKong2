execute unless entity @s[level=40..] run return run function upgrade:player/fail
playsound block.anvil.use ambient @s
xp add @s -40 levels
execute if items entity @s enderchest.10 golden_chestplate run return run item modify entity @s enderchest.10 {function: "set_item", item: "iron_chestplate"}
execute if items entity @s enderchest.10 golden_leggings run return run item modify entity @s enderchest.10 {function: "set_item", item: "iron_leggings"}
item modify entity @s enderchest.10 {function: "set_item", item: "iron_boots"}