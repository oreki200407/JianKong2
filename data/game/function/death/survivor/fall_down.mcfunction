###################################################
# 當玩家倒地的時候執行
# 
# Name   : fall_down.mcfunction
# Path   : game:death/survivor/
# As     : 血量歸零倒地的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#轉旁觀
gamemode spectator @s
title @s title {"text": "你倒地了", "color": "red", "bold": true}
tellraw @a ["◎ ", {"selector": "@s"}, " 倒地了"]
tag @s add fall_down
scoreboard players add @s score 50

#儲存UUID
execute store result score @s uuid0 run data get entity @s UUID[0]

#對齊中心 召喚盔甲座
summon item_display ~ ~0.5 ~ {Glowing:1b,glow_color_override:16711680,CustomNameVisible:1b,Tags: ["death_stand", "new_stand"],CustomName:'["按住", {"keybind": "key.sneak"}, "救援"]',billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:player_head",count:1}}
loot replace entity @e[type=item_display, tag=new_stand, limit=1] contents 1 loot game:player_head
tag @e[type=item_display, tag=new_stand, limit=1] remove new_stand