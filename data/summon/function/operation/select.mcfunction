function summon:operation/reset

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=1] 0
execute as @a[scores={summon_operate=1}] at @s run return run function summon:operation/add

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=2] 0
execute as @a[scores={summon_operate=1}] at @s run return run function summon:operation/minus

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=3]
execute as @a[scores={summon_operate=1}] at @s run return run function summon:operation/shuffle

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=4]
execute as @a[scores={summon_operate=1}] at @s run return run function summon:operation/auto

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data=5]
execute as @a[scores={summon_operate=1}] at @s run return run function summon:operation/manual