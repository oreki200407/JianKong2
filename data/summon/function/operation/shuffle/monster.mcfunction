scoreboard players operation @s summon_monster = @a[tag=summon_shuffler,limit=1] summon_monster
execute store result entity @s ArmorItems[2].components."minecraft:custom_data".number int 1 run scoreboard players get @s summon_monster
tag @s add summon_picked
tag @s add summon_pick_release