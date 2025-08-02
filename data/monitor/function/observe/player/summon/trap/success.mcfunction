###################################################
# 召喚陷阱
# 
# Name   : trap.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 使用陷阱的玩家
# At     : 看到的第一個非空氣方塊的頭上
# Loop   : 否
# Author : Alex_Cai
###################################################

execute at @s run playsound block.smithing_table.use ambient @s ~ ~ ~
$$(command)
item modify entity @s weapon gadget:remove_1