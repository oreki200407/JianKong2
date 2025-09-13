execute unless entity @s[level=25..] run return run function upgrade:player/fail
xp add @s -25 levels
playsound block.anvil.use master @s
item modify entity @s enderchest.10 {function: "set_enchantments",enchantments:{"sharpness":1}}