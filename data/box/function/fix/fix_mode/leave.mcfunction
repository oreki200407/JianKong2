###################################################
# 離開修理發電機狀態
# 
# Name   : leave.mcfunction
# Path   : box:fix/fix_mode/
# As     : 離開修理發電機狀態的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove fixing_box
tag @s remove fixing_box_check
execute at @e[tag=box_off] run data remove block ~ ~ ~ lock
execute at @s run playsound block.iron_door.close ambient @s ~ ~ ~ 1 2
tellraw @s ["◎ 你已離開", {text: "修理模式", color:gold}]
title @s actionbar ""
#允許跳躍
attribute @s jump_strength modifier remove jk2:fix_box