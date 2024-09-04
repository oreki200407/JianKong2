execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=1] 0
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/add

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=2] 0
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/minus

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=3]
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/shuffle/check

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=4]
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/summon/auto

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=5]
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/summon/manual

function summon:operation/reset