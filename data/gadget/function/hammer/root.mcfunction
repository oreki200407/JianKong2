###################################################
# 使用錘子
# 
# Name   : root.mcfunction
# Path   : gadget:hammer/
# As     : 求生者
# At     : 世界重生點
# Loop   : 是
# Author : Alex Cai
###################################################

#副手無效 即使使用了也視為沒有在使用
execute unless items entity @s weapon iron_axe[custom_data~{gadget: "hammer"}] run advancement revoke @s only gadget:using_hammer

#沒有在使用
execute if entity @s[advancements={gadget:using_hammer=false}] run return run scoreboard players set @s[scores={hammer=1..}] hammer 0

#正常使用
advancement revoke @s only gadget:using_hammer

#是玻璃
execute at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ glass run return run function gadget:hammer/at_glass

#不是玻璃
scoreboard players set @s[scores={hammer=1..}] hammer 0
tellraw @s "請對玻璃使用！"