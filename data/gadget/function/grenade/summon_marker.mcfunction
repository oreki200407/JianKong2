###################################################
# 為雪球召喚一個標記乘客
# 
# Name   : summon_marker.mcfunction
# Path   : gadget:grenade/
# As     : 召喚的標記
# At     : 雪球
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add grenade_marker
ride @s mount @e[type=snowball, tag=temp, limit=1, distance=..1]