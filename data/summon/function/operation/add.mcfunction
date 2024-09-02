playsound ui.button.click ambient @s

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "+1", "color": "green", "bold": true, "italic": false}']
scoreboard players add @s[scores={summon_operate=1}] summon_count 1

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "+5", "color": "green", "bold": true, "italic": false}']
scoreboard players add @s[scores={summon_operate=1}] summon_count 5

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "+10", "color": "green", "bold": true, "italic": false}']
scoreboard players add @s[scores={summon_operate=1}] summon_count 10

execute if items entity @s enderchest.18 player_head[custom_data~{level:"easy"}] if score @s summon_count matches 31.. run return run scoreboard players set @s summon_count 30
execute if items entity @s enderchest.18 player_head[custom_data~{level:"medium"}] if score @s summon_count matches 21.. run return run scoreboard players set @s summon_count 20
execute if items entity @s enderchest.18 player_head[custom_data~{level:"hard"}] if score @s summon_count matches 11.. run scoreboard players set @s summon_count 10