execute if items entity @e[type=item, distance=..1.5] contents *[custom_data~{type:"shop"}] run function shop:kill_item

execute if score @s open_ender_chest matches 1.. run function shop:open_ender_chest

execute store success score @s shop_operate run clear @s white_stained_glass_pane
execute as @a[scores={shop_operate=1}] run return run function shop:reset

execute store success score @s shop_operate run clear @s #shop:type[custom_data~{price:0}] 0
execute as @a[scores={shop_operate=1}] run return run function shop:select

execute if items entity @s container.* *[custom_data~{type:"shop"}] run function shop:buy