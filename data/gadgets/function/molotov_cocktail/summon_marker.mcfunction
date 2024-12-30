###################################################
# 為燃燒瓶召喚一個標記乘客
# 
# Name   : summon_marker.mcfunction
# Path   : gadgets:molotov_cocktail/
# As     : 召喚的標記
# At     : 燃燒瓶
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add molotov_cocktail_marker
ride @s mount @e[type=potion, tag=temp, limit=1, distance=..1]