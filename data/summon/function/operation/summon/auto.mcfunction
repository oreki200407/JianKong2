execute if score 電力 info < @s summon_power run return run function summon:operation/fail

tellraw @s ["",{"text":"◎ 怪物已成功"},{"text":"召喚","color":"gold"}]
title @a[team=survivor] title {"text":"怪物來襲","bold":true,"color":"red"}
execute as @a[team=survivor] at @s run playsound block.beacon.power_select ambient @s
execute at @a[team=survivor] run tag @e[type=marker,tag=point,distance=..10] add summon_point

tag @s add summoner
execute as @e[type=armor_stand,tag=summon_pick] if score @s summon_monster = @a[tag=summoner,limit=1] summon_monster run function summon:auto
tag @s remove summoner

function summon:operation/summon/success