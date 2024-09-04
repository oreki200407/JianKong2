#重置怪物
data remove entity @s ArmorItems[2].components."minecraft:custom_data".number
scoreboard players reset @s summon_monster
tag @s remove summon_picked
tag @s remove summon_shuffle
tag @s remove summon_pick_release