execute unless entity @s[level=30..] run return run function upgrade:player/fail
xp add @s -30 levels
playsound block.anvil.use ambient @s
item modify entity @s enderchest.10 {function: "set_enchantments",enchantments:{"looting":1}}