playsound ui.button.click ambient @s

execute store success score @s shop_operate run clear @s iron_sword[custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/weapon

execute store success score @s shop_operate run clear @s iron_axe[custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/tool

execute store success score @s shop_operate run clear @s apple[custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/food

execute store success score @s shop_operate run clear @s paper[custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/medical

execute store success score @s shop_operate run clear @s compass[custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run function shop:open_ender_chest