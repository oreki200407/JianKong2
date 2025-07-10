advancement revoke @s only gadget:bear_trap

execute if score @s gun_cooldown matches 1.. run return fail
scoreboard players set @s gun_cooldown 10

execute anchored eyes run function gadget:bear_trap/raycast