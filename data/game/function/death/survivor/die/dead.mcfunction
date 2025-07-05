###################################################
# 玩家倒地後倒數死透
# 
# Name   : dead.mcfunction
# Path   : game:death/survivor/die/
# As     : 死透的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#死透
scoreboard players operation #dead_player uuid0 = @s uuid0

#找到儲存的UUID跟死透的玩家UUID相同的展示實體
tag @s add dead
execute as @e[type=item_display, tag=tomb] if score @s uuid0_match = #dead_player uuid0 at @s run function game:death/tomb/revive_because_dead
tag @s remove dead

gamemode adventure @s
effect give @s resistance 10 4
effect give @s strength 10 1
tag @s remove fall_down
scoreboard players reset @s death_time
scoreboard players add @s death_score 70
playsound entity.zombie.death ambient @s