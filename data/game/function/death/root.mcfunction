###################################################
# 當玩家死亡的時候執行
# 
# Name   : root.mcfunction
# Path   : game:death/
# As     : 血量歸零的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#剝奪死亡進度
advancement revoke @s only game:death
scoreboard players reset @s death

execute if score #mode system matches 1..2 run return run tag @s add lobby_death

execute if entity @s[tag=trapped] run function gadget:bear_trap/release/root

#還沒進入3 就結束
execute unless score #mode system matches 3 run return fail

execute if entity @s[team=survivor] run function game:death/survivor/fall_down
execute if entity @s[team=monitor] run function game:death/monitor