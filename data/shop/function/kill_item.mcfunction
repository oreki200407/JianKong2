function shop:reset
execute as @e[type=item, distance=..1.5] if items entity @s contents *[custom_data~{type:"shop"}] run kill