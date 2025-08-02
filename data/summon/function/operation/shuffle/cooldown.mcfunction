tag @s add summon_shuffler
execute as @e[type=armor_stand,tag=summon_picked] if score @s summon_monster = @a[tag=summon_shuffler,limit=1] summon_monster run tag @s add summon_shuffle_cooldown

execute if score @e[tag=summon_shuffle_cooldown,limit=1] summon_shuffle matches 1.. run item modify entity @s enderchest.24 {"function": "minecraft:set_lore","entity":"this","lore":[[{"text": "冷卻中：","color": "red","italic": false},{"score": {"name": "@e[tag=summon_shuffle_cooldown,limit=1]","objective": "summon_shuffle"}},{"text": "秒","color": "red","italic": false}]],"mode": "replace_all"}
execute unless score @e[tag=summon_shuffle_cooldown,limit=1] summon_shuffle matches 1.. run item replace entity @s enderchest.24 with glowstone_dust[custom_model_data={strings:["shuffle"]},item_name={"text": "刷新怪物", "color": "aqua", "bold": true},lore=[{"text": "消耗 20 電力", "color": "gray", "italic": false}]]

tag @e[tag=summon_shuffle_cooldown,limit=1] remove summon_shuffle_cooldown
tag @s remove summon_shuffler