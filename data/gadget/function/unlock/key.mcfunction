advancement revoke @s only gadget:key

execute if score #switching system matches 1 run return fail

execute if score @s gun_cooldown matches 1.. run return fail
scoreboard players set @s gun_cooldown 10

execute unless block ~ ~ ~ iron_door unless block ~1 ~ ~ iron_door unless block ~-1 ~ ~ iron_door unless block ~ ~ ~1 iron_door unless block ~ ~ ~-1 iron_door run return fail

function gadget:unlock/success
clear @s tripwire_hook[item_name="鑰匙"] 1