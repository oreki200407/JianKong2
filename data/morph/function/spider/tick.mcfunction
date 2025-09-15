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
execute if predicate game:flag/sneak if block ~ ~1.5 ~ air if function morph:spider/wall_near run return run effect give @s levitation 1 2 true
execute unless function morph:spider/wall_near run return run effect clear @s levitation
execute unless predicate game:flag/sneak run effect clear @s levitation