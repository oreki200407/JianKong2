#救援
execute if entity @s[level=..109] run return run function power:use/fail
xp add @s -110
execute as @e[type=armor_stand, tag=death_stand] run function game:death/stand/revive