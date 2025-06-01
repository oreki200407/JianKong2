###################################################
# 右鍵錘子時執行
# 
# Name   : root.mcfunction
# Path   : gadget:hammer/
# As     : 使用錘子的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

advancement revoke @s only gadget:hammer

execute if score @s stamina matches ..49 run return run tellraw @s ["◎ 你的", {"text": "體力", "color": "gold"}, "不足, 無法釘木板"]

#是玻璃
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #gadget:glass run return run function gadget:hammer/at_glass

#不是玻璃
scoreboard players set @s[scores={hammer=1..}] hammer 0
title @s actionbar {"text": "請對著玻璃使用", "color": "red"}