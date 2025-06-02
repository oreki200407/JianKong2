###################################################
# 當玩家治療骨折的時候執行
# 
# Name   : heal.mcfunction
# Path   : game:fracture/
# As     : 摔傷的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#沒有骨折
execute if entity @s[tag=!fractured] run return fail

#治好
attribute @s movement_speed modifier remove jk2:fracture
tag @s remove fractured
tellraw @s ["◎ 你治好了", {"text": "骨折","color":"gold"}]