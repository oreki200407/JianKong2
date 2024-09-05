execute unless entity @s[level=30..] run return run function upgrade:player/fail
playsound block.anvil.use ambient @s
xp add @s -30 levels
execute if items entity @s enderchest.10 leather_helmet run return run item modify entity @s enderchest.10 {function: "set_item", item: "golden_helmet"}
execute if items entity @s enderchest.10 leather_chestplate run return run item modify entity @s enderchest.10 {function: "set_item", item: "golden_chestplate"}
execute if items entity @s enderchest.10 leather_leggings run return run item modify entity @s enderchest.10 {function: "set_item", item: "golden_leggings"}
item modify entity @s enderchest.10 {function: "set_item", item: "golden_boots"}