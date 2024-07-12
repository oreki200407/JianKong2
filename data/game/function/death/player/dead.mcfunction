advancement revoke @s only game:death
scoreboard players reset @s death

#還沒進入3 就結束
execute unless score @e[type=marker, tag=lobby, limit=1] mode matches 3 run return fail

#轉旁觀
gamemode spectator @s

#儲存UUID
execute store result score @s uuid0 run data get entity @s UUID[0]

#對齊中心 召喚盔甲座
execute align xyz run summon armor_stand ~.5 ~.5 ~.5 {Invisible: true, Invulnerable: true, NoGravity: true, NoBasePlate: true, Marker: true, Small: true, DisabledSlots: 4144959, Tags: ["death_stand", "new_stand"]}
loot replace entity @e[type=armor_stand, tag=new_stand, limit=1] armor.head 1 loot game:player_head
tag @e[type=armor_stand, tag=new_stand, limit=1] remove new_stand