###################################################
# 當玩家倒地的時候執行
# 
# Name   : fall_down.mcfunction
# Path   : game:death/survivor/
# As     : 血量歸零倒地的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

#轉旁觀
gamemode spectator @s
title @s title {"text": "你倒地了", "color": "red", "bold": true}
tellraw @a ["◎ ", {"selector": "@s"}, " 倒地了"]
tag @s add fall_down
scoreboard players add @s score 50

#儲存自己的UUID
execute store result score #fall_down uuid0 run data get entity @s UUID[0]

#召喚物品展示實體
execute positioned ~ ~.5 ~ summon item_display run function game:death/survivor/new_tomb
item modify entity @e[type=item_display,tag=tomb_temp,limit=1] contents {function: "fill_player_head", "entity": "this"}
tag @e[type=item_display,tag=tomb_temp,limit=1] remove tomb_temp