###################################################
# 使用紫色染料
# 
# Name   : use.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 使用紫色染料的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:observe/trap

execute unless score #mode system matches 3 run return fail
execute unless entity @s[tag=using_camera, team=monitor] run return fail

execute if score @s trap_cooldown matches 1.. run return fail
scoreboard players set @s trap_cooldown 10

function monitor:observe/player/summon/manual