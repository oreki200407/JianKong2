advancement revoke @s only gadget:bear_trap

execute if score @s trap_cooldown matches 1.. run return fail
scoreboard players set @s trap_cooldown 10

execute anchored eyes run function gadget:bear_trap/raycast