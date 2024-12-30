###################################################
# 使用開鎖器
# 
# Name   : use.mcfunction
# Path   : gadgets:unlock/
# As     : 使用開鎖器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only gadgets:unlock

execute if entity @s[tag=using_unlock] run return fail
execute unless block ~ ~ ~ #doors unless block ~1 ~ ~ #doors unless block ~-1 ~ ~ #doors unless block ~ ~ ~1 #doors unless block ~ ~ ~-1 #doors run return fail

tag @s add using_unlock
scoreboard players set @s unlock_progess 0
execute store result score @s unlock_slot run random value 0..8