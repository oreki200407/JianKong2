scoreboard players set #mode system 1
execute as @e[type=armor_stand,tag=edit] run data merge entity @s {Glowing:1b}
execute at @e[type=armor_stand,tag=power] run setblock ~ ~1 ~ oak_sign{back_text:{messages:["","↑↑↑↑","請在第一行","輸入電箱名稱"]},front_text:{messages:["","↑↑↑↑","請在第一行","輸入電箱名稱"]}}
execute as @e[type=armor_stand,tag=power] at @s run data modify block ~ ~1 ~ front_text.messages[0] set from entity @s CustomName
execute as @e[type=armor_stand,tag=power] at @s run data modify block ~ ~1 ~ back_text.messages[0] set from entity @s CustomName