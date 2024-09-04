$item replace entity @s enderchest.18 from entity @s enderchest.$(head)
$scoreboard players set @s summon_monster $(head)
item modify entity @s enderchest.18 {"function": "minecraft:set_custom_data","tag": "{number:8}"}
data remove storage jk2:data root.summon.head