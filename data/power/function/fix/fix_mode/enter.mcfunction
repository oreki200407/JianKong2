###################################################
# 進入修理發電機狀態
# 
# Name   : enter.mcfunction
# Path   : power:fix/fix_mode/
# As     : 進入修理發電機狀態的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute at @e[tag=power_off] run setblock ~ ~ ~ dispenser[facing=down] destroy
tag @s add fixing_power
#禁止跳躍
attribute @s generic.jump_strength modifier add jk2:fix_power -0.95 add_multiplied_base
scoreboard players set @s jump_fix 0
scoreboard players set @s fix_progress 0