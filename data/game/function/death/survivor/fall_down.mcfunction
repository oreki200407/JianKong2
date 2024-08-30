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

#儲存UUID
execute store result score @s uuid0 run data get entity @s UUID[0]

#對齊中心 召喚盔甲座
execute align xyz run summon armor_stand ~.5 ~.5 ~.5 {Invisible: true, Invulnerable: true, NoGravity: true, NoBasePlate: true, Marker: true, Small: true, DisabledSlots: 4144959, Tags: ["death_stand", "new_stand"]}
loot replace entity @e[type=armor_stand, tag=new_stand, limit=1] armor.head 1 loot game:player_head
tag @e[type=armor_stand, tag=new_stand, limit=1] remove new_stand