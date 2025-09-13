playsound ui.button.click master @s

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["add1"]}]
scoreboard players add @s[scores={summon_operate=1}] summon_count 1

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["add5"]}]
scoreboard players add @s[scores={summon_operate=1}] summon_count 5

execute store success score @s summon_operate run clear @s glowstone_dust[custom_model_data={strings:["add10"]}]
scoreboard players add @s[scores={summon_operate=1}] summon_count 10

execute if items entity @s enderchest.18 player_head[custom_data~{level:"easy"}] run scoreboard players set @s[scores={summon_count=31..}] summon_count 30
execute if items entity @s enderchest.18 player_head[custom_data~{level:"medium"}] run scoreboard players set @s[scores={summon_count=21..}] summon_count 20
execute if items entity @s enderchest.18 player_head[custom_data~{level:"hard"}] run scoreboard players set @s[scores={summon_count=11..}] summon_count 10

function summon:operation/reset