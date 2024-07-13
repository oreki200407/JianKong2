###################################################
# 玩家倒地後倒數死透
# 
# Name   : dying.mcfunction
# Path   : game:death/player/die/
# As     : 倒地的玩家
# At     : As
# Loop   : 是
# Author : Alex Cai
###################################################

#60秒死透
scoreboard players add @s death_time 1

execute if score @s revive_time matches 1..600 run return run function game:death/player/die/upper_half
execute if score @s revive_time matches 601..1201 run return run function game:death/player/die/upper_half
function game:death/player/die/dead