execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "-1", "color": "red", "bold": true, "italic": false}']
scoreboard players remove @s[scores={summon_operate=1}] summon_count 1

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "-5", "color": "red", "bold": true, "italic": false}']
scoreboard players remove @s[scores={summon_operate=1}] summon_count 5

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "-10", "color": "red", "bold": true, "italic": false}']
scoreboard players remove @s[scores={summon_operate=1}] summon_count 10

execute if score @s summon_count matches ..0 run scoreboard players set @s summon_count 1