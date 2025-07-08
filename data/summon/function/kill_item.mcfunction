function summon:reset
execute as @e[type=item, distance=..1.5] if items entity @s contents glowstone_dust run return run kill
execute as @e[type=item, distance=..1.5] if items entity @s contents player_head[custom_data~{type:"operation"}] run kill