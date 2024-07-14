clear @s barrier[custom_data~{upgrade: true}]

execute unless items entity @s enderchest.7 barrier[custom_data~{upgrade: true}] run function upgrade:ender_chest/wrong_item/barrier with entity @s EnderItems[{Slot: 7b}]
execute unless items entity @s enderchest.13 barrier[custom_data~{upgrade: true}] run function upgrade:ender_chest/wrong_item/barrier with entity @s EnderItems[{Slot: 13b}]
execute unless items entity @s enderchest.16 barrier[custom_data~{upgrade: true}] run function upgrade:ender_chest/wrong_item/barrier with entity @s EnderItems[{Slot: 16b}]
execute unless items entity @s enderchest.25 barrier[custom_data~{upgrade: true}] run function upgrade:ender_chest/wrong_item/barrier with entity @s EnderItems[{Slot: 25b}]