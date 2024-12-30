advancement revoke @s only monitor:photo/use

execute if score @s photo_cooldown matches 1.. run return fail
scoreboard players set @s photo_cooldown 10

execute anchored eyes run function monitor:observe/player/summon/raycast