execute unless entity @s[level=40..] run return run function upgrade:player/fail
playsound block.anvil.use ambient @s
xp add @s -40 levels
execute if items entity @s enderchest.10 golden_chestplate run return run item modify entity @s enderchest.10 [{function: "set_item", item: "iron_chestplate"}, {function: "set_attributes", modifiers: [{id: "armor.chestplate", attribute: "armor", amount: 6, operation: "add_value", slot: "chest"}]}]
execute if items entity @s enderchest.10 golden_leggings run return run item modify entity @s enderchest.10 [{function: "set_item", item: "iron_leggings"}, {function: "set_attributes", modifiers: [{id: "armor.leggings", attribute: "armor", amount: 5, operation: "add_value", slot: "legs"}]}]
item modify entity @s enderchest.10 [{function: "set_item", item: "iron_boots"}, {function: "set_attributes", modifiers: [{id: "armor.boots", attribute: "armor", amount: 2, operation: "add_value", slot: "feet"}]}]