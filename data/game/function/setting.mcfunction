execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative", "color":"gold"}, "來操作"]

execute at @e[tag=door,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["door"]}
execute at @e[tag=point,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["point"]}
execute at @e[tag=spawn_survivor,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["spawn_survivor"]}
kill @e[tag=edit_kill,type=armor_stand]
execute as @e[tag=box_point,type=armor_stand] run data merge entity @s {DisabledSlots:4144959}
execute as @e[tag=poison_point,type=armor_stand] run data merge entity @s {DisabledSlots:4144959}

time set midnight
tag @a[team=monitor] add monitor_tag
tag @a[team=survivor] add survivor_tag
team empty monitor
team empty survivor
team empty spec
execute as @a run function game:player_setting/root

scoreboard objectives setdisplay sidebar.team.blue info_monitor
scoreboard objectives setdisplay sidebar.team.red money
scoreboard objectives setdisplay sidebar info_survivor
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list kill

scoreboard players operation #switch_box_second system = 更換電箱 lobby
scoreboard players operation #switch_box_second system *= #60 constant

#決定初始電箱
tag @e[type=armor_stand,tag=box_point,sort=random,limit=1] add box_default

#門
execute as @e[type=marker,tag=door] at @s run function gadget:unlock/store

#抽怪物
execute at @e[type=marker,tag=lobby,limit=1] run function summon:pick/armor_stand

schedule function game:prepare 2s