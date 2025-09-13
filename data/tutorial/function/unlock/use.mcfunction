advancement revoke @s only tutorial:unlock

execute if entity @s[tag=tutorial_unlock] run return fail
execute unless block ~ ~ ~ iron_door unless block ~1 ~ ~ iron_door unless block ~-1 ~ ~ iron_door unless block ~ ~ ~1 iron_door unless block ~ ~ ~-1 iron_door run return fail

tellraw @s ["◎ 上下滾動", {text: "滑鼠滾輪", color: "gold"}, "來進行解鎖"]
playsound block.chest.open master @s ~ ~ ~ 1 2
tag @s add tutorial_unlock
scoreboard players set @s unlock_progess 0
execute store result score @s unlock_slot run random value 0..8