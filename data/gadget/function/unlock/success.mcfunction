tellraw @s ["◎ 鐵門已", {text: "解鎖", color: "gold"}]
playsound block.chest.open master
xp add @s 1 levels
execute as @n[type=marker, tag=door, distance=..2] at @s run function gadget:unlock/door with entity @s data