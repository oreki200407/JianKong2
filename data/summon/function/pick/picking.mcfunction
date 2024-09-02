execute store result score @s summon_monster run scoreboard players add #number summon_monster 1
execute store result entity @s ArmorItems[2].components."minecraft:custom_data".number int 1 run scoreboard players get @s summon_monster
tag @s add summon_picked