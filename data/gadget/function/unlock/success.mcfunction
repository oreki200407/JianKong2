###################################################
# 使用開鎖器成功
# 
# Name   : success.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove using_unlock
title @s actionbar {"text": "門已解鎖", "color": "gold", bold:1b}
execute at @s run playsound block.chest.open
execute as @n[tag=door,type=marker] at @s run function gadget:unlock/door with entity @s data

#減少耐久度
#IEEE-754 floating point error, 用-0.1會導致卡在3耐久度
clear @s tripwire_hook[item_name="開鎖器",damage=10] 1