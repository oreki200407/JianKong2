###################################################
# 玩家被救起來時執行
# 
# Name   : saved.mcfunction
# Path   : game:death/player/save/
# As     : 被救起來的玩家
# At     : 代表倒地玩家的盔甲座
# Loop   : 否
# Author : Alex Cai
###################################################

tp @s ~ ~ ~ ~ ~
gamemode adventure @s
effect give @s resistance 10 100 true
title @s title {"text":"你已被救起了", "color": "red", "bold": true}
tellraw @a ["◎ ", {"selector": "@s"}, " 已被救起了"]