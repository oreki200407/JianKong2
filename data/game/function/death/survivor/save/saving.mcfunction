###################################################
# 當玩家倒地的時候執行
# 
# Name   : saving.mcfunction
# Path   : game:death/survivor/save/
# As     : 蹲在盔甲座附近的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#3秒復活
scoreboard players add @s revive_time 1

execute if score @s revive_time matches 1..30 run return run function game:death/survivor/save/upper_half
execute if score @s revive_time matches 31..61 run return run function game:death/survivor/save/lower_half

title @s actionbar ""
execute as @e[type=item_display, tag=death_stand, distance=..3] run function game:death/stand/revive