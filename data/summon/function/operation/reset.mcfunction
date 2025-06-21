item replace entity @s enderchest.11 with glowstone_dust[custom_data={summon:add},custom_model_data={strings:["add1"]},item_name={"text": "+1", "color": "green", "bold": true}]
item replace entity @s enderchest.12 with glowstone_dust[custom_data={summon:add},custom_model_data={strings:["add5"]},item_name={"text": "+5", "color": "green", "bold": true}]
item replace entity @s enderchest.13 with glowstone_dust[custom_data={summon:add},custom_model_data={strings:["add10"]},item_name={"text": "+10", "color": "green", "bold": true}]
item replace entity @s enderchest.17 with glowstone_dust[item_model=purple_dye,item_name={"text": "手動召喚怪物", "color": "gold", "bold": true}]
item replace entity @s enderchest.20 with glowstone_dust[custom_data={summon:subtract},custom_model_data={strings:["subtract1"]},item_name={"text": "-1", "color": "red", "bold": true}]
item replace entity @s enderchest.21 with glowstone_dust[custom_data={summon:subtract},custom_model_data={strings:["subtract5"]},item_name={"text": "-5", "color": "red", "bold": true}]
item replace entity @s enderchest.22 with glowstone_dust[custom_data={summon:subtract},custom_model_data={strings:["subtract10"]},item_name={"text": "-10", "color": "red", "bold": true}]
item replace entity @s enderchest.24 with glowstone_dust[custom_model_data={strings:["shuffle"]},item_name={"text": "刷新怪物", "color": "aqua", "bold": true},lore=[{"text": "消耗 10 電力", "color": "gray", "italic": false}]]
item replace entity @s enderchest.26 with glowstone_dust[item_model=lime_dye,item_name={"text": "自動召喚怪物", "color": "gold", "bold": true}]

execute if items entity @s enderchest.18 player_head[custom_data~{level:"easy"}] run scoreboard players set @s summon_power 8
execute if items entity @s enderchest.18 player_head[custom_data~{level:"medium"}] run scoreboard players set @s summon_power 12
execute if items entity @s enderchest.18 player_head[custom_data~{level:"hard"}] run scoreboard players set @s summon_power 16
scoreboard players operation @s summon_power *= @s summon_count
item modify entity @s enderchest.18 summon:summon_data

item modify entity @s enderchest.11 summon:summon_data
item modify entity @s enderchest.12 summon:summon_data
item modify entity @s enderchest.13 summon:summon_data
item modify entity @s enderchest.20 summon:summon_data
item modify entity @s enderchest.21 summon:summon_data
item modify entity @s enderchest.22 summon:summon_data