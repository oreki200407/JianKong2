effect give @s instant_health 1 0
playsound entity.silverfish.ambient ambient @s
item modify entity @s weapon.mainhand { "function": "set_count", "count": -1, "add": true }