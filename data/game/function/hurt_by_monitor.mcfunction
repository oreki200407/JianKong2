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

scoreboard players set #is_zombie morph 0
execute on attacker if entity @s[tag=morph_zombie] run scoreboard players set #is_zombie morph 1
execute if score #is_zombie morph matches 1 run damage @s 3 player_attack by @a[tag=morph_zombie,limit=1]
execute if score #is_zombie morph matches 1 run tag @a[tag=morph_zombie,limit=1] remove morph_zombie

scoreboard players set #is_golem morph 0
execute on attacker if entity @s[tag=golem] run scoreboard players set #is_golem morph 1
execute if score #is_golem morph matches 1 run function monster:effect/golem/hit