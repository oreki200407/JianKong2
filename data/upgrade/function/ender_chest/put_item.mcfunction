###################################################
# 身上的裝備有所變動
# 
# Name   : put_item.mcfunction
# Path   : upgrade:player/
# As     : 物品變動的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################
say 1
advancement revoke @s only upgrade:put_item

#放上物品
execute if items entity @s enderchest.10 #upgrade:armor/all run return run function upgrade:ender_chest/root

#拿下物品 或者是穿上、丟出等等的
execute unless items entity @s enderchest.13 barrier run function upgrade:reset