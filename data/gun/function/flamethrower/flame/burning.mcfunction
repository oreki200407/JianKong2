###################################################
# 碰到火後持續灼傷
# 
# Name   : burning.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 被火焰槍噴到的實體
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute unless predicate tick:2_seconds run return fail

scoreboard players remove @s flamethrower 1
execute if score @s flamethrower matches 0 run return run scoreboard players reset @s flamethrower

#找到當初攻擊的玩家
scoreboard players operation #flame_attacker uuid0_match = @s flamethrower_attacker_uuid0
tag @s add flame_victim
execute as @a[team=survivor] if score @s uuid0 = #flame_attacker uuid0_match run damage @e[tag=flame_victim, limit=1] 3 on_fire by @s
tag @s remove flame_victim