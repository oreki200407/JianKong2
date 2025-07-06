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

advancement revoke @s only monitor:observe/trap
advancement revoke @s only monitor:observe/monster

execute unless score #mode system matches 3 run return fail
execute unless entity @s[tag=using_camera, team=monitor] run return fail
execute if score @s trap_cooldown matches 1.. run return fail
scoreboard players set @s trap_cooldown 10

execute unless score 電力 info_monitor matches 2.. run return run function monitor:observe/player/summon/fail

scoreboard players remove 電力 info_monitor 2
execute anchored eyes run function monitor:observe/player/summon/raycast