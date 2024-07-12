advancement revoke @s only gun:smg

execute store result score @s ammo_smg run data get entity @s SelectedItem.components."minecraft:damage"
execute as @s[scores={ammo_smg=32..}] unless items entity @s contents nether_brick run return run playsound block.dispenser.dispense ambient @s ~ ~ ~ 1 2
execute as @s[scores={ammo_smg=32..}] if items entity @s contents nether_brick run scoreboard players set @s reloading 0
execute as @s[scores={ammo_smg=..31}] run function gun:smg/use