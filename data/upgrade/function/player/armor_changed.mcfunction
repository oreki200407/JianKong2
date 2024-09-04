###################################################
# 身上的裝備有所變動
# 
# Name   : armor_changed.mcfunction
# Path   : upgrade:player/
# As     : 物品變動的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only upgrade:armor_changed

#放上物品
execute if items entity @s enderchest.10 #upgrade:armor/all run return run function upgrade:ender_chest/upgrade/root

#拿下物品 或者是穿上、丟出等等的
execute unless items entity @s enderchest.13 barrier run function upgrade:ender_chest/reset_barrier