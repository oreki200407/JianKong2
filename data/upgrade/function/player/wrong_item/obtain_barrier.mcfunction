###################################################
# 當玩家把升級台裡的屏障拿出來時
# 
# Name   : obtain_glass.mcfunction
# Path   : upgrade:player/wrong_item
# As     : 求生者
# At     : 世界重生點
# Loop   : 否
# Author : Alex Cai
###################################################

execute if items entity @s contents barrier[custom_data~{upgrade: true}] run function upgrade:player/wrong_item/clear_barrier
advancement revoke @s only upgrade:obtain_barrier