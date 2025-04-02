###################################################
# 身為蜘蛛的tick
# 
# Name   : tick.mcfunction
# Path   : morph:spider/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#爬牆
execute if predicate game:sneak if function morph:spider/wall_near run effect give @s levitation 1 0 true