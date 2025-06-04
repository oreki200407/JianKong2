playsound ui.button.click ambient @s

execute store success score @s shop_operate run clear @s emerald[item_name="武器類",custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/weapon

execute store success score @s shop_operate run clear @s emerald[item_name="工具類",custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/tool

execute store success score @s shop_operate run clear @s emerald[item_name="飲食類",custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/food

execute store success score @s shop_operate run clear @s emerald[item_name="醫療類",custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run return run function shop:type/medical

execute store success score @s shop_operate run clear @s emerald[item_name="返回主選單",custom_data~{price:0}]
execute if entity @s[scores={shop_operate=1}] run function shop:open_ender_chest