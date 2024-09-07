###################################################
# 當玩家被監控者攻擊受傷的時候執行
# 
# Name   : hurt_by_monitor.mcfunction
# Path   : game:
# As     : 受傷的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#剝奪被攻擊受傷進度
advancement revoke @s only game:hurt_by_monitor

#還沒進入3 就結束
execute unless score @e[type=marker, tag=lobby, limit=1] mode matches 3 run return fail

#檢查是不是喚魔者
scoreboard players set #is_evoker morph 0
execute on attacker if entity @s[tag=evoker] run scoreboard players set #is_evoker morph 1
execute if score #is_evoker morph matches 1 if predicate game:chance/5 run summon evoker_fangs