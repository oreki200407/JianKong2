execute at @e[tag=door,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["door"]}
execute at @e[tag=point,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["point"]}
execute at @e[tag=spawn_survivor,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["spawn_survivor"]}
kill @e[tag=edit_kill,type=armor_stand]

time set midnight
team join spec @a[team=]
clear @a
recipe take @a *
xp set @a 0 levels
xp set @a 0 points
tag @a add start
execute as @a at @s run playsound block.sculk_shrieker.shriek ambient @s ~ ~ ~
title @a title {"text":"監控圍城 II","bold":true,"color":"blue"}
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

effect clear @a
effect give @a invisibility 3 0 true
effect give @a hunger 3 255 true
effect give @a regeneration 3 100 true
effect give @a resistance 2 100 true
effect give @a night_vision 2 0 true

scoreboard objectives setdisplay sidebar.team.blue info_monitor
scoreboard objectives setdisplay sidebar.team.red money
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list kill

scoreboard players reset @a
scoreboard players set @a[team=survivor] stamina 100
scoreboard players set #power3 power 0
scoreboard players operation @a[team=survivor] money = 初始資金 lobby
scoreboard players operation #switch_box_second system = 更換電箱 lobby
scoreboard players operation #switch_box_second system *= #60 constant
scoreboard players operation #switch_box system = #switch_box_second system

#決定初始電箱
tag @e[type=armor_stand,tag=box_point,sort=random,limit=1] add box_default
#門
execute as @e[type=marker,tag=door] at @s run function gadget:unlock/store

#抽怪物
execute at @e[type=marker,tag=lobby,limit=1] run function summon:pick/armor_stand

schedule function game:prepare 2s