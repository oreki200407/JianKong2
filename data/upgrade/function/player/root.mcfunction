execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "fire"}]
execute if score @s upgrade_operate matches 1 run return run function upgrade:player/armor/fire/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "health"}]
execute if score @s upgrade_operate matches 1 run return run function upgrade:player/armor/health/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "armor"}]
execute if score @s upgrade_operate matches 1 run return run function upgrade:player/armor/armor/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "unbreaking"}]
execute if score @s upgrade_operate matches 1 run return run function upgrade:player/weapon/unbreaking/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "sharpness"}]
execute if score @s upgrade_operate matches 1 run return run function upgrade:player/weapon/sharpness/root

execute store success score @s upgrade_operate run clear @s enchanted_book[custom_data~{upgrade_book: "looting"}]
execute if score @s upgrade_operate matches 1 run return run function upgrade:player/weapon/looting/root