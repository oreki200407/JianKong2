###################################################
# 召喚怪物
# 
# Name   : monster.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 召喚怪物的玩家
# At     : 看到的第一個非空氣方塊的頭上
# Loop   : 否
# Author : oreki20
###################################################

tag @s add trap_user
execute summon armor_stand run function monitor:observe/player/summon/monster_success
tag @s remove trap_user

item modify entity @s weapon.mainhand gadget:remove_1
execute at @s run playsound entity.evoker.prepare_summon ambient @s ~ ~ ~ 0.5