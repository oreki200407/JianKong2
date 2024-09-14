###################################################
# 使用紫色染料或頭顱
# 
# Name   : use.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 使用紫色染料或頭顱的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:observe/use/trap
advancement revoke @s only monitor:observe/use/monster

execute if score @s trap_cooldown matches 1.. run return fail
scoreboard players set @s trap_cooldown 10

execute unless score 電力 info matches 5.. run return run function monitor:observe/player/summon/fail

execute anchored eyes run function monitor:observe/player/summon/raycast