playsound ui.button.click ambient @s

execute store success score @s shop_operate run clear @s iron_sword[custom_data~{type:"shop_type"}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/weapon

execute store success score @s shop_operate run clear @s iron_axe[custom_data~{type:"shop_type"}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/tool

execute store success score @s shop_operate run clear @s apple[custom_data~{type:"shop_type"}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/food

execute store success score @s shop_operate run clear @s paper[custom_data~{type:"shop_type"}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/medical