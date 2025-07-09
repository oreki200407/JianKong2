execute unless entity @s[level=45..] run return run function upgrade:player/fail
xp add @s -45 levels
playsound block.anvil.use ambient @s
item modify entity @s enderchest.10 {function: "set_attributes","modifiers": [{"id": "jk2:add_health","attribute": "minecraft:max_health","amount": 9,"operation": "add_value","slot": ["head","chest","legs","feet"]}]}