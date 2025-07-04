###################################################
# 鐵門關閉
# 
# Name   : iron_door_close.mcfunction
# Path   : monster:break_door/
# As     : 門標記，tag=door
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$setblock ~ ~ ~ iron_door[half=lower, open=false, facing=$(facing), hinge=$(hinge)]
$setblock ~ ~1 ~ iron_door[half=upper, open=false, facing=$(facing), hinge=$(hinge)]