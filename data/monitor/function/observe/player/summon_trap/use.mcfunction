###################################################
# 使用紫色染料
# 
# Name   : use.mcfunction
# Path   : monitor:observe/player/summon_trap/
# As     : 使用紫色染料的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:observe/use/purple_dye

execute anchored eyes run function monitor:observe/player/summon_trap/raycast