execute unless entity @s[level=20..] run return run function upgrade:player/fail
xp add @s -20 levels
playsound block.anvil.use master @s
item modify entity @s enderchest.10 {function: "set_enchantments",enchantments:{"unbreaking":1}}