advancement revoke @s only gadget:box

execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute if score @s gun_cooldown matches 1.. run return fail
scoreboard players set @s gun_cooldown 10

execute if block ~ ~ ~ air if block ~ ~1 ~ air run return run function gadget:box/success

title @s actionbar {text: "無法在此放置", color: "red", bold: true}