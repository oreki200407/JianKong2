###################################################
# 以旁觀者加入
# 
# Name   : soectate.mcfunction
# Path   : game:join/
# As     : 加入的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20
###################################################

#加入觀戰
team join spec
gamemode spectator
effect give @s night_vision infinite 0 true
tp @s @r[team=!spec]
tag @s add start

function game:join/restore_bossbar