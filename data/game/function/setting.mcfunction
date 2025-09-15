execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative", "color":"gold"}, "來操作"]

execute if entity @s[tag=tutorial_fixing_box] run function tutorial:box/fix/fix_mode/leave
execute if entity @s[tag=tutorial_unlock] run function tutorial:unlock/fail
execute if entity @s[tag=tutorial_trapped] run function tutorial:bear_trap/release

kill @e[tag=tutorial_marker]
execute at @e[type=marker,tag=lobby,limit=1] run fill ~-10 ~7 ~-10 ~10 ~14 ~10 air

execute at @e[type=armor_stand,tag=door] run summon marker ~ ~ ~ {Tags: ["door"]}
execute at @e[type=armor_stand,tag=point] run summon marker ~ ~ ~ {Tags: ["point"]}
execute at @e[type=armor_stand,tag=spawn_survivor] run summon marker ~ ~ ~ {Tags: ["spawn_survivor"]}
kill @e[type=armor_stand,tag=edit_kill]
kill @e[tag=check_display]
execute as @e[type=armor_stand,tag=box_point] run data merge entity @s {DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=poison_point] run data merge entity @s {DisabledSlots:4144959}

time set midnight
tag @a[team=monitor] add monitor_tag
tag @a[team=survivor] add survivor_tag
team empty monitor
team empty survivor
team empty spec

clear @a
effect clear @a
recipe take @a *
scoreboard players reset @a
title @a times 0 40 0
title @a title {"text":"監控圍城 II","color":"blue","bold":true}
execute at @e[type=marker, tag=lobby, limit=1] run playsound block.sculk_shrieker.shriek master @a

execute as @a run function game:player_setting/root

gamemode adventure @a[team=!spec]
effect give @a[team=!spec] invisibility 3 0 true
effect give @a[team=!spec] hunger 3 255 true
effect give @a[team=!spec] regeneration 3 100 true
effect give @a[team=!spec] resistance 3 100 true
effect give @a[team=!spec] night_vision 3 0 true
effect give @a[team=!spec] absorption 1 0 true

scoreboard objectives setdisplay sidebar.team.blue info_monitor
scoreboard objectives setdisplay sidebar.team.red money
scoreboard objectives setdisplay sidebar info_survivor
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list kill_score

scoreboard players operation #switch_box_second system = 更換電箱 lobby
scoreboard players operation #switch_box_second system *= #60 constant

#決定初始電箱
tag @e[type=armor_stand,tag=box_point,sort=random,limit=1] add box_default

#門
execute as @e[type=marker,tag=door] at @s run function gadget:unlock/store

#抽怪物
execute at @e[type=marker,tag=lobby,limit=1] run function summon:pick/armor_stand

schedule function game:prepare 3s