###################################################
# 裝備被放至升級台上
# 
# Name   : root.mcfunction
# Path   : upgrade:ender_chest/armor
# As     : 放上裝備的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

item replace entity @s enderchest.13 with white_stained_glass_pane[custom_data={upgrade: true},custom_name='""',custom_model_data=2]

#是武器
execute if items entity @s enderchest.10 iron_sword run return run function upgrade:ender_chest/weapon/root
#是皮革裝
execute if items entity @s enderchest.10 #upgrade:armor/leather run return run function upgrade:ender_chest/armor/leather
#是金裝
execute if items entity @s enderchest.10 #upgrade:armor/golden run return run function upgrade:ender_chest/armor/golden
#是鐵裝
execute if items entity @s enderchest.10 #upgrade:armor/iron run return run function upgrade:ender_chest/armor/iron
#是鑽石裝
execute if items entity @s enderchest.10 #upgrade:armor/diamond run return run function upgrade:ender_chest/armor/diamond
