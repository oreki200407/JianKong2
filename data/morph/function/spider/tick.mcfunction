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
execute at @s if predicate game:flag/sneak if function morph:spider/wall_near run return run effect give @s levitation 1 2 true
execute at @s unless function morph:spider/wall_near run return run effect clear @s levitation
execute unless predicate game:flag/sneak run effect clear @s levitation