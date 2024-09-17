#救援
execute if entity @s[level=..109] run return run function power:use/fail
xp add @s -110
execute as @e[type=armor_stand, tag=death_stand] run function game:death/stand/revive

tellraw @s ["◎ 你已成功使用電箱-", {"text": "立即救援", "color":"gold"}]
playsound item.trident.hit_ground ambient @s