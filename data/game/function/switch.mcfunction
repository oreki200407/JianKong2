#交換隊伍
scoreboard players set #switch system 1

title @a title {"text":"交換隊伍","bold":true,"color":"blue"}
tag @a[team=survivor] add monitor_switch
team join survivor @a[team=monitor]
team join monitor @a[tag=monitor_switch]
tag @a[tag=monitor_switch] remove monitor_switch
team modify survivor color blue
team modify monitor color red
scoreboard objectives setdisplay sidebar.team.red info_monitor
scoreboard objectives setdisplay sidebar.team.blue money

schedule function game:prepare 3s
schedule clear summon:natural

clear @a
recipe take @a *
xp set @a 0 levels
xp set @a 0 points
effect give @a[team=monitor] hunger 3 255 true
effect give @a invisibility 3 0 true
effect give @a regeneration 3 100 true
effect give @a resistance 3 4 true
scoreboard players reset @a fracture
scoreboard players reset @a money
scoreboard players reset @a kill
scoreboard players reset @a damage

#復原場地
execute as @e[team=monitor, tag=monster, type=!player] run data merge entity @s {DeathLootTable:"summon:empty"}
kill @e[tag=box_transfer]
kill @e[tag=monster_ride]
kill @e[tag=monster_being_ride]
kill @e[team=monitor, tag=monster, type=!player]
kill @e[type=block_display, tag=morph_grass_block]
tag @e[tag=box_off] remove box_off
execute as @e[tag=door,type=marker] at @s run function gadget:unlock/door with entity @s data
execute as @e[type=marker,tag=glass_broken] at @s run function gadget:hammer/restore with entity @s data
execute at @e[type=marker, tag=fire] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #fire
kill @e[type=marker, tag=fire]
kill @e[type=area_effect_cloud,tag=camera]

#重置怪物
scoreboard players reset #summon_pick_release summon_monster
execute as @e[type=armor_stand,tag=summon_picked] run function summon:pick/reset