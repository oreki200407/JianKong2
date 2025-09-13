#---倒數---
execute if score 倒數 system matches 1..3 run return run function game:counting

scoreboard players reset 倒數 system
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2
title @a title {"text":"夜晚來臨","bold":true,"color":"blue"}
schedule function game:time 1s
schedule function game:dawn 1500s
schedule function morph:free 1200s

clear @a[team=monitor] white_dye
execute as @a[team=monitor] run function monitor:observe/player/give/root
execute as @a[team=monitor] run attribute @s attack_knockback modifier add jk2:attack_knockback 1 add_value
execute as @a[team=survivor] run attribute @s attack_knockback modifier remove jk2:attack_knockback

tag @e[type=armor_stand,tag=box] remove box
tellraw @a[team=!monitor] ["◎ 初始電箱在", {"color":"gold","selector": "@e[type=armor_stand,tag=box_default]"}]
execute as @e[type=armor_stand, tag=box_default] at @s run function box:switch/set

function summon:pick/new
function summon:pick/new
function summon:pick/new