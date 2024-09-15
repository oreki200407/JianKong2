execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "fire"}]
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/armor/fire/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "health"}]
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/armor/health/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "armor"}]
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/armor/armor/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "unbreaking"}]
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/weapon/unbreaking/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "sharpness"}]
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/weapon/sharpness/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "looting"}]
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/weapon/looting/root