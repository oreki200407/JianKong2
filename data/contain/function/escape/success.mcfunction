###################################################
# 收容成功
# 
# Name   : success.mcfunction
# Path   : contain:escape/
# As     : 收容箱內的標記，tag=contain_marker
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tellraw @a[team=monitor] ["◎ 成功收容",{selector:"@s", color:gold}]

function contain:summon

scoreboard players operation @n[tag=contain] contain_temperature = @s contain_temperature
scoreboard players operation @n[tag=contain] contain_food = @s contain_food
scoreboard players operation @n[tag=contain] contain_health = @s contain_health

function contain:update_text/all