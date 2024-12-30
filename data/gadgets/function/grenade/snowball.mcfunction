###################################################
# 檢測雪球
# 
# Name   : snowball.mcfunction
# Path   : gadgets:grenade/
# As     : 雪球
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add temp
execute at @s summon marker run function gadgets:grenade/summon_marker
tag @s remove temp

tag @s add checked