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

$setblock ~ ~ ~ $(door)[half=lower, open=true, facing=$(facing), hinge=$(hinge)]
$setblock ~ ~1 ~ $(door)[half=upper, open=true, facing=$(facing), hinge=$(hinge)]