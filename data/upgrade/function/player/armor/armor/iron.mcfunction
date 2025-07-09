execute unless entity @s[level=50..] run return run function upgrade:player/fail
playsound block.anvil.use ambient @s
xp add @s -50 levels

execute if items entity @s enderchest.10 iron_chestplate run return run item modify entity @s enderchest.10 [{function: "set_item", item: "diamond_chestplate"}, {function: "set_attributes", modifiers: [{id: "armor.chestplate", attribute: "armor", amount: 8, operation: "add_value", slot: "chest"}], replace: false}]
execute if items entity @s enderchest.10 iron_leggings run return run item modify entity @s enderchest.10 [{function: "set_item", item: "diamond_leggings"}, {function: "set_attributes", modifiers: [{id: "armor.leggings", attribute: "armor", amount: 6, operation: "add_value", slot: "legs"}], replace: false}]
item modify entity @s enderchest.10 [{function: "set_item", item: "diamond_boots"}, {function: "set_attributes", modifiers: [{id: "armor.boots", attribute: "armor", amount: 3, operation: "add_value", slot: "feet"}], replace: false}]