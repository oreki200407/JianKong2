execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative", "color":"gold"}, "來操作"]

#教學區
execute as @a[tag=tutorial_fixing_box] run function tutorial:box/fix/fix_mode/leave
execute as @a[tag=tutorial_unlock] run function tutorial:unlock/fail
execute as @a[tag=tutorial_trapped] run function tutorial:bear_trap/release

kill @e[tag=tutorial_marker]
execute at @e[tag=lobby,type=marker,limit=1] run fill ~-10 ~7 ~-10 ~10 ~14 ~10 air

#地圖
execute at @e[tag=point,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["point"]}
execute at @e[tag=spawn_survivor,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["spawn_survivor"]}
#門
execute at @e[tag=door,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["door"]}
execute as @e[tag=door,type=marker] at @s run function gadget:unlock/store
#毒氣
execute as @e[tag=poison_point,type=armor_stand] run data merge entity @s {DisabledSlots:4144959}
#電箱
execute as @e[tag=box_point,type=armor_stand] run data merge entity @s {DisabledSlots:4144959}
tag @e[tag=box_point,type=armor_stand,sort=random,limit=1] add box_default

kill @e[tag=edit_kill,type=armor_stand]
kill @e[tag=check_display]

time set midnight
tag @a[team=monitor] add monitor_tag
tag @a[team=survivor] add survivor_tag
team empty monitor
team empty survivor
team empty spec
team join monitor @a[tag=monitor_tag]
team join survivor @a[tag=survivor_tag]
team join spec @a[team=]
tag @a[tag=monitor_tag] remove monitor_tag
tag @a[tag=survivor_tag] remove survivor_tag

clear @a
effect clear @a
recipe take @a *
scoreboard players reset @a
execute as @a store result score @s uuid0 run data get entity @s UUID[0]
title @a times 0 40 0
title @a title {"text":"監控圍城 II","color":"blue","bold":true}
execute at @e[tag=lobby, type=marker, limit=1] run playsound block.sculk_shrieker.shriek master @a

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
effect give @a[team=!spec] invisibility 3 0 true
effect give @a[team=!spec] hunger 3 255 true
effect give @a[team=!spec] regeneration 3 100 true
effect give @a[team=!spec] resistance 3 100 true
effect give @a[team=!spec] night_vision 3 0 true
effect give @a[team=!spec] absorption 1 0 true
effect give @a[team=spec] night_vision infinite 0 true

scoreboard objectives setdisplay sidebar.team.blue info_monitor
scoreboard objectives setdisplay sidebar.team.red money
scoreboard objectives setdisplay sidebar info_survivor
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list kill_score

scoreboard players operation #switch_box_second system = 更換電箱 lobby
scoreboard players operation #switch_box_second system *= #60 constant

#抽怪物
execute at @e[tag=lobby,type=marker,limit=1] run function summon:pick/armor_stand

schedule function game:prepare 3s