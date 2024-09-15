###################################################
# 升級台的根函數
# 
# Name   : root.mcfunction
# Path   : upgrade:
# As     : 求生者
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s open_ender_chest matches 1.. run function upgrade:reset

execute if items entity @e[type=item, distance=..1.5] contents white_stained_glass_pane run function upgrade:kill_item

execute store success score @s upgrade_operate run clear @s white_stained_glass_pane
execute as @a[scores={upgrade_operate=1}] run function upgrade:wrong_item/check

execute store success score @s upgrade_operate run clear @s enchanted_book 0
execute as @a[scores={upgrade_operate=1}] run function upgrade:player/root

#放上物品
execute if items entity @s enderchest.10 #upgrade:all run return run function upgrade:ender_chest/root

#拿下物品 或者是穿上、丟出等等的
execute if items entity @s enderchest.13 white_stained_glass_pane[custom_model_data=2] run function upgrade:reset