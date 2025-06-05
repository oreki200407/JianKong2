###################################################
# 升級台的根函數
# 
# Name   : root.mcfunction
# Path   : upgrade:
# As     : 求生者
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#打開終界箱就重設升級台
execute if score @s open_ender_chest matches 1.. run function upgrade:reset

#清除附近的白色玻璃
execute if items entity @e[type=item, distance=..1.5] contents gunpowder[custom_data={upgrade: true}] run function upgrade:kill_item

#清除白色玻璃
execute store success score @s upgrade_operate run clear @s gunpowder[custom_data={upgrade: true}]
execute if score @s upgrade_operate matches 1 run function upgrade:wrong_item/check

execute store success score @s upgrade_operate run clear @s enchanted_book 0
execute if score @s upgrade_operate matches 1 run function upgrade:player/root

#放上物品
execute if items entity @s enderchest.10 #upgrade:all run return run function upgrade:ender_chest/root

#拿下物品 或者是穿上、丟出等等的
execute if items entity @s enderchest.13 gunpowder[custom_model_data={strings:["enchant"]}] run function upgrade:reset