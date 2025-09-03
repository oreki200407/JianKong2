title @a title {"score":{"name":"倒數","objective":"system"},"bold":true,"color":"gold"}
#---音效---
execute if score 倒數 system matches 3 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0
execute if score 倒數 system matches 2 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0.7
execute if score 倒數 system matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.4

#---倒數---
scoreboard players remove 倒數 system 1
schedule function game:countdown 1s