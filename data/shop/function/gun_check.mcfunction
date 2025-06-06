execute if data entity @s[tag=!shop_pistol] Inventory[{components:{"minecraft:item_name":"手槍","minecraft:custom_data":{type:"shop"}}}] run return run tag @s add shop_pistol
execute if data entity @s[tag=!shop_smg] Inventory[{components:{"minecraft:item_name":"衝鋒槍","minecraft:custom_data":{type:"shop"}}}] run return run tag @s add shop_smg
execute if data entity @s[tag=!shop_shotgun] Inventory[{components:{"minecraft:item_name":"散彈槍","minecraft:custom_data":{type:"shop"}}}] run return run tag @s add shop_shotgun

tellraw @s ["◎ 你不能購買兩把", {"text": "一樣的搶", "color":"gold"}]
playsound entity.villager.no ambient @s
clear @s *[custom_data~{type:"shop"}]
scoreboard players set #gun_check shop 1