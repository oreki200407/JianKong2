execute as @e[tag=door,type=marker] at @s run function control:lock_door with entity @s data
tellraw @a ["◎ 所有門已被", {"text": "上鎖", "color":"gold"}]