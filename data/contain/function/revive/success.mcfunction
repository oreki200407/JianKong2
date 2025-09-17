###################################################
# 復活成功
# 
# Name   : check.mcfunction
# Path   : contain:revive/
# As     : 怪物對應的marker
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

function contain:summon

scoreboard players set @n[tag=contain, distance=..1] contain_health 20
scoreboard players set @n[tag=contain, distance=..1] contain_temperature 20
scoreboard players set @n[tag=contain, distance=..1] contain_food 20

function contain:update_text/all