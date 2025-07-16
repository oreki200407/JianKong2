kill @e[tag=check_box]
execute at @e[tag=box_point,type=armor_stand] run summon block_display ~ ~ ~ {Tags:["check_display","check_box"],Glowing:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:dispenser",Properties:{facing:"down"}}}
execute at @e[tag=box_point,type=armor_stand] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["check_display","check_box"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[2f,2f,2f]}}
execute as @e[type=text_display,tag=check_box] at @s run data modify entity @s text set from entity @n[tag=box_point,type=armor_stand] CustomName
execute as @a at @s facing entity @n[tag=box_point,type=armor_stand] feet run rotate @s ~ ~
playsound entity.experience_orb.pickup ambient @s