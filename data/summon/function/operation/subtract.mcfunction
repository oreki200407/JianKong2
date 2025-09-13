playsound ui.button.click master @s

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["subtract1"]}]
scoreboard players remove @s[scores={summon_operate=1}] summon_count 1

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["subtract5"]}]
scoreboard players remove @s[scores={summon_operate=1}] summon_count 5

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["subtract10"]}]
scoreboard players remove @s[scores={summon_operate=1}] summon_count 10

scoreboard players set @s[scores={summon_count=..0}] summon_count 1

function summon:operation/reset