#遊戲
execute as @e[type=item, distance=..1.5] if items entity @s contents #power:all run data merge entity @s {PickupDelay:0s}

execute store success score @s light_game run clear @s coal 0
execute as @a[scores={light_game=1}] at @e[type=marker,tag=light_game] run return run function power:light_game/switch/root

execute store success score @s puzzle_game run clear @s echo_shard 0
execute as @a[scores={puzzle_game=1}] at @e[type=marker,tag=puzzle_game] run return run function power:puzzle_game/switch/root

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta 0
execute as @a[scores={netwalk_game=1}] at @e[type=marker, tag=netwalk_game] run return run function power:netwalk_game/switch/root