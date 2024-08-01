playsound ui.button.click ambient @s

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "-1", "color": "red", "bold": true, "italic": false}']
scoreboard players remove @s[scores={summon_operate=1}] summon_count 1

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "-5", "color": "red", "bold": true, "italic": false}']
scoreboard players remove @s[scores={summon_operate=1}] summon_count 5

execute store success score @s summon_operate run clear @s glowstone_dust[custom_name='{"text": "-10", "color": "red", "bold": true, "italic": false}']
scoreboard players remove @s[scores={summon_operate=1}] summon_count 10

execute if score @s summon_count matches ..0 run scoreboard players set @s summon_count 1

item modify entity @s enderchest.18 [{"function": "minecraft:set_lore","lore": [[{"text": "召喚數量：","color": "gray","italic": false},{"score": {"name": "@s","objective": "summon_count"}}],[{"text": "所需電力：","color": "gray","italic": false},{"score": {"name": "@s","objective": "summon_power"}}]],"mode": "replace_all"}]