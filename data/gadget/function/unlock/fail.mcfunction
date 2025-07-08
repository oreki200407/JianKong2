###################################################
# 使用開鎖器失敗
# 
# Name   : fail.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove using_unlock
execute at @s run playsound block.iron_door.close ambient @s ~ ~ ~ 1 2
tellraw @s ["◎ 你已離開", {text: "解鎖模式", color: "gold"}]
title @s actionbar ""