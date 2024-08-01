###################################################
# 開啟終界箱
# 
# Name   : open_ender_chest.mcfunction
# Path   : summon:
# As     : 開啟終界箱的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

scoreboard players reset @s open_ender_chest
scoreboard players reset @s summon_monster
function summon:reset