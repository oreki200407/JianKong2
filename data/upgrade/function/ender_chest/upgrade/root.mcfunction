###################################################
# 裝備被放至升級台上
# 
# Name   : root.mcfunction
# Path   : upgrade:ender_chest/upgrade/armor
# As     : 放上裝備的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#是皮革裝
execute if items entity @s enderchest.10 #upgrade:armor/leather run return run function upgrade:ender_chest/upgrade/armor/leather
#是金裝
execute if items entity @s enderchest.10 #upgrade:armor/golden run return run function upgrade:ender_chest/upgrade/armor/golden
#是鐵裝
execute if items entity @s enderchest.10 #upgrade:armor/iron run return run function upgrade:ender_chest/upgrade/armor/iron
#是鑽石裝
execute if items entity @s enderchest.10 #upgrade:armor/diamond run return run function upgrade:ender_chest/upgrade/armor/diamond
#是武器
execute if items entity @s enderchest.10 iron_sword run return run function upgrade:ender_chest/upgrade/weapon