execute unless entity @s[level=30..] run return run function upgrade:player/fail
playsound block.anvil.use ambient @s
xp add @s -30 levels
execute if items entity @s enderchest.10 leather_chestplate run return run item modify entity @s enderchest.10 [{function: "set_item", item: "golden_chestplate"}, {function: "set_attributes", modifiers: [{id: "armor.chestplate", attribute: "armor", amount: 5, operation: "add_value", slot: "chest"}], replace:0b}]
execute if items entity @s enderchest.10 leather_leggings run return run item modify entity @s enderchest.10 [{function: "set_item", item: "golden_leggings"}, {function: "set_attributes", modifiers: [{id: "armor.leggings", attribute: "armor", amount: 3, operation: "add_value", slot: "legs"}], replace:0b}]
item modify entity @s enderchest.10 [{function: "set_item", item: "golden_boots"}, {function: "set_attributes", modifiers: [{id: "armor.boots", attribute: "armor", amount: 1, operation: "add_value", slot: "feet"}], replace:0b}]