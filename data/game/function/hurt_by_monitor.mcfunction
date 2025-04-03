###################################################
# 當玩家被監控者攻擊受傷的時候執行
# 
# Name   : hurt_by_monitor.mcfunction
# Path   : game:
# As     : 受傷的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

#剝奪被攻擊受傷進度
advancement revoke @s only game:hurt_by_monitor

#還沒進入3 就結束
execute unless score #mode system matches 3 run return fail

#檢查是不是喚魔者
#execute on不改變at
execute on attacker if entity @s[tag=evoker] run return run execute if predicate game:chance/5 run summon evoker_fangs

scoreboard players set #is_golem morph 0
execute on attacker if entity @s[tag=golem] run scoreboard players set #is_golem morph 1
execute if score #is_golem morph matches 1 run return run function monster:effect/golem/hit

#檢查是不是使用技能的殭屍
tag @s add victim
execute on attacker if entity @s[tag=zombie_skill_1] run function morph:zombie/attacked
tag @s remove victim