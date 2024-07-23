###################################################
# 當玩家摔傷的時候執行
# 
# Name   : damage.mcfunction
# Path   : game:fracture/
# As     : 摔傷的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only game:fall_damage

#還沒進入3 就結束
execute unless score @e[type=marker, tag=lobby, limit=1] mode matches 3 run return fail

#已經骨折了
execute if entity @s[tag=fractured] run return fail

#骨折
attribute @s generic.movement_speed modifier add jk2:fracture -0.3 add_multiplied_total
tag @s add fractured
tellraw @s ["◎ 你", {"text": "骨折", "color": "gold"}, "了, 請使用夾板治療"]