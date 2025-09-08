#交換隊伍
scoreboard players set #switch system 1

title @a title {"text":"交換隊伍","bold":true,"color":"blue"}
tag @a[team=survivor] add monitor_switch
team join survivor @a[team=monitor]
team join monitor @a[tag=monitor_switch]
tag @a[tag=monitor_switch] remove monitor_switch
team modify survivor color blue
team modify monitor color red

clear @a
recipe take @a *
effect clear @a[team=!spec]
effect give @a[team=monitor] hunger 3 255 true
effect give @a invisibility 3 0 true
effect give @a regeneration 3 100 true
effect give @a resistance 3 4 true
scoreboard players reset @a fracture
scoreboard players reset @a money
scoreboard players reset @a kill
scoreboard players reset @a damage
scoreboard players reset * info_monitor
scoreboard objectives setdisplay sidebar.team.red info_monitor
scoreboard objectives setdisplay sidebar.team.blue money

#復原場地
execute as @e[type=!player, team=monitor, tag=monster] run data merge entity @s {DeathLootTable:"summon:empty"}
kill @e[type=experience_orb]
kill @e[type=area_effect_cloud, tag=power_time]
kill @e[type=item_display, tag=bear_trap]
tag @e[type=armor_stand, tag=box_off] remove box_off
execute as @e[type=marker,tag=door] at @s run function gadget:unlock/door with entity @s data
execute as @e[type=marker,tag=glass_broken] at @s run function monster:break_glass/restore with entity @s data
execute at @e[type=marker,tag=fire] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #fire
execute at @e[type=marker,tag=plank] run fill ~ ~ ~ ~ ~ ~ air replace oak_wall_sign
kill @e[type=marker, tag=fire]
kill @e[type=marker, tag=plank]
kill @e[type=area_effect_cloud,tag=camera]
execute as @e[type=item] if items entity @s contents #game:loot run kill

#重置怪物
scoreboard players reset #summon_pick_release summon_monster
execute as @e[type=armor_stand,tag=summon_picked] run function summon:pick/reset
scoreboard players reset @e[type=armor_stand,tag=summon_picked,scores={summon_cooldown=1..}] summon_cooldown
scoreboard players reset @e[type=armor_stand,tag=summon_picked,scores={summon_shuffle=1..}] summon_shuffle

schedule function game:prepare 3s