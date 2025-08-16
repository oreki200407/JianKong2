tag @s add trap_user
execute summon armor_stand run function monitor:observe/player/summon/monster/summon
tag @s remove trap_user

item modify entity @s weapon gadget:remove_1
execute at @s run playsound entity.evoker.prepare_summon ambient @s ~ ~ ~ 0.5