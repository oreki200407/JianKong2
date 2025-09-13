###################################################
# 使用開鎖器
# 
# Name   : use.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only gadget:unlock

execute if entity @s[tag=using_unlock] run return fail
execute unless block ~ ~ ~ iron_door unless block ~1 ~ ~ iron_door unless block ~-1 ~ ~ iron_door unless block ~ ~ ~1 iron_door unless block ~ ~ ~-1 iron_door run return fail

tellraw @s ["◎ 上下滾動", {text: "滑鼠滾輪", color: "gold"}, "來進行解鎖"]
playsound block.chest.open master @s ~ ~ ~ 1 2
tag @s add using_unlock
scoreboard players set @s unlock_progess 0
execute store result score @s unlock_slot run random value 0..8