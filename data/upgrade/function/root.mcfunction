###################################################
# 升級台的根函數
# 
# Name   : root.mcfunction
# Path   : upgrade:
# As     : 求生者
# At     : 世界重生點
# Loop   : 是
# Author : Alex Cai
###################################################

#https://bugs.mojang.com/browse/MC-187281
execute if entity @s[advancements={upgrade:obtain_glass=true}] run function upgrade:player/wrong_item/obtain_glass
execute if entity @s[advancements={upgrade:obtain_barrier=true}] run function upgrade:player/wrong_item/obtain_barrier

execute if entity @s[advancements={upgrade:upgrade_book/obtain_any=true}] run function upgrade:player/upgrade/root