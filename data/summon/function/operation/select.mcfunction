execute store success score @s summon_operate run clear @s glowstone_dust[custom_data~{summon:none}]
execute as @a[scores={summon_operate=1}] run return run function summon:reset

execute store success score @s summon_operate run clear @s glowstone_dust[custom_data~{summon:add}] 0
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/add

execute store success score @s summon_operate run clear @s glowstone_dust[custom_data~{summon:subtract}] 0
execute as @s[scores={summon_operate=1}] at @s run function summon:operation/subtract

function summon:operation/reset

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["shuffle"]}]
execute as @s[scores={summon_operate=1}] at @s run return run function summon:operation/shuffle/check

execute store success score @s summon_operate run clear @s glowstone_dust[item_model=lime_dye]
execute as @s[scores={summon_operate=1}] at @s run return run function summon:operation/summon/auto

execute store success score @s summon_operate run clear @s glowstone_dust[item_model=purple_dye]
execute as @s[scores={summon_operate=1}] at @s run return run function summon:operation/summon/manual