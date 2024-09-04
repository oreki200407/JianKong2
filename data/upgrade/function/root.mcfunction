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

execute if items entity @e[type=item, distance=..1.5] contents white_stained_glass_pane run function upgrade:kill_item

execute store success score @s upgrade_operate run clear @s white_stained_glass_pane
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:wrong_item/check

execute store success score @s upgrade_operate run clear @s enchanted_book 0
execute as @a[scores={upgrade_operate=1}] run return run function upgrade:player/upgrade/root