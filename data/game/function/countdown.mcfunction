#---倒數---
execute if score 倒數 system matches 1..3 run title @a title {"score":{"name":"倒數","objective":"system"},"bold":true,"color":"gold"}
#---音效---
execute if score 倒數 system matches 3 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0
execute if score 倒數 system matches 2 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0.7
execute if score 倒數 system matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.4

#---倒數---
execute if score 倒數 system matches 1..3 run schedule function game:countdown 1s
execute if score 倒數 system matches 1..3 run return run scoreboard players remove 倒數 system 1

execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2
title @a title {"text":"夜晚來臨","bold":true,"color":"blue"}
schedule function game:time 1s
schedule function game:dawn 1500s

execute as @a[team=monitor] run function monitor:observe/give

tag @e[type=armor_stand,tag=box] remove box
tag @e[type=armor_stand,tag=box_default] add box
tellraw @a[team=!monitor] ["◎ 初始電箱在", {"color":"gold","selector": "@e[type=armor_stand,tag=box_default]"}]
execute at @e[type=armor_stand,tag=box] run function box:switch/set