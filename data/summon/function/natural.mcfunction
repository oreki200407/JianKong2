#---自然生怪---
schedule function summon:natural 40s

scoreboard players reset @e[tag=summon_natural,type=armor_stand,limit=1] summon_count
tag @e[tag=summon_natural,type=armor_stand,limit=1] remove summon_natural

execute if score #time system matches 1..900 run tag @e[tag=summon_pick_easy,type=armor_stand,limit=1,sort=random] add summon_natural
execute if score #time system matches 901..1200 run tag @e[tag=summon_pick_medium,type=armor_stand,limit=1,sort=random] add summon_natural

execute as @a[team=survivor] run scoreboard players add @e[tag=summon_natural,type=armor_stand,limit=1] summon_count 2

execute at @a[team=survivor] run tag @e[team=monitor, tag=monster ,distance=..20] add exist_monster
execute store result score #monsters system if entity @e[tag=exist_monster]
tag @e[tag=exist_monster] remove exist_monster

execute if score @e[tag=summon_natural,type=armor_stand,limit=1] summon_count < #monsters system run return fail

execute at @a[team=survivor] run tag @e[tag=point,distance=..15] add summon_point
execute as @e[tag=summon_natural,type=armor_stand,limit=1] at @e[tag=summon_point,sort=random,limit=1] run function summon:monster