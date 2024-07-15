###################################################
# 裝備被放至升級台上
# 
# Name   : root.mcfunction
# Path   : upgrade:player/upgrade/armor
# As     : 放上裝備的玩家
# At     : As
# Loop   : 世界重生點
# Author : Alex_Cai
###################################################

clear @s enchanted_book[custom_data~{upgrade_book: true}]
#是皮革裝
execute if items entity @s enderchest.10 #upgrade:armor/leather run function upgrade:player/upgrade/armor/leather
#是金裝
execute if items entity @s enderchest.10 #upgrade:armor/golden run function upgrade:player/upgrade/armor/golden
#是鐵裝
execute if items entity @s enderchest.10 #upgrade:armor/iron run function upgrade:player/upgrade/armor/iron
#是鑽石裝
execute if items entity @s enderchest.10 #upgrade:armor/diamond run function upgrade:player/upgrade/armor/diamond