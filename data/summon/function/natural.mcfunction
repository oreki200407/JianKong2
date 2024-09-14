#---自然生怪---
scoreboard players reset @e[type=armor_stand,tag=summon_natural] summon_count
tag @e[type=armor_stand,tag=summon_natural] remove summon_natural

execute if score 時間 system matches 1..900 run tag @e[type=armor_stand,tag=summon_pick_easy,limit=1,sort=random] add summon_natural
execute if score 時間 system matches 901..1150 run tag @e[type=armor_stand,tag=summon_pick_medium,limit=1,sort=random] add summon_natural

execute as @a[team=survivor] run scoreboard players add @e[type=armor_stand,tag=summon_natural,limit=1] summon_count 2
execute store result score 目前怪物 system at @a[team=survivor] if entity @e[team=monitor,distance=..10]

execute if score @e[type=armor_stand,tag=natural,limit=1] summon_count < 目前怪物 system run return run schedule function summon:natural 40s

schedule function summon:natural 40s
tag @e[tag=point,distance=..10] add summon_point
execute as @e[type=armor_stand,tag=natural,limit=1] run function summon:monster