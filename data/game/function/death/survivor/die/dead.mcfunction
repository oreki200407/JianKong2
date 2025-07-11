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
execute as @e[type=item_display, tag=tomb] if score @s uuid0_match = #dead_player uuid0 run kill

tellraw @a ["◎ ", {selector: "@s"}, " 已死亡"]
title @s title {text: "你已死亡", color: "red", bold: true}
scoreboard players add @s death_score 70
scoreboard players add @s st_death 1
playsound entity.zombie.death ambient @s
effect give @s resistance 30 4
effect give @s strength 30 0

function game:death/survivor/up