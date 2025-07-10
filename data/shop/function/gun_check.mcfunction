execute store success score #has_pistol shop run clear @s golden_axe[item_name="手槍", custom_data~{type: "shop"}] 0
execute if score #has_pistol shop matches 1 if entity @s[tag=!shop_pistol] run return run tag @s add shop_pistol

execute store success score #has_smg shop run clear @s golden_axe[item_name="衝鋒槍", custom_data~{type: "shop"}] 0
execute if score #has_smg shop matches 1 if entity @s[tag=!shop_smg] run return run tag @s add shop_smg

execute store success score #has_shotgun shop run clear @s golden_axe[item_name="散彈槍", custom_data~{type: "shop"}] 0
execute if score #has_shotgun shop matches 1 if entity @s[tag=!shop_shotgun] run return run tag @s add shop_shotgun

tellraw @s ["◎ 你不能購買兩把", {"text": "一樣的槍", "color":"gold"}]
playsound entity.villager.no ambient @s
clear @s *[custom_data~{type:"shop"}]
scoreboard players set #gun_check shop 1