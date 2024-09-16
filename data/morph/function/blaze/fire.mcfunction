###################################################
# 讓標記產生火，維持4秒
# 
# Name   : fire.mcfunction
# Path   : morph:blaze/
# As     : 烈焰使者放的火
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#火
execute at @s if block ~ ~ ~ #air run setblock ~ ~ ~ fire

#維持4秒
scoreboard players add @s morph_skill_2_duration 1
execute unless score @s morph_skill_2_duration matches 80 run return fail

#用#fire 因為有可能會變成靈魂火
execute at @s if block ~ ~ ~ #fire run setblock ~ ~ ~ air
kill