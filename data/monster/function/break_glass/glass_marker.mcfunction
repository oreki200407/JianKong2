###################################################
# 位在玻璃的標記
# 
# Name   : glass_marker.mcfunction
# Path   : monster:break_glass/
# As     : 位在玻璃的標記實體
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

tag @s add being_watched
scoreboard players add @s glass_break 1

#5秒後打破玻璃
execute unless score @s glass_break matches 100 run return fail

function gadget:hammer/store
setblock ~ ~ ~ air destroy
tag @s add glass_broken
tag @s remove glass_marker