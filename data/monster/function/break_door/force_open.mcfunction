###################################################
# 強制開門
# 
# Name   : force_open.mcfunction
# Path   : monster:break_door/
# As     : 門標記，tag=door
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

playsound block.iron_door.open ambient @a
$setblock ~ ~ ~ $(door)[half=lower, open=true, facing=$(facing), hinge=$(hinge)]