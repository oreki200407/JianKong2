advancement revoke @s only game:death
scoreboard players reset @s death

#還沒進入3 就結束
execute unless score @e[type=marker, tag=lobby, limit=1] mode matches 3 run return fail

gamemode spectator @s

#儲存UUID
data modify storage jk2:data root.game.death.uuid set from entity @s UUID
execute store result score @s uuid0 run data get storage jk2:data root.game.death.uuid[0]
execute store result score @s uuid1 run data get storage jk2:data root.game.death.uuid[1]
execute store result score @s uuid2 run data get storage jk2:data root.game.death.uuid[2]
execute store result score @s uuid3 run data get storage jk2:data root.game.death.uuid[3]

#對齊中心 召喚盔甲座
execute align xyz positioned ~.5 ~.5 ~.5 summon armor_stand run function game:death/stand/initial with storage jk2:data root.game.death