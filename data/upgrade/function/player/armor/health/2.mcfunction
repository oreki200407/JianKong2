execute unless entity @s[level=35..] run return run function upgrade:player/fail
xp add @s -35 levels
playsound block.anvil.use master @s

execute if items entity @s enderchest.10 #chest_armor run return run item modify entity @s enderchest.10 {function: "set_attributes","modifiers": [{"id": "jk2:add_health_chest","attribute": "minecraft:max_health","amount": 6,"operation": "add_value","slot": "chest"}], replace: false}
execute if items entity @s enderchest.10 #leg_armor run return run item modify entity @s enderchest.10 {function: "set_attributes","modifiers": [{"id": "jk2:add_health_legs","attribute": "minecraft:max_health","amount": 6,"operation": "add_value","slot": "legs"}], replace: false}
item modify entity @s enderchest.10 {function: "set_attributes","modifiers": [{"id": "jk2:add_health_feet","attribute": "minecraft:max_health","amount": 6,"operation": "add_value","slot": "feet"}], replace: false}