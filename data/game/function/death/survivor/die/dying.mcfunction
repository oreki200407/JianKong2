###################################################
# 玩家倒地後倒數死透
# 
# Name   : dying.mcfunction
# Path   : game:death/survivor/die/
# As     : 倒地的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#60秒死透
execute unless entity @e[type=item_display,tag=death_stand,distance=..0.01] run function game:death/survivor/die/teleport

scoreboard players add @s death_time 1

execute if score @s death_time matches 1..600 run return run function game:death/survivor/die/upper_half
execute if score @s death_time matches 601..1201 run return run function game:death/survivor/die/lower_half
function game:death/survivor/die/dead