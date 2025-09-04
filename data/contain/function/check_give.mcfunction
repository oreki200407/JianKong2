###################################################
# 怪物給原料
# 
# Name   : check_give.mcfunction
# Path   : contain:
# As     : 世界重生點
# At     : As
# Loop   : 是，一分鐘
# Author : oreki20, Alex_Cai
###################################################

$scoreboard players add #$(resource) contain_second 1
$execute unless score #$(resource) contain_second matches 60 run return fail

$scoreboard players add $(resource) info_monitor 1
$scoreboard players set #$(resource) contain_second 0