advancement revoke @s only monitor:observe/monster

execute unless score #mode system matches 3 run return fail
execute if score @s trap_cooldown matches 1.. run return fail
scoreboard players set @s trap_cooldown 10

execute if entity @s[tag=using_camera, team=monitor] run return run function monitor:observe/player/summon/manual

#自動
execute at @a[team=survivor] run tag @e[type=marker,tag=point,distance=..10] add summon_point
execute at @e[tag=summon_point,sort=random,limit=1] run function monitor:observe/player/summon/monster/success