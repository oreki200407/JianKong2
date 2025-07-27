###################################################
# 以旁觀者加入
# 
# Name   : spectate.mcfunction
# Path   : game:join/
# As     : 加入的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20
###################################################

#加入觀戰
team join spec
gamemode spectator
tp @s @r[team=!spec]
scoreboard players reset @s

function game:join/restore_bossbar