tag @a[team=survivor,distance=..5] add medkit
effect give @a[tag=medkit] regeneration 8 3
tellraw @a[tag=medkit] ["◎ 你獲得了", {"text": "醫療箱", "color":"gold"},"的治療效果"]
playsound block.beacon.activate ambient @a[tag=medkit]
tag @a[tag=medkit] remove medkit
item modify entity @s weapon.mainhand { "function": "set_count", "count": -1, "add": true }