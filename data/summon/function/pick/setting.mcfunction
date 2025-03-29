#設定初始怪物
scoreboard players operation @s summon_monster = @s summon_number
execute store result entity @s equipment.chest.components."minecraft:custom_data".number int 1 run scoreboard players get @s summon_monster
tag @s add summon_picked