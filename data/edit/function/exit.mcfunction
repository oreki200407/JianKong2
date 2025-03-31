scoreboard players set #mode system 2
execute as @e[type=armor_stand,tag=edit] run data merge entity @s {Glowing:0b}
execute as @e[type=armor_stand,tag=power_point] at @s if data block ~ ~1 ~ front_text.messages[0] run return run data modify entity @s CustomName set from block ~ ~1 ~ front_text.messages[0]
execute as @e[type=armor_stand,tag=power_point] at @s run data modify entity @s CustomName set from block ~ ~1 ~ back_text.messages[0]
execute at @e[type=armor_stand,tag=power_point] run setblock ~ ~1 ~ air