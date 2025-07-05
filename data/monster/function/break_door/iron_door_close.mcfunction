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

playsound block.iron_door.close ambient @a
$setblock ~ ~ ~ iron_door[half=lower, open=false, facing=$(facing), hinge=$(hinge)]