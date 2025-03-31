execute at @e[tag=door,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["door"]}
execute at @e[tag=point,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["point"]}
execute at @e[tag=spawn_survivor,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["spawn_survivor"]}
kill @e[tag=door,type=armor_stand]
kill @e[tag=point,type=armor_stand]
kill @e[tag=spawn_survivor,type=armor_stand]

setblock ~ ~ ~ air
difficulty hard
time set midnight
team join spec @a[team=]
clear @a
recipe take @a *
experience add @a -999999 levels
tag @a add start
execute as @a at @s run playsound block.ender_chest.open ambient @s ~ ~ ~
title @a title {"text":"監控圍城 II","bold":true,"color":"red"}
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

effect clear @a
effect give @a invisibility 5 0 true
effect give @a hunger 3 255 true
effect give @a regeneration 5 100 true
effect give @a night_vision infinite 0 true
effect give @a resistance 5 100 true

scoreboard objectives setdisplay sidebar info
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list money

scoreboard players reset @a
scoreboard players set #mode system 4
scoreboard players set @a[team=survivor] stamina 100

#決定初始電箱
tag @e[type=armor_stand,tag=power_point,sort=random,limit=1] add power_default

#抽怪物
function summon:pick/armor_stand

schedule function game:prepare 2s