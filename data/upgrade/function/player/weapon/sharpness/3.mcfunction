execute unless entity @s[level=45..] run return run function upgrade:player/fail
xp add @s -45 levels
playsound block.anvil.use master @s
item modify entity @s enderchest.10 {function: "set_enchantments",enchantments:{"sharpness":3}}