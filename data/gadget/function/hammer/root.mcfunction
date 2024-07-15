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

#副手無效 即使使用了也視為沒有在使用
execute unless items entity @s weapon iron_axe[custom_data~{gadget: "hammer"}] run advancement revoke @s only gadget:using_hammer

#沒有在使用
execute if entity @s[advancements={gadget:using_hammer=false}] run return run scoreboard players set @s[scores={hammer=1..}] hammer 0

#正常使用
advancement revoke @s only gadget:using_hammer

#是玻璃
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ glass run return run function gadget:hammer/at_glass

#不是玻璃
scoreboard players set @s[scores={hammer=1..}] hammer 0
title @s actionbar {"text": "請對玻璃使用！", "color": "red"}