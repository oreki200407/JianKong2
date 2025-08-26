###################################################
# 變形成終界使者結束
# 
# Name   : end.mcfunction
# Path   : morph:enderman/
# As     : 變形成終界使者的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#如果origin對上了就清除
execute as @e[type=ender_pearl] if function morph:enderman/is_remain_ender_pearl run kill

tag @s remove enderman_morph