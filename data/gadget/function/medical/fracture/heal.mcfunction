###################################################
# 當玩家治療骨折的時候執行
# 
# Name   : heal.mcfunction
# Path   : gadget:medical/fracture/
# As     : 摔傷的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#沒有骨折
execute if entity @s[tag=!fractured] run return run tellraw @s ["◎ 使用", {"text": "失敗", "color":"gold"},"你沒有", {"text": "骨折", "color":"gold"}]

#治好
attribute @s movement_speed modifier remove jk2:fracture
tag @s remove fractured
tellraw @s ["◎ 你治好了", {"text": "骨折","color":"gold"}]
item modify entity @s weapon.mainhand { "function": "set_count", "count": -1, "add": true }