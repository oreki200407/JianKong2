item replace entity @s enderchest.11 with glowstone_dust[custom_model_data={strings:["add"]},custom_name='{"text": "+1", "color": "green", "bold": true, "italic": false}']
item replace entity @s enderchest.12 with glowstone_dust[custom_model_data={strings:["add"]},custom_name='{"text": "+5", "color": "green", "bold": true, "italic": false}']
item replace entity @s enderchest.13 with glowstone_dust[custom_model_data={strings:["add"]},custom_name='{"text": "+10", "color": "green", "bold": true, "italic": false}']
item replace entity @s enderchest.17 with glowstone_dust[custom_model_data={strings:["manual"]},custom_name='{"text": "手動召喚怪物", "color": "gold", "bold": true, "italic": false}']
item replace entity @s enderchest.20 with glowstone_dust[custom_model_data={strings:["minus"]},custom_name='{"text": "-1", "color": "red", "bold": true, "italic": false}']
item replace entity @s enderchest.21 with glowstone_dust[custom_model_data={strings:["minus"]},custom_name='{"text": "-5", "color": "red", "bold": true, "italic": false}']
item replace entity @s enderchest.22 with glowstone_dust[custom_model_data={strings:["minus"]},custom_name='{"text": "-10", "color": "red", "bold": true, "italic": false}']
item replace entity @s enderchest.24 with glowstone_dust[custom_model_data={strings:["shuffle"]},custom_name='{"text": "刷新怪物", "color": "aqua", "bold": true, "italic": false}',lore=['[{"text": "消耗 10 電力", "color": "gray", "italic": false}]']]
item replace entity @s enderchest.26 with glowstone_dust[custom_model_data={strings:["auto"]},custom_name='{"text": "自動召喚怪物", "color": "gold", "bold": true, "italic": false}']

execute if items entity @s enderchest.18 player_head[custom_data~{level:"easy"}] run scoreboard players set @s summon_power 8
execute if items entity @s enderchest.18 player_head[custom_data~{level:"medium"}] run scoreboard players set @s summon_power 12
execute if items entity @s enderchest.18 player_head[custom_data~{level:"hard"}] run scoreboard players set @s summon_power 16
scoreboard players operation @s summon_power *= @s summon_count
item modify entity @s enderchest.18 [{"function": "minecraft:set_lore","entity":"this","lore": [[{"text": "召喚數量：","color": "gray","italic": false},{"score": {"name": "@s","objective": "summon_count"}}],[{"text": "所需電力：","color": "gray","italic": false},{"score": {"name": "@s","objective": "summon_power"}}]],"mode": "replace_all"}]