###################################################
# 裝備被放至升級台上
# 
# Name   : root.mcfunction
# Path   : upgrade:player/armor
# As     : 放上裝備的玩家
# At     : As
# Loop   : 世界重生點
# Author : Alex_Cai
###################################################

#是皮革裝
execute if items entity @s enderchest.10 #upgrade:armor/leather run return run function upgrade:player/armor/armor/leather
#是金裝
execute if items entity @s enderchest.10 #upgrade:armor/golden run return run function upgrade:player/armor/armor/golden
#是鐵裝
execute if items entity @s enderchest.10 #upgrade:armor/iron run function upgrade:player/armor/armor/iron