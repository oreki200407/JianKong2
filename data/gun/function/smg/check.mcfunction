advancement revoke @s only gun:smg

execute store result score @s[tag=!reloading] ammo_smg run data get entity @s[tag=!reloading] SelectedItem.components."minecraft:damage"
execute as @s[scores={ammo_smg=32..}] unless items entity @s contents nether_brick run return run playsound block.dispenser.dispense ambient @s ~ ~ ~ 1 2
execute as @s[scores={ammo_smg=32..}] if items entity @s contents nether_brick run function gun:smg/reload/reloading
execute as @s[scores={ammo_smg=..31},tag=!reloading] run function gun:smg/use