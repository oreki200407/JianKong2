###################################################
# 門標記
# 
# Name   : door_marker.mcfunction
# Path   : monster:break_door/
# As     : 門標記，tag=door
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#附近有怪物就開門
execute if block ~ ~ ~ #doors[open=false] if entity @e[tag=monster, team=monitor, distance=..2] run return run function monster:break_door/force_open with entity @s data

#附近沒有怪物
execute if block ~ ~ ~ iron_door[open=true] unless entity @e[tag=monster, team=monitor, distance=..2] run function monster:break_door/iron_door_close with entity @s data