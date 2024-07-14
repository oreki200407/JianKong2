###################################################
# 當玩家把升級台裡的玻璃拿出來時
# 
# Name   : obtain_glass.mcfunction
# Path   : upgrade:player/wrong_item
# As     : 求生者
# At     : 世界重生點
# Loop   : 否
# Author : Alex Cai
###################################################

execute if items entity @s contents light_gray_stained_glass_pane[custom_data~{upgrade: true}] run function upgrade:player/wrong_item/clear_glass
advancement revoke @s only upgrade:obtain_glass